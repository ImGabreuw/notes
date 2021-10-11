# Introdução ao Kubernetes

![](./assets/kubernetes-aka-k8s.png)

### Definição

* Orquestrador (gerência e entrega) de aplicações (*containers*)

  ![](./assets/representacao-orquestrador-de-containers.png)

* Escala a aplicação de acordo com a demanda

* Sem *downtime*

* *Rollbacks*

### Cluster

* É um conjunto de *nodes*

* *Node* = Virtual Machine (VM) ou máquina física

* **Exemplos**

  * AWS, Azure, Google Cloud

  * Ambientes *On-promises*

### Kubernetes Cluster

* **Master**: responsável pelas tomadas de decisões

* **Node**: responsável por rodar a aplicação (*container*)

* *Master* e *node(s)* se comunicam entre si

### Objetos

* Pods

### Ferramentas

* **Minikube**

  * **Função**: criar *Kubernetes clusters* localmente (ambiente *On-promises*)

  * **Vantagens**

    * Boa comunidade

    * Várias funcionalidades e add-ons

    * Boa documentação

  * **Instalação**: *Docker* + *Minikube*

* **Kubectl (Kube control)**

  * **Função**: um ferramenta CLI para gerenciar *Kubernetes clusters*

  * **Algumas ações com Kubectl**

    * Deploy

    * Inspecionar

    * Editar recursos

    * Depurar

    * Ver logs

