# Introdução ao Minikube

### Função

* Simular um **mono cluster** local

* **OBS**: para rodar um cluster **Kubernetes** é necessário pelo menos 3 máquinas, sendo 1 como a *host principal* e os outros 2 como *nodes*

### Arquitetura

![](./assets/arquitetura-minikube.png)

### Addons

> Todos os addons no Kubernetes: [clique aqui](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons)

* **Definição**: são funcionalidades extras do Kubernetes

* **Comandos**: [clique aqui](./comandos.md)

* **Exemplos**

  * ingress (proxy reverso, como um Nginx)

  * metrics-server