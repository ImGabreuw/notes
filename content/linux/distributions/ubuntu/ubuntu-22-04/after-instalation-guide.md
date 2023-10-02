# Guia de pós instalação do Ubuntu 22.04

## **Google Chrome**

1. Acessar a página de download do Google Chrome: https://www.google.com/chrome/?platform=linux

2. Clicar em `Fazer download do Chrome`

3. Selecionar o pacote `64 bits .deb (para Debian/Ubuntu)`

4. Clicar em `Aceitar e instalar`

5. Instalar o pacote no terminal:

   ```shell
   $ sudo dpkg -i <pacote>
   ```

## **JetBrains Toolbox**

1. Acessar a página de download da JetBrains: https://www.jetbrains.com/pt-br/toolbox-app/

2. Clicar em `Baixar`

3. Extrair o pacote `.tar.gz`

4. Instalar o pacote `libfuse2`

   ```shell
   $ sudo apt install libfuse2
   ```

5. Executar o binário para instalar o JetBrains Toolbox

   ```shell
   $ sudo ./<script>
   ```

## **VS Code**

1. Acessar a página de download do VS Code: https://code.visualstudio.com/Download

2. Clicar em `.deb Debian, Ubuntu`

3. Instalar o pacote no terminal

   ```shell
   $ sudo dpkg -i <pacote>
   ```

## **Git**

1. Executar o comando de instalação

   ```shell
   $ sudo apt-get install git-all
   ```

## **zsh**

> Referência: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

1. Executar o comando de instalação

   ```shell
   $ sudo apt install zsh
   ```

2. Verificar se a instalação do ZSH foi bem sucedido

   ```shell
   $ zsh --version
   ```

3. Definir o ZSH como shell padrão no sistema operacional

   ```shell
   $ chsh -s $(which zsh)
   ```

4. Reiniciar o sistema

5. Verificar se o ZSH foi definido como shell padrão

   ```shell
   $ $SHELL --version
   ```

## **oh-my-zsh**

> Referência: https://github.com/ohmyzsh/ohmyzsh/wiki

1. Acessar a página de documentação do `oh-my-zsh`

2. Verificar se zsh está instalado

   ```shell
   $ zsh --version
   ```

3. Instalar o `oh-my-zsh`:

   ```shell
   $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. Instalar a fonte `Nerd Fonts`:

   1. Instalar a fonte recomendada `Meslo Nerd Font`: https://github.com/romkatv/powerlevel10k#manual-font-installation

   2. Seguir os passos indicados em `Manual font installation`

5. Instalar o tema `powerlevel10k`

   ```shell
   $ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

6. No arquivo de configuração do ZSH (`~/.zshrc`)

   ```shell
   ZSH_THEME="powerlevel10k/powerlevel10k"
   ```

7. Adicionar o plugin de auto complete

   1. Clonar o repositório

      ```shell
      $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
      ```

   2. Adicionar no arquivo de configuração do ZSH (`~/.zshrc`)

      ```shell
      plugins=(
         # other plugins...
         zsh-autosuggestions
      )
      ```

