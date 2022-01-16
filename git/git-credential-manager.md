# Git Credential Manager

> ## **Definição**

É um sistema *cross-platform* para gerenciar e armazenar, de forma segura, credenciais do Git com autenticação para serviço de hospedagem Git (GitHub / Azure Repos)

> ## **Instalação (no Ubuntu)**

### **`curl`**

```shell
GCM_FILENAME=gcm.deb

curl $(curl -s https://api.github.com/repos/GitCredentialManager/git-credential-manager/releases/latest | grep "browser_download_url.*deb" | cut -d '"' -f 4) -o $GCM_FILENAME
sudo dpkg -i $GCM_FILENAME
git-credential-manager-core configure
```

### **Outras formas**

https://github.com/GitCredentialManager/git-credential-manager#download-and-install

> ## **Configuração**

### ***Credential stores (`GPG/pass`)***

1. Instalar `gpg` e `pass`:

    ```shell
    $ sudo apt install gpg

    $ sudo apt install pass
    ```

2. Gerar um par de chaves GPG:

    ```shell
    $ gpg --gen-key

    $ # Seguir as instruções
    ```

3. Iniciar o `pass` para armazenar as credenciais do Git:

    ```shell
    $ pass init [GPG ID]
    ```

    > **OBS**: é possível criar uma chave GPG no GitHub em [SSH and GPG keys](https://github.com/settings/keys)