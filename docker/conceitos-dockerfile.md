# Conceitos do Dockerfile

### Definição

* É um arquivo que contém todas as instruções necessárias para criar uma imagem

### Conceitos

* **A ordem de cada instrução é relevante**

  * **Exemplo**

    ```dockerfile
    FROM ubuntu

    RUN apt-get update
    RUN apt-get install curl -y && \
        apt-get install vim -y
    ```

    ```dockerfile
    FROM ubuntu

    RUN apt-get install curl -y && \
        apt-get install vim -y
    RUN apt-get update
    ```

    > **OBS**: Ao criar as 2 imagens (`docker build`), o Docker não utilizará o CACHE da camada `RUN apt-get update`, pois a ordem das camadas foi alterada, mesmo executando os mesmos comandos

### Vantagens

* Reaproveitamento de camadas inalteradas, no Dockerfile (cacheamento)

* Idempotência, ou seja, não há efeito colateral na execução

### Instruções (comando)

* **IMPORTANTE**: cada instrução (comando) = 1 camada na imagem

* **FROM**: inicializar o build de uma imagem a partir de uma imagem base

* **RUN**: executar um comando

* **LABEL**: adicionar metadados (mantenedor(es) / nome do projeto / etc) a imagem

  > Não afeta na construção da imagem, apenas como uma forma de documentação

* **CMD**: definir um comando e/ou os parâmetros padrão

* **EXPOSE**: expor uma porta para acessar o container

* **ENV**: definir variáveis de ambientes

* **ADD**: baixar arquivos/diretórios remotos e também descompactar arquivos compactados, se necessário, e por fim adicionar ao sistema de arquivos da imagem

* **COPY**: copiar arquivos/diretórios e adicionar ao sistema de arquivos da imagem

* **ENTRYPOINT**: auxiliar na configuração de um *container* que pode ser executado como um executável

  * Diferença entre *CMD* e *ENTRYPOINT*: [Docker DOCS](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact)

* **VOLUME**: definir volumes

* **WORKDIR**: definir o diretório corrente

  > **OBS**: em caso de o diretório especificado no *WORKDIR* não existir, ele será criado automaticamente

### Etapas de criação de uma imagem com Dockerfile

* **Definir a imagem base**

  * **Sintaxe**: `FROM <imagem>:<tag>`

  * **Exemplo**: `FROM ubuntu:20.04`

* **Executar um comando**

  * **Sintaxe**: `RUN <comando>`

  * **Exemplo**: `RUN apt update`

  * **OBS**: é uma boa prática utilizar o `&&` caso seja executado vários comandos sequencialmente. Dessa forma, evita a criação de camadas desnecessárias (sequência de vários `RUN`s). Além disso, essa prática evita a utilização de cache, que pode gerar problemas (utilizações de recursos desatualizados)

    * **Exemplo: sequência de vários `RUN`s**

      ```dockerfile
      FROM ubuntu:20.04

      RUN apt-get update
      RUN apt-get install curl -y
      RUN apt-get install vim -y
      ```

      > Imagem com 3 camadas

    * **Exemplo: utilização do `&&`**

      ```dockerfile
      FROM ubuntu:20.04

      RUN apt-get update && apt-get install curl -y && apt-get install vim -y
      ```

      > Imagem com apenas 2 camadas

    * **Exemplo**: utilização do `&&` e `\`

      > **Função**: facilitar a leitura, caso tenha vários comandos em um único bloco `RUN` é recomendado a utilização do `\` (contrabarra)

      ```dockerfile
      FROM ubuntu:20.04

      RUN apt-get update && \ 
          apt-get install curl -y && \
          apt-get install vim -y
      ```

* **Criar uma imagem a partir do *Dockerfile***: 
  
  * **Sintaxe**: `$ docker image build -t <namespace>/<repositório>:<tag> <contexto>`

    > **contexto** = o diretório que será enviado para o *dockerd* para fazer a criação da imagem

  * **Exemplo**: `$ docker image build -t imgabreuw/ubuntu-curl-file:v1 .`

  * **OBS**: Docker faz o reaproveitamento da imagem criada anteriormente e executar apenas as novas instruções/instruções modificadas, ou seja, ele faz o **cacheamento de camadas**