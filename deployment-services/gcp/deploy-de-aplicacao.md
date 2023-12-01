# Deploy de aplicação no GCP

> ## **Kubernetes**

### **Criação do cluster Kubernetes**

* Menu > "Kubernetes Engine" > "Clusters"
  
  ![](menu-clusters.png)

* "Create" > Na opção "GKE Standard", clicar em "Configure"

  ![](menu-create-cluster.png)

* Em "Cluster basic", informar os dados dos seguintes campos: "Name", "Location Type", "Version"

  ![](menu-cluster-basics-1.png)

  ![](menu-cluster-basics-2.png)

  > **OBS**: o campo "Version" é referente a versão do Kubernetes utilizado no Cluster

* "NODE POOLS" > "default-pool"

  ![](menu-default-pools.png)

* Em "Node pool details", especificar o número de *Nodes* no *Cluster*

  ![](menu-node-pool-details-1.png)

  ![](menu-node-pool-details-2.png)

* Após ter realizado os passos anteriores, será iniciado a criação do seu *cluster Kubernetes*

  > **OBS**: esse processo pode levar algum tempo...