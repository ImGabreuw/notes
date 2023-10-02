# Configuração do banco de dados MariaDB

> ## **Instalação**

### Com Docker

1. (Opcional) Caso já possua Docker instalado na máquina, remova a versão anterior:

   ```shell
   $ sudo apt-get remove \
    docker \
    docker-engine \
    docker.io \
    containerd runc -y
   ```

2. Atualização dos repositórios da máquina:

   ```shell
   $ sudo apt-get update && sudo apt-get upgrade
   ```

3. Instalar as dependências do Docker:

   ```shell
   $ sudo apt install \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common -y
   ```

4. Adicionar a chave GPG oficial do Docker:

   ```shell
   $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
   ```

5. Adicionar o repositório do Docker na máquina:

   ```shell
   $ sudo add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable" -y
   ```

6. Instalar o _Docker Engine_:

   ```shell
   $ sudo apt install docker-ce docker-ce-cli containerd.io -y
   ```

   > ## **Configuração**

### **Criação do banco de dados localmente**

```shell
docker run --restart always -d \
   --name [nome banco de dados]
   -p [porta máquina]:[porta container] \
   -e MYSQL_ROOT_PASSWORD=[senha] \
   mariadb
```

**Exemplo**:

```shell
docker run --restart always -d \
   --name users
   -p 3306:3306 \
   -e MYSQL_ROOT_PASSWORD=admin \
   mariadb
```

> **OBS**: `3306` é a porta padrão disponível para criar uma conexão com o banco de dados