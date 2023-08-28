#!/bin/bash

# Function to log messages with timestamps
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

# Function to install a package if not already installed
install_package() {
    if ! command -v $1 &>/dev/null; then
        log "Installing $1..."
        sudo apt-get install -y $1
    else
        log "$1 is already installed."
    fi
}

# Install core packages
install_core_packages() {
  install_package build-essential
  log "build-essential installed"

  install_package curl
  log "curl installed"

  install_package wget
  log "wget installed"

  install_package gpg
  log "gpg installed"

  install_package gnupg
  log "gnupg installed"

  install_package ca-certificates
  log "ca-certificates installed"

  install_package apt-transport-https
  log "apt-transport-https installed"
}

log "Starting installation and configuration..."

install_core_packages

# Git Installation
read -p "Do you want to install Git? (y/n): " git_install
if [[ $git_install == "y" ]]; then
    install_package "git"
    log "Git installed."
fi

# Zsh and Oh My Zsh Installation
read -p "Do you want to install Zsh and Oh My Zsh? (y/n): " zsh_install
if [[ $zsh_install == "y" ]]; then
    install_package "zsh"
    chsh -s $(which zsh)
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Plugins Configuration
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
    sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete docker docker-compose kubectl pip python node npm asdf)/g" ~/.zshrc

    # Theme (powerlevel 10K) Configuration
    install_package fonts-powerline
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    sed -i "s/ZSH_THEME=robbyrussell/ZSH_THEME=\"powerlevel10k/powerlevel10k\""
    p10k configure

    log "Zsh and Oh My Zsh installed."
fi

# Visual Studio Code Installation
read -p "Do you want to install Visual Studio Code? (y/n): " vscode_install
if [[ $vscode_install == "y" ]]; then
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt update
    sudo apt install code
    log "Visual Studio Code installed."
fi

setup_asdf_plugin() {
  plugin_name = $1
  plugin_repo = $2
  shift 2
  versions = ("$@")

  read -p "Do you want to install $(plugin_name) ASDF plugin? (y/n): " asdf_plugin_install

  if [[ $asdf_plugin_install == "y" ]]; then
    asdf plugin add $plugin_name $plugin_repo

    for version in $versions; do
      asdf install $plugin_name $version
  fi
  
  asdf global $plugin_name ${versions[0]}
  current_version = $(asdf current nodejs) | awk '{ print $1, $2 }'

  log "$(asdf current nodejs | awk '{ print $1, $2 }') set as current version."
}

# ASDF Installation
read -p "Do you want to install ASDF version manager? (y/n): " asdf_install
if [[ $asdf_install == "y" ]]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf



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
      "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    # Configuration to run docker as a non-root user
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker

    log "Docker installed and user added to the docker group."
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

