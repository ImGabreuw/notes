# Pods no Kubernetes

> ## **Pods**

### **Representação**

![](./assets/representacao-pods.png)

### Definição

* É a menor unidade de *deploy* no Kubernetes

* Unidade que contém os containers provisionados

* Cada *Pod* representa um processo (um container) rodando no *Cluster*

  > **OBS**: é possível colocar vários containers em um único *Pod*, porém não é recomendado, exceto se os serviços rodando dentro desses containers sejam extremante dependentes entre si

### Tipos de *containers* dentro do *Pod*

* **Main container**: container principal da aplicação

* [**Init container**](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/): é o primeiro a ser iniciado e outros *containers* só são iniciados após a inicialização bem sucedida do *init container*

* **Side container**: são *containers* dão suporte ao **main container**

### Volumes

* É a forma de como os containers compartilham dados entre si

### Network

* **localhost**: meio de comunicação entre os *containers* do mesmo *Pod*

* **Endereço de IP do Pod**: meio de comunicação com outra(s) aplicação(ões) é feita a partir de um IP único (`10.0.10.1`)