# Introdução ao REST

> ## **REST**

### **Definição**

> **REST**: *Representational State Transfer* ou Transferência de Estado Representacional

É um **estilo arquitetural** (NÃO é um protocolo) que define um conjunto de restrições e propriedades baseados no protocolo HTTP/HTTPS.

### **Curiosidade**

É uma das formas mais usadas para integrações de sistemas modernos. (utiliza verbos, código, cabeçalhos e URIs para compor uma API web)

> ## **API REST**

### **Definição**

> **API**: *Application Program Interface*

É uma API baseado no **estilo arquitetural REST**.

### **Importância de uma API (REST)**

* Facilita a comunicação entre serviços

* Independência de tecnologia

> ## **Recursos**

### **Definição**

São representações dos modelos e/ou coleções de modelos que serão expostos aos clientes.

### **Formas de representar um recurso**

* **JSON (JavaScript Object Notation)**

  > **OBS**: mais utilizada no momento

  ```json
  {
    "id": 1,
    "name": "Han Solo"
  }
  ```

* **XML (eXtensible Markup Language)**

  ```xml
  <character>
      <id>1</id>
      <name>Han Solo</name>
  </character>
  ```

> ## **Requisição e Resposta**

### **Estrutura de uma requisição**

![](./assets/representacao-estrutura-requisicao.png)