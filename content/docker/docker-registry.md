# Docker registry

> ## **Vantagem**

Facilitar a distribuição da imagem de um container para servidores e/ou desenvolvedores.

> ## **Padrão para publicar imagens no *Docker Hub***

### **Convenção de nomenclatura de imagens**

`<namespace>/<repositório>:<tag>`

* `namespace`: proprietário da imagem (conta no _Docker Hub_)

* `repositório`: nome da aplicação/microsserviço (**geralmente**)

* `tag`: versão da imagem

É uma boa prática informar a `tag`, pois assim torna a imagem **idempotente**.

  > **idempotente** é a capacidade de garantir um mesmo comportamento, independentemente do tempo.

É recomendável criar a `tag latest` (última versão da imagem) após cada atualização da imagem.

### Etapas de envio de imagens

1. Fazer o *build* do Dockerfile: `$ docker build -t <nome da imagem> .`

2. Autenticação no *Docker Hub*: `$ docker login` > informar usuário e senha

3. Enviar a imagem ao *Docker Hub*: `$ docker push <namespace>/<repositório>:<tag>`

4. (OPCIONAL) Criar uma **tag latest** da imagem: `$ docker tag <namespace>/<repositório>:<tag> <namespace>/<repositório>:latest`

5. Enviar a *imagem latest* ao *Docker Hub*: `$ docker push <namespace>/<repositório>:latest`

> ## **Opções de Registry**

* [Docker Hub](https://hub.docker.com/) (serviço padrão do *Docker Registry*)

* Elastic Container Registry

* Azure Container Registry

* Google Container Registry

* Harbor (criar um Registry próprio)