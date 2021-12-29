# Deploy de aplicação no GCP

> ## **Kubernetes**

### **Criação do cluster Kubernetes**

* Menu > "Kubernetes Engine" > "Clusters"
  
  ![](../assets/menu-clusters.png)

* "Create" > Na opção "GKE Standard", clicar em "Configure"

  ![](../assets/menu-create-cluster.png)

* Em "Cluster basic", informar os dados dos seguintes campos: "Name", "Location Type", "Version"

  ![](../assets/menu-cluster-basics-1.png)

  ![](../assets/menu-cluster-basics-2.png)

  > **OBS**: o campo "Version" é referente a versão do Kubernetes utilizado no Cluster

* "NODE POOLS" > "default-pool"

  ![](../assets/menu-default-pools.png)

* Em "Node pool details", especificar o número de *Nodes* no *Cluster*

  ![](../assets/menu-node-pool-details-1.png)

  ![](../assets/menu-node-pool-details-2.png)

* Após ter realizado os passos anteriores, será iniciado a criação do seu *cluster Kubernetes*

  > **OBS**: esse processo pode levar algum tempo...