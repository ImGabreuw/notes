# Introdução a serviços em contêineres

Os contêineres de serviço são contêineres Docker que oferecem uma maneira simples e portátil de hospedar serviços que são necessários para testar ou operar aplicações em um _workflow_. Por exemplo, o seu _workflow_ pode exigir a execução de testes de integração que requerem acesso a um banco de dados e um cache de memória.

É possível configurar contêineres para cada _job_ em um _workflow_. O GitHub cria um **contêiner Docker independente para cada serviço** configurado no _workflow_ e destrói o contêiner de serviço quando o _job_ é concluído. As etapas em um _job_ podem se comunicar com todos os contêineres de serviço que fazem parte do mesmo _job_. No entanto, é permitido criar e usar eles dentro de uma ação composta.

## Comunicação com contêineres de serviço

A comunicação entre um _job_ e seus contêineres de serviço varia dependendo se um _job_ é executado diretamente na máquina do _runner_ ou em um contêiner.

## Execução de Trabalhos em um contêiner

Quando você executa trabalhos em um contêiner, o GitHub conecta os contêineres de serviço ao _job_ usando as **redes de _bridge_** definidas pelo usuário do Docker.

Executar o _job_ e os serviços em um contêiner simplifica o acesso à rede. Pode-se acessar um contêiner de serviço usando o rótulo configurado no _workflow_. O **nome do host do contêiner** de serviço é automaticamente **mapeado para o nome do rótulo**. Por exemplo, se você criar um contêiner de serviço com o rótulo "redis", o nome do host do contêiner de serviço será "redis".

Não é preciso configurar nenhuma porta para os contêineres de serviço. Por padrão, **todos os contêineres que fazem parte da mesma rede Docker expõem todas as portas entre si**, e nenhuma porta é exposta fora da rede Docker.

## Execução de trabalhos na máquina do runner

Ao executar trabalhos diretamente na máquina do _runner_, é possível acessar os contêineres de serviço usando "localhost:<porta>" ou "127.0.0.1:<porta>". O GitHub configura a rede do contêiner para permitir a comunicação entre o contêiner de serviço e o host do Docker.

Quando um _job_ é executado diretamente na máquina do _runner_, o serviço em execução no contêiner Docker não expõe suas portas ao _job_ no _runner_ por padrão. É necessário mapear as portas do contêiner de serviço para o host do Docker.

## Criação de contêineres de serviço

A palavra-chave "services" serve para criar contêineres de serviço que fazem parte de um _job_ em seu _workflow_. 

> Documentação: [jobs.<job_id>.services](https://docs.github.com/en/actions/using-containerized-services/about-service-containers#mapping-docker-host-and-service-container-ports).

O exemplo a seguir cria um serviço chamado "redis" em um _job_ chamado "container-job". O host Docker neste exemplo é o contêiner baseado em "node:16-bullseye".

```yaml
name: Exemplo de Contêiner Redis
on: push

jobs:
  # Rótulo do _job_ em contêiner
  container-job:
    # Os contêineres devem ser executados em sistemas operacionais baseados em Linux
    runs-on: ubuntu-latest
    # Imagem Docker Hub na qual `container-job` é executado
    container: node:16-bullseye

    # Contêineres de serviço para executar com `container-job`
    services:
      # Rótulo usado para acessar o contêiner de serviço
      redis:
        # Imagem Docker Hub
        image: redis
```

## Mapeamento de portas do Host Docker e contêiner de serviço

Se o **_job_ for executado em um contêiner Docker, não é preciso mapear portas** no host ou no contêiner de serviço. No entanto, se o _job_ for executado diretamente na máquina do _runner_, será necessário mapear as portas necessárias do contêiner de serviço para as portas no host do _runner_.

É possível mapear as portas dos contêineres de serviço para o host Docker usando a palavra-chave "ports". 

**Exemplo:**

O exemplo a seguir mapeia a porta 6379 do contêiner de serviço "redis" para a porta 6379 do host Docker.

```yaml
name: Exemplo de Serviço Redis
on: push

jobs:
  # Rótulo do _job_ em contêiner
  _runner_-job:
    # Você deve usar um ambiente Linux ao usar contêineres de serviço ou trabalhos em contêiner
    runs-on: ubuntu-latest

    # Contêineres de serviço para executar com `_runner_-job`
    services:
      # Rótulo usado para acessar o contêiner de serviço
      redis:
        # Imagem Docker Hub
        image: redis
        #
        ports:
          # Abre a porta TCP 6379 no host e no contêiner de serviço
          - 6379:6379
```

Quando você mapeia portas usando a palavra-chave "ports", o GitHub utiliza o comando "--publish" para publicar as portas do contêiner no host Docker. 

> Documentação: [Docker container networking](https://docs.docker.com/network/)

Se você especificar a porta do host Docker, mas não a porta do contêiner, a porta do contêiner será atribuída aleatoriamente a uma porta livre. O GitHub define a porta do contêiner atribuída no contexto do contêiner de serviço. Por exemplo, para um contêiner de serviço "redis", se você configurar a porta do host Docker como 5432, poderá acessar a porta correspondente do contêiner usando o contexto "job.services.redis.ports[5432]".

> Documentação: [Contexts](https://docs.github.com/en/actions/learn-github-actions/contexts#job-context).