# Comandos Minikube

### start

* **Função**: criar Kubernetes cluster com *n* nós

* **Sintaxe**: `$ minikube start --nodes=<número de nós>`

* **Exemplo**: `$ minikube start --nodes=2`

* **Flags**

  * `-p`

    * **Função**: identificar um perfil (*profile*)

    * **Sintaxe**: `$ minikube -p <nome do perfil> start`

      > Por padrão, o nome do perfil é "default"

    * **Exemplo**: `$ minikube -p dev.to start`

  * `--cpus`

    * **Função**: especificar a quantidade de CPUs para o container

    * **Sintaxe**: `$ minikube start --cpus <quantidade de CPUs>`

    * **Exemplo**: `$ minikube start --cpus 2`

  * `--memory`

    * **Função**: especificar a quantidade de memória para o container

    * **Sintaxe**: `$ minikube start --memory <quantidade de memório, em MB>`

    * **Exemplo**: `$ minikube start --memory=4098`

### status

* **Função**: imprimir informações básicas sobre o *cluster*

* **Sintaxe**: `$ minikube status`

* **Exemplo**

  * **Comando**: `$ minikube status`

  * **Saída**

    ```sh
    minikube
    type: Control Plane
    host: Running
    kubelet: Running
    apiserver: Running
    kubeconfig: Configured

    minikube-m02
    type: Worker
    host: Running
    kubelet: Running
    ```

### service

* **Função**: abrir a aplicação no navegador

* **Sintaxe**: `minikube service <nome do service>`

  > **Obter o nome do service**: arquivo manifesto do tipo Service (`kind: Service`) > campo `name` (`metadata > name`)

* **Exemplo**

  * **Comando**: `minikube service myapp`

  * **Saída**

    ```sh
    |-----------|-------|-------------|---------------------------|
    | NAMESPACE | NAME  | TARGET PORT |            URL            |
    |-----------|-------|-------------|---------------------------|
    | default   | myapp |          80 | http://192.168.49.2:30493 |
    |-----------|-------|-------------|---------------------------|
    🎉  Opening service default/myapp in default browser...
    ```

### addons

* **Função**: gerenciar os *addons* no minikube

* **Sintaxe**: `$ minikube addons <parâmetros>`

* **Subcomandos `enable`**

  * **Função**: habilitar um *addon* no *minikube*

  * **Sintaxe**: `$ minikube addons enable <nome do addon>`

  * **Exemplo**: `$ minikube addons enable metrics-server`

### cache (comando descontinuado)

* **Função**: gerenciar uma imagem local no *minikube*

* **Subcomando `add`**

  * **Função**: adicionar uma imagem para o cache local (*cluster*)

  * **Sintaxe**: `$ minikube cache add <nome da imagem>`

  * **Exemplo**: `$ minikube cache add java-k8s`

### ssh

* **Função**: acessar o *minikube* via **SSH**

* **Sintaxe**

  * **Acessar o *minikube* com o namespace padrão ("default")**: `$ minikube ssh`

  * **Acessar o *minikube* com um namespace específico**: `$ minikube -p <namespace> ssh`

* **Exemplo**: `$ minikube -p dev-to ssh`

### dashboard

* **Função**: acessar o *dashboard* do *Kubernetes* rodando dentro do *minikube*

* **Sintaxe**: `$ minikube dashboard`

* **Exemplo**: `$ minikube dashboard`