8. Adicionar o plugin de syntax highlighting

   ```shell
   $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

   > **OBS**: o plugin `zsh-syntax-highlighting` deve ser o último plugin a ser carregado no `~/.zshrc`

   ```shell
   plugins=( [plugins...] zsh-syntax-highlighting)
   ```

9. Arquivo de configuração (`~/.zshrc`)

   ```shell
   # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
   # Initialization code that may require console input (password prompts, [y/n]
   # confirmations, etc.) must go above this block; everything else may go below.
   if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
   fi

   # If you come from bash you might have to change your $PATH.
   # export PATH=$HOME/bin:/usr/local/bin:$PATH

   # Path to your oh-my-zsh installation.
   export ZSH="$HOME/.oh-my-zsh"

   # Set name of the theme to load --- if set to "random", it will
   # load a random theme each time oh-my-zsh is loaded, in which case,
   # to know which specific one was loaded, run: echo $RANDOM_THEME
   # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
   ZSH_THEME="powerlevel10k/powerlevel10k"

   # Set list of themes to pick from when loading at random
   # Setting this variable when ZSH_THEME=random will cause zsh to load
   # a theme from this variable instead of looking in $ZSH/themes/
   # If set to an empty array, this variable will have no effect.
   # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

   # Uncomment the following line to use case-sensitive completion.
   # CASE_SENSITIVE="true"

   # Uncomment the following line to use hyphen-insensitive completion.
   # Case-sensitive completion must be off. _ and - will be interchangeable.
   # HYPHEN_INSENSITIVE="true"

   # Uncomment one of the following lines to change the auto-update behavior
   # zstyle ':omz:update' mode disabled  # disable automatic updates
   # zstyle ':omz:update' mode auto      # update automatically without asking
   # zstyle ':omz:update' mode reminder  # just remind me to update when it's time

   # Uncomment the following line to change how often to auto-update (in days).
   # zstyle ':omz:update' frequency 13

   # Uncomment the following line if pasting URLs and other text is messed up.
   # DISABLE_MAGIC_FUNCTIONS="true"

   # Uncomment the following line to disable colors in ls.
   # DISABLE_LS_COLORS="true"

   # Uncomment the following line to disable auto-setting terminal title.
   # DISABLE_AUTO_TITLE="true"

   # Uncomment the following line to enable command auto-correction.
   # ENABLE_CORRECTION="true"

   # Uncomment the following line to display red dots whilst waiting for completion.
   # You can also set it to another string to have that shown instead of the default red dots.
   # e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
   # Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
   # COMPLETION_WAITING_DOTS="true"

   # Uncomment the following line if you want to disable marking untracked files
   # under VCS as dirty. This makes repository status check for large repositories
   # much, much faster.
   # DISABLE_UNTRACKED_FILES_DIRTY="true"

   # Uncomment the following line if you want to change the command execution time
   # stamp shown in the history command output.
   # You can set one of the optional three formats:
   # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
   # or set a custom format using the strftime function format specifications,
   # see 'man strftime' for details.
   # HIST_STAMPS="mm/dd/yyyy"

   # Would you like to use another custom folder than $ZSH/custom?
   # ZSH_CUSTOM=/path/to/new-custom-folder

   # Plugins
   plugins=(
      git
      asdf
      docker
      docker-compose
      golang
      kubectl
      node
      npm
      pip
      python
      zsh-autosuggestions
      zsh-syntax-highlighting
   )

   source $ZSH/oh-my-zsh.sh

   # User configuration

   # export MANPATH="/usr/local/man:$MANPATH"

   # You may need to manually set your language environment
   # export LANG=en_US.UTF-8

   # Preferred editor for local and remote sessions
   # if [[ -n $SSH_CONNECTION ]]; then
   #   export EDITOR='vim'
   # else
   #   export EDITOR='mvim'
   # fi

   # Compilation flags
   # export ARCHFLAGS="-arch x86_64"

   # Set personal aliases, overriding those provided by oh-my-zsh libs,
   # plugins, and themes. Aliases can be placed here, though oh-my-zsh
   # users are encouraged to define aliases within the ZSH_CUSTOM folder.
   # For a full list of active aliases, run `alias`.
   #
   # Example aliases
   # alias zshconfig="mate ~/.zshrc"
   # alias ohmyzsh="mate ~/.oh-my-zsh"

   # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
   [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

   # ASDF Configuration
   fpath=(${ASDF_DIR}/completions $fpath)
   autoload -Uz compinit && compinit

   # . ~/.asdf/plugins/java/set-java-home.zsh
   ```

## **ASDF**

> Referência: https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies

1. Instalar `git` e `curl` caso ainda não tenha na máquina

   ```shell
   $ sudo apt install curl git
   ```

2. Baixar o repositório na máquina

   ```shell
   $ git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2
   ```

3. Instalar o `asdf` como ZSH framework plugin

   ```shell
   $ git clone https://github.com/asdf-vm/asdf.git ~/.asdf
   ```

4. Adicionar o seguinte código no arquivo de configuração do ZSH (`~/.zshrc`)

   ```shell
   # append completions to fpath
   fpath=(${ASDF_DIR}/completions $fpath)
   # initialise completions with ZSH's compinit
   autoload -Uz compinit && compinit
   ```

5. Adicionar o ASDF como plugin nas configurações do ZSH (`~/.zshrc`)

   ```shell
   plugins=(asdf)
   ```

6. Adicionar os plugins de linguagens

   1. Python

      ```shell
      $ sudo apt install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
      $ asdf plugin-add python
      ```

   2. Java

      ```shell
      $ asdf plugin-add java https://github.com/halcyon/asdf-java.git

      # Adicionar o JAVA_HOME no arquivo de configuração do ZSH (`~/.zshrc`)
      . ~/.asdf/plugins/java/set-java-home.zsh
      ```

   3. NodeJS

      ```shell
      $ asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
      ```

## **Discord**

1. Acessar a página de download: https://discord.com/download

2. Clicar em `Baixar para Linux`

3. Instalar as dependências

   ```shell
   $ sudo apt install libc++abi1-14 libunwind-14 gconf2-common libc++1-14 libgconf-2-4 libc++1
   ```

4. Instalar o pacote

   ```shell
   $ sudo dpkg -i <pacote>
   ```


## **Firewall**

```console
$ sudo apt install -f ufw
$ sudo ufw enable
```

## **Preload**

O Preload é uma ferramenta para Linux que funciona em segundo plano. Ele monitora os programas mais usados pelo usuário, pré-carregando suas dependências em um cache na memória RAM. Isso acelera o carregamento desses programas quando são executados novamente. É uma forma de melhorar a velocidade de inicialização e tornar a experiência do usuário mais rápida e eficiente.

A seguir o passo a passo de instalação do "preload":

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: Digite o seguinte comando para instalar o Preload:

```console
sudo apt install preload
```

**Passo 3**: Após a instalação, o serviço é iniciado automaticamente, mas é recomendado reiniciá-lo manualmente para garantir que tudo esteja funcionando corretamente. Para isso, execute o seguinte comando:

```console
sudo service preload restart
```

**Passo 4**: Verifique se o serviço Preload está em execução usando o comando:

```console
ps ax | grep preload
```

Se tudo estiver configurado corretamente, você deverá ver uma saída que inclui `/usr/sbin/preload -s /var/lib/preload/preload.state`.

A partir desse ponto, o Preload estará em execução, monitorando e pré-carregando os programas mais utilizados, o que deve melhorar a velocidade de carregamento desses aplicativos quando forem executados novamente.

> Lembre-se de que o Preload aprende com o tempo, tornando-se mais eficiente à medida que você usa mais aplicativos com frequência. Assim, a experiência geral do usuário deve melhorar com o passar do tempo.

## **Time Shift**

O "TimeShift" é uma ferramenta de backup e restauração para sistemas Linux que permite criar e gerenciar instantâneos (snapshots) do sistema de arquivos em momentos específicos. Esses instantâneos capturam o estado do sistema, incluindo arquivos de sistema, configurações e aplicativos instalados, permitindo que você restaure o sistema para um estado anterior em caso de problemas ou erros.

A seguir o passo a passo de instalação do TimeShift:

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: Agora, instale o TimeShift com o seguinte comando:

```console
$ sudo apt install timeshift -y
```

**Passo 3**: Após a instalação, você pode abrir o TimeShift a partir do menu de aplicativos ou executando o comando abaixo no terminal:

```console
$ timeshift-launcher
```

**Passo 4**: Na primeira execução, o TimeShift irá solicitar que você selecione uma unidade de destino para salvar os instantâneos. Geralmente, é recomendado escolher uma unidade diferente da que contém o sistema operacional para garantir que os backups não ocupem espaço no mesmo disco do sistema.

**Passo 5**: Configure as opções de agendamento e configurações do TimeShift de acordo com suas preferências. Você pode definir quantos instantâneos deseja manter, a frequência de criação de novos instantâneos, entre outras configurações.

Com o TimeShift instalado e configurado, ele criará automaticamente instantâneos do sistema de arquivos nos intervalos definidos. Esses instantâneos podem ser usados posteriormente para restaurar o sistema em caso de problemas, como atualizações quebradas ou erros de configuração.

> Lembre-se de que o TimeShift é uma ferramenta útil para criar backups do sistema, mas não substitui a necessidade de realizar backups de dados importantes em um local externo, como um dispositivo de armazenamento externo ou na nuvem.

## **Flatpak**

O Flatpak é uma ferramenta de empacotamento e distribuição de aplicativos para sistemas Linux. Ele é projetado para fornecer uma forma segura e independente de distribuir software, permitindo que os desenvolvedores criem aplicativos que funcionem em diferentes distribuições Linux sem depender das bibliotecas e configurações específicas de cada uma delas.

Diferentemente do sistema tradicional de pacotes no Linux, o Flatpak encapsula o aplicativo e todas as suas dependências em um ambiente isolado, chamado "sandbox". Isso significa que as bibliotecas e recursos necessários para a execução do aplicativo são fornecidos dentro do pacote, evitando possíveis conflitos ou dependências quebradas.

Os aplicativos Flatpak são empacotados em formato universal e podem ser instalados em várias distribuições Linux que suportem a ferramenta Flatpak, tornando a distribuição e instalação de software mais fácil e consistente.

Passo a passo de instalação do Flatpak no Ubuntu:

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: No terminal, instale o suporte ao Flatpak com o seguinte comando:

```console
$ sudo apt install flatpak
```

**Passo 3**: Após a instalação, é recomendado instalar o plug-in responsável pela integração com o Ubuntu Software:

```
$ sudo apt install gnome-software-plugin-flatpak
```

**Passo 4**: Para ter acesso a aplicativos do Flathub, é necessário reiniciar o sistema. Use o comando:

```
reboot
```

O Flatpak oferece uma abordagem moderna e segura para a distribuição de aplicativos Linux, e é uma opção interessante para quem deseja acesso a uma grande variedade de aplicativos de forma fácil e padronizada em diferentes distribuições.
