#!/bin/bash

# Pre requisitos: curl, Git

### Asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
. $HOME/.asdf/asdf.sh

### Asdf auto completion pLugin for Oh My Zsh
git clone https://github.com/kiurchv/asdf.plugin.zsh $HOME/.oh-my-zsh/custom/plugins/asdf
# No arquivo "~/.zshrc", adicionar: plugins=(asdf)

### Java plugin
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf install java openjdk-11
asdf install java openjdk-17
asdf global java openjdk-11
. ~/.asdf/plugins/java/set-java-home.zsh

### Kotlin plugin
asdf plugin-add kotlin https://github.com/asdf-community/asdf-kotlin.git
asdf install kotlin 1.5.0
asdf global kotlin 1.5.0 

### Golang plugin
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.17.2
asdf global golang 1.17.2
# É necessário exportar as variáveis de ambiente do Go:
# export GOPATH=$HOME/go
# GO_VERSION=$HOME/.asdf/installs/golang/1.17.2 # Substituir o valor de $GO_VERSION pela saída do comando "asdf where golang" após a troca de versão do Go
# export GOROOT=$GO_VERSION/go
# export GOBIN=$GOPATH/bin

# export PATH=$PATH:$GOPATH
# export PATH=$PATH:$GOROOT/bin

### Node plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 
asdf install nodejs lts
asdf global nodejs lts

### Python
asdf plugin-add python
asdf install python 3.9.0