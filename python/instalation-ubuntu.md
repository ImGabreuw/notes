# Instalação do Python no Ubuntu 22.04

> ## **Instalação do Python**

1. Atualização dos repositórios e pacotes do Ubuntu

   ```shell
   $ sudo apt update -y && sudo apt upgrade -y
   ```

2. Instalação de pacotes para desenvolvimento (não relacionados ao Python)

   ```shell
   $ sudo apt install git curl build-essential gcc make default-libmysqlclient-dev libssh-dev
   ```

3. Instalação do Python na versão 3.10

   ```shell
   $ sudo apt install python3.10
   ```

4. Criar um ambiente virtual Python

   ```shell
   $ python3 -m venv [nome do ambiente]
   ```

   > flag `-m`: executar um módulo do Python como se fosse um script

   ```shell
   $ python3 -m venv venv
   ```

5. Ativar o ambiente virtual Python

   ```shell
   $ source venv/bin/activate
   ```

   **OU**

   ```shell
   $ . venv/bin/activate
   ```

6. Testar o ambiente virtual Python

   ```shell
   $ python -V
   # Python 3.11.0
   ```

   ```shell
   $ which python
   # /home/gabriel/Projects/curso-de-python-3-do-basico-ao-avancado/secao-2-python-vscode-preparando-meu-ambiente-de-desenvolvimento/ubuntu-22-instalacao-basica-do-python-e-o-vscode/projetos/venv/bin/python
   ```

7. Instalação de libs no ambiente virtual

   ```shell
   $ python install pymysql
   ```

   > A instalação dessas libs estará em `/venv/lib/python3.11/site-packages`

8. (Opcional) Caso apareça um aviso, no _passo 7_, para atualizar o `pip` executar o seguinte comando:

   ```shell
   $ python -m pip install pip --upgrade
   ```

9. Fechar o ambiente virtual:

   ```shell
   $ deactivate
   ```

> ## **Script de instalação**

No script abaixo, será instalado pyenv e zsh:

```shell
#!/bin/bash

# Executar comandos a seguir para atualizar os pacotes
sudo apt update -y
sudo apt upgrade -y

# Só o Python
sudo apt install python3.10-full python3.10-dev -y

# Instalar pacotes a seguir
sudo apt install git curl build-essential dkms perl wget -y
sudo apt install gcc make default-libmysqlclient-dev libssl-dev -y
sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
  libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

# Pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# Seguir instruções do Pyenv

# Baixar e instalar VS Code: https://code.visualstudio.com/download

# Abaixo tudo é opcional

# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Spaceship Prompt
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Mudar ~/.zshrc -> ZSH_THEME="spaceship"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Font optional (https://github.com/pdf/ubuntu-mono-powerline-ttf)
mkdir -p ~/.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf

# REBOOT
```
