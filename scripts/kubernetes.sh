#!/bin/bash

### Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

### K3D
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# No arquivo "~/.zshrc", adicionar: "source <(kubectl completion zsh)"