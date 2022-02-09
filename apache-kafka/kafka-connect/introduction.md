# Introdução ao Kafka Connect

> ## **Definição**

É um componente gratuito e open-source do Apache Kafka.

Ele exerce uma função parecida com um _hub de dados_ centralizado para integrações simples entre sistemas de armazenamento de dados (banco de dados, _key-value store_, _search indexes_ e _file systems_).

**IMPORTANTE**: o Kafka Connect NÃO é uma **ferramenta de ETL** (_Extract, Transform, Load_), mas é possível realizar transformações simples a partir de um recurso chamado **SMT** (_Simple Message Transformation_)

> ## **Dinâmica de funcionamento**

### **Estrutura**

![](./assets/dinamica-de-funcionamento-kafka-connect.png)

Existem 2 clusters (Apache Kafka e Kafka Connect) que se comunicam entre si.

O Kafka Connect possui vários **conectores** (_connectors_). Existem 2 tipos de conectores:

- **Data Source Connectors**: conectam com fontes de dados (MySQL) e inserem esses dados (contidos no MySQL) dentro de uma fila no Apache Kafka

- **Sinks**: entregam os dados a um serviço (JDBC, Elasticsearch, AWS Lambda)

### **_Standalone Workers_**

É um _worker_ que é responsável por executar uma tarefa.

> **worker**: geralmente é uma máquina

![](./assets/standalone-workers.png)

### **_Distributed Workers_**

É um _cluster_ que possui vários _workers_, logo as tarefas são distribuídas entre os conectores de cada _worker_.

![](./assets/distributed-workers.png)

> ## **Configuração de um conector**

### **Propriedades**

- `name`: nome do conector

- `connector.class`: classe do conector (clonar o repositório ou instalar via **Confluent Hub CLI**)

- `kafka.status.topic`: tópico responsável por armazenas os dados extraídos de uma fonte de dados (utilizado em _Data Source Connectors_)

### **Exemplo**

```properties
name = twitter
connector.class = com.github.jcustenborder.kafka.connect.twitter.TwitterSourceConnector
twitter.oauth.consumerKey = XXXXXXXXXXXXXXXXXXXXXXXXXXXX
twitter.oauth.consumerSecret = XXXXXXXXXXXXXXXXXXXXXXXXXXXX
twitter.oauth.accessToken = XXXXXXXXXXXXXXXXXXXXXXXXXXXX
twitter.oauth.accessTokenSecret = XXXXXXXXXXXXXXXXXXXXXXXXXXXX
filter.keywords = bbb
kafka.status.topic = tweets
process.deletes = false
```