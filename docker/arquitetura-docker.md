# Arquitetura do Docker

### Visão geral

![](representacao-da-arquitetura-do-docker.png)

### Docker daemon
  
> Também conhecido como *dockerd*

* **Componente para gerenciar os objetos do Docker** (imagens/containers/networks/volumes)

* Responsável pela execução dos containers

### Docker client

* **Docker CLI faz a comunicação com o *dockerd*** a partir de comandos (`docker build`, `docker run`)

  > CLI = (C)ommand (L)ine (I)nterface

* **OBS**: *Docker daemon* e *Docker client* não precisam estar, necessariamente, na mesma máquina

### Docker registry

* **Repositório de imagens Docker** (armazenar e distribuir imagens)

> Parecido com o GitHub
