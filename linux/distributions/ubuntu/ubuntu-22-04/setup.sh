#!/bin/bash

log_file="ubuntu-setup.log"

# Function to log messages with timestamps
log() {
    local message="$1"
    echo "$message"
    echo "$(date '+[%Y-%m-%d %H:%M:%S]') $message" >> "$log_file"
}

is_installed() {
    if apt list --installed $1 | grep -i "installed"; then
        return 0 # true
    else
        return 1 # false
    fi
}

# Function to install a package if not already installed
install_package() {
    for package in "$@"; do
        if is_installed "$package"; then
            log "$package is already installed."
        else
            log "Installing $package..."
            if sudo apt install -y "$package" >> "$log_file" 2>&1; then
                log "$package installed."
            else
                log "Error installing $package. Check $log_file for details."
            fi
        fi
    done
}

clone_or_update_repository() {
    local repository_url=$1
    local destination_path=$2

    if [ -d "$destination_path" ]; then
        log "Updating $destination_path..."
        cd "$destination_path" || return
        git pull
        cd - >/dev/null || return
    else
        log "Cloning $repository_url to $destination_path..."
        git clone "$repository_url" "$destination_path"
    fi
}

log "Starting installation and configuration..."
install_package build-essential curl wget gpg gnupg ca-certificates apt-transport-https coreutils


# Git Installation
read -p "Do you want to install Git? (y/n): " git_install
if [[ $git_install == "y" ]]; then
    if is_installed "git"; then
        log "Git is already installed."
    else
        install_package "git"
        log "Git '$(git --version)' installed."
    fi
fi

# Zsh and Oh My Zsh Installation
read -p "Do you want to install Zsh and Oh My Zsh? (y/n): " zsh_install
if [[ $zsh_install == "y" ]]; then
    install_package "zsh"
    chsh -s $(which zsh)

    # Check if Oh My Zsh is already installed
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
        log "Oh My Zsh is already installed."
    fi

    # Plugins Configuration
    clone_or_update_repository "https://github.com/asdf-vm/asdf.git" "$HOME/.asdf"
    clone_or_update_repository "https://github.com/zsh-users/zsh-autosuggestions.git" "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    clone_or_update_repository "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    clone_or_update_repository "https://github.com/zdharma-continuum/fast-syntax-highlighting.git" "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"
    clone_or_update_repository "https://github.com/marlonrichert/zsh-autocomplete.git" "$ZSH_CUSTOM/plugins/zsh-autocomplete"

    zshrc_path="$HOME/.zshrc"

    new_plugins='plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete docker docker-compose kubectl pip python node npm asdf)'
    sed -i "s#plugins=(git)#${new_plugins}#" $zshrc_path
    source $zshrc_path

    # Theme (powerlevel 10K) Configuration
    install_package fonts-powerline

    powerlevel10k_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    if [ ! -d "$powerlevel10k_dir" ]; then
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$powerlevel10k_dir"
    else
        log "Powerlevel10k is already installed."
    fi

    new_theme='ZSH_THEME="powerlevel10k/powerlevel10k"'
    sed -i "s#ZSH_THEME=\"robbyrussell\"#${new_theme}#" $zshrc_path
    source $zshrc_path

    # Source Oh My Zsh
    source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

    p10k configure

    log "Zsh and Oh My Zsh installed."
fi

# Visual Studio Code Installation
read -p "Do you want to install Visual Studio Code? (y/n): " vscode_install
if [[ $vscode_install == "y" ]]; then
    if is_installed "code"; then
         log "Code is already installed."
    else
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
        sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
        sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
        rm -f packages.microsoft.gpg
        sudo apt-get update

        install_package code

        log "Visual Studio Code installed."
    fi
fi

setup_asdf_plugin() {
    local plugin_name=$1
    local plugin_repo=$2
    shift 2
    local versions=("$@")

    read -p "Do you want to install $plugin_name ASDF plugin? (y/n): " asdf_plugin_install

    if [[ $asdf_plugin_install == "y" ]]; then
        if [[ $plugin_name == "python" ]]; then
            install_package build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
        fi

        asdf plugin add "$plugin_name" "$plugin_repo"

        for version in "${versions[@]}"; do
            asdf install "$plugin_name" "$version"
        done

        asdf global "$plugin_name" "${versions[0]}"
        local current_version=$(asdf current "$plugin_name" | awk '{ print $1, $2 }')

        log "$current_version set as current version."
    fi
}

# ASDF Installation
read -p "Do you want to install ASDF version manager? (y/n): " asdf_install
if [[ $asdf_install == "y" ]]; then
    clone_or_update_repository "https://github.com/asdf-vm/asdf.git" "~/.asdf"

    setup_asdf_plugin "java" "https://github.com/halcyon/asdf-java.git" "openjdk-17" "openjdk-21"
    setup_asdf_plugin "python" "" "3.11.5"
    setup_asdf_plugin "nodejs" "https://github.com/asdf-vm/asdf-nodejs.git" "18.12.0"

    log "ASDF installed and configured."
fi

# Docker Installation
read -p "Do you want to install Docker? (y/n): " docker_install
if [[ $docker_install == "y" ]]; then
    # Docker Installation
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo \
        "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |
        sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
    sudo apt-get update

    install_package docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    # Configuration to run docker as a non-root user
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker

    log "Docker '$(docker --version)' installed and user added to the docker group."
fi

# Kubernetes Installation (Assuming you're using kubectl)
read -p "Do you want to install Kubernetes tools (kubectl)? (y/n): " kubernetes_install
if [[ $kubernetes_install == "y" ]]; then
    install_package "kubectl"

    curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
    echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update
    install_package kubectl

    log "Kubernetes tools (kubectl) installed."
fi

log "Installation and configuration completed."
