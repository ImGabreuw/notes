# Comandos

## Docker

### commit

* **Função**: criar uma imagem Docker a partir de um *container* existente

* **Características**

  * Não é recomendado utilizar esse comando para a criação de imagens Docker pois, é criado uma imagem de camada única

  * Não é utilizado o conceito de camadas (Overlay do Linux), ou seja, não há o reaproveitamento de instruções

  * Dificulta o versionamento/automatização de imagens Docker

* **Sintaxe**: `$ docker commit <ID/nome container> <nome imagem>`

* **Exemplo**

  * **Comando**: `$ docker commit 89a4bed72a76 ubuntu-curl`

  * **Saída**: `sha256:19e7cc292a9789633d13306e9e49a93c4533392c4484cb7932a53c4491da4b4a`

### run

* **Função**: criar um container

* **Sintaxe**
      
  * `$ docker container run <imagem>` (forma mais atualizada)

  * `$ docker run <imagem>`

* **Exemplo**

  * `$ docker container run hello-world`

* **Flags**

  * `--name`

    * **Função**: renomear um container

    * **Sintaxe**: `$ docker container run --name <nome> <container>`

    * **Exemplo**: `$ docker container run --name meucontainer hello-world`

  * `-it`

    * **Função**: criar um container no modo interativo (habilitar o terminal)

      * `-i`: habilitar o modo interativo

      * `-t`: habilitar o **Docker TTY** (acesso à linha de comando)

    * **Sintaxe**

      * `$ docker container run -it <imagem> /bin/bash`

      * `$ docker run -it <imagem> /bin/bash`

      * `$ docker container exec -it <id do container> /bin/bash`

      * `$ docker exec -it <id do container> /bin/bash`

    * **Exemplo**: 
      
      * `$ docker container run -it ubuntu /bin/bash`

      * `$ docker container run -it imgabreuw/ubuntu-curl:v1 /bin/bash`

  * `-d` 

    * **Função**: executar um container em *modo daemon*, ou seja, em segundo plano (para não "travar" o terminal)

    * **Sintaxe**
    
      * `$ docker container run -d <imagem>`

      * `$ docker run -d <imagem>`

    * **Exemplo**: `docker container run -d nginx`

  * `-p`

    * **Função**: ligação de portas (*ports binding*) entre máquina local e container

    * **Sintaxe**
    
      * `$ docker container run -p <porta local>:<porta container> <imagem>`

      * `$ docker run -p <porta local>:<porta container> <imagem>`

    * **Exemplo**: `$ docker container run -p 8080:80 nginx`

  * `--rm`

    * **Função**: remover automaticamente o container após ter sua execução finalizada (status = `Exited`)

    * **Sintaxe**: `$ docker container run --rm <nome da imagem>`

    * **Exemplo**: `$ docker container run --rm hello-world`

  * `-e`

    * **Função**: adicionar variáveis de ambientes no container

    * **Sintaxe**: `$ docker container run -e <chave>=<valor> <imagem>`

      > É preciso colocar a flag `-e` antes de cada variável de ambiente

    * **Exemplo**: `$ docker container run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=mongouser -e MONGO_INITDB_ROOT_PASSWORD=mongopwd mongo`

### ps

* **Função**: listagem de containers em execução

* **Sintaxe**

  * `$ docker container ls`

  * `$ docker ps`

  * **OBS**: esse comando imprime na tela do terminal as informações de cada container

    * ID do container (`CONTAINER ID`)

    * Imagem utilizada no container (`IMAGE`)

    * Comando de execução (`COMMAND`)

    * Data de criação (`CREATED`)

    * Status do container (`STATUS`)

      > O status do container pode ser `Exited` ou `Up`
    * **Binding de portas** (`PORTS`)

    * Nome do container, se não for especificada é gerado de forma aleatório (`NAMES`)

* **Flags**

  * `-a`

    * **Função**: listagem de todos os containers

    * **Sintaxe**
    
      * `$ docker container ls -a`

      * `$ docker ps -a`

    * **Exemplo**: `$ docker ps -a`

### images

* **Função**: listagem de imagens Docker

* **Sintaxe**
    
  * `$ docker image ls`

  * `$ docker images`

* **Exemplo**: `$ docker images`

### rm

* **Função**: remover um container

