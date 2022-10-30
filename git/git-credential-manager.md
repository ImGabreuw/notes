# Git Credential Manager

> ## **Definição**

É um sistema *cross-platform* para gerenciar e armazenar, de forma segura, credenciais do Git com autenticação para serviço de hospedagem Git (GitHub / Azure Repos)

> ## **Instalação (no Ubuntu)**

### **`curl`**

```shell
curl -LO https://aka.ms/gcm/linux-install-source.sh &&
sh ./linux-install-source.sh &&
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
