# Comandos Kubectl

### get

* **imprimir todos os nós**

  * **Sintaxe**: `$ kubectl get nodes`

  * **Exemplo**

    * **Comando**: `$ kubectl get nodes`

    * **Saída**

      ```sh
      NAME           STATUS   ROLES                  AGE     VERSION
      minikube       Ready    control-plane,master   5m54s   v1.21.2
      minikube-m02   Ready    <none>                 4m48s   v1.21.2
      ```

* **Subcomando `pods`**

  * **Função**: manipular os *pods* de um *cluster Kubernetes*

  * **Flags**

    * `-A`

      * **Função**: imprimir todos os *pods*

      * **Sintaxe**: `$ kubectl get pods -A`

      * **Exemplo**

        * **Comando**: `$ kubectl get pods -A`

        * **Saída**

          ```sh
          NAMESPACE     NAME                               READY   STATUS    RESTARTS   AGE
          kube-system   coredns-558bd4d5db-x4pxk           1/1     Running   0          8m11s
          kube-system   etcd-minikube                      1/1     Running   0          8m25s
          kube-system   kindnet-2fd8x                      1/1     Running   0          8m12s
          kube-system   kindnet-h2dtq                      1/1     Running   0          7m31s
          kube-system   kube-apiserver-minikube            1/1     Running   0          8m25s
          kube-system   kube-controller-manager-minikube   1/1     Running   0          8m35s
          kube-system   kube-proxy-cw5pw                   1/1     Running   0          7m31s
          kube-system   kube-proxy-ngd4d                   1/1     Running   0          8m12s
          kube-system   kube-scheduler-minikube            1/1     Running   0          8m33s
          kube-system   storage-provisioner                1/1     Running   0          8m25s
          ```

    * `-n`

      * **Função**: imprimir os *pods* com determinado *namespace*

      * **Sintaxe**: `$ kubectl get pods -n <namespace>`

        > `kube-system` é um *namespace* exclusivo para recursos gerenciado pelo Kubernetes

      * **Exemplo**

        * **Comando**: `$ kubectl get pods -n kube-system`

        * **Saída**

          ![](exemplo-saida-kubectl-get-pods-flag-n.png)

* **Subcomando `service`**
    
  * **Função**: imprimir todos os *services* em execução
  
  * **Sintaxe**

    * `kubectl get svc`

    * `kubectl get service`

    * `kubectl get services`

  * **Exemplo**

    * **Comando**: `kubectl get service`

    * **Saída**

      ```sh
      NAME         TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
      kubernetes   ClusterIP   10.96.0.1       <none>        443/TCP        16h
      myapp        NodePort    10.106.124.34   <none>        80:30493/TCP   4m27s
      ```

  * **Flags**

    * `-n`

      * **Função**: imprimir os *services* com determinado *namespace*

      * **Sintaxe**: `$ kubectl get services -n <namespace>`

      * **Exempĺo**

        * **Comando**: `$ kubectl get services -n dev-to`

        * **Saída**

          ![](exemplo-saida-kubectl-get-services-flag-n.png)

### apply

* **Função**: criar e atualizar recursos de um *K8S cluster* a partir de arquivo manifesto (`deployment.yaml`)

* **Criar um *K8S cluster* especificando um arquivo manifesto**

  * **Sintaxe**: `kubectl apply -f <nome do arquivo>`

  * **Exemplo**

    * **Comando**: `kubectl apply -f deployment.yaml`

    * **Saída**

      ```sh
      deployment.apps/myapp created
      service/myapp created
      ```

### create

* Subcomando `namespace`

  * **Função**: criar um *namespace* como um nome específico

  * **Sintaxe**: `$ kubectl create namespace <nome do namespace>`

  * **Exemplo**: `$ kubectl create namespace dev-to`