* **Sintaxe**

  * `$ docker container rm <id do container>`

  * `$ docker container rm <nome do container>`

  * `$ docker rm <id do container>`

  * `$ docker rm <nome do container>`

* **Exemplo**: `$ docker container rm meucontainer`

* **Flags**

  * `-f`

    * **Função**: forçar a remoção de um container

    * **Sintaxe**
  
      * `$ docker container rm -f <id do container>`

      * `$ docker container rm -f <nome do container>`

      * `$ docker rm -f <id do container>`

      * `$ docker rm -f <nome do container>`

    * **Exemplo**: `$ docker rm -f meucontainer`

### stop

* **Função**: interromper a execução de um container

* **Sintaxe**

  * `$ docker container stop <id do container>`

  * `$ docker stop <id do container>`

  * `$ docker container stop <nome do container>`

  * `$ docker stop <nome do container>`

* **Exemplo**: `$ container stop meucontainer`

### history

* **Função**: exibir o histórico de construção de uma imagem

* **Sintaxe**

  * `$ docker image history <imagem>`

  * `$ docker history <imagem>`

* **Exemplo**: `$ docker image history nginx`

### prune

* **image prune**

  * **Função**: remover imagens não utilizadas

  * **Sintaxe**: `$ docker image prune`

  * **Exemplo**: `$ docker image prune`

* **container prune**

  * **Função**: remover containers intermediários

  * **Sintaxe**: `$ docker container prune`

  * **Exemplo**: `$ docker container prune`

---

## Comandos de *troubleshooting* (comandos de resolução de problemas)

### inspect

* **Função**: exibir informações de baixo nível de uma image ou container

* **Sintaxe**

  * `$ docker container inspect <flags> <ID do container>`

  * `$ docker inspect <flags> <ID do container>`

* **Exemplo**: `$ docker container inspect 37a63afa7185`

### exec

* **Função**: executar um comando em um container em execução

* **Sintaxe**

  * `$ docker container exec -it <ID do container> <comando>`
  
  * `$ docker exec -it <ID do container> <comando>`

* **Exemplo**: `$ docker container exec -it 37a63afa7185 /bin/bash`

### logs

* **Função**: exibir os logs de um container

* **Sintaxe**

  * `$ docker container logs <flags> <ID do container>`

  * `$ docker logs <flags> <ID do container>`

  * `$ docker container logs <flags> <nome do container>`

  * `$ docker logs <flags> <nome do container>`

* **Exemplo**: `$ docker container logs meucontainer`

* **Flags**

  * `-n`

    * **Função**: determinar um número específico de linhas do log, de um container, que serão impressas no terminal

    * **Sintaxe**: `$ docker container logs -n <número de linhas> <ID do container>`

    * **Exemplo**: `$ docker container logs -n 50 37a63afa7185`

  * `--follow` ou `-f`

    * **Função**: acompanhar os novos logs de um container e imprimindo os no terminal

    * **Sintaxe**: `$ docker container logs --follow <ID do container>`

    * **Exemplo**: `$ docker container logs --follow 37a63afa7185`

---

## Comandos do Docker Hub

### login

* **Função**: adicionar as credenciais de login (username e password do Docker Hub)

* **Sintaxe**: `$ docker login` (informar Docker ID e password)

* **Exemplo**: `$ docker login`

### logout

* **Função**: remover as credências de login

* **Sintaxe**: `$ docker logout`

* **Exemplo**: `$ docker logout`

### push

* **Função**: enviar uma imagem Docker para o Docker Hub

* **Sintaxe**: `$ docker push <imagem>:<versão>`

* **Exemplo**: `$ docker push imgabreuw/api-conversao:alpine`

---

## Comandos do Dockerfile

### build

* **Função**: criar uma imagem Docker a partir de um arquivo `Dockerfile`

* **Sintaxe**: `$ docker build <contexto>`

* **Exemplo**: `$ docker build .`

* **Flags**

  * `-t`

    * **Função**: definir um nome para a imagem

    * **Sintaxe**: `$ docker build -t <nome imagem> <contexto>`

    * **Exemplo**: `$ docker build -t ubuntu-curl-dockerfile .`

  * `--no-cache`

    * **Função**: não utilizar o cache das camadas que não sofreram alterações

    * **Sintaxe**: `$ docker build -t <nome imagem> <contexto> --no-cache`

    * **Exemplo**: `$ docker build -t ubuntu-curl-dockerfile . --no-cache`
