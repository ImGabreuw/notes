# Introdução ao Apache Kafka

> ### **Contexto**

### **Event-driven (mundo orientado a eventos)**

Sistemas que emitem eventos:

  * Carros

  * E-commerce

  * Alarmes

  * Monitoramento

  * Microsserviços

### **O mundo dos eventos**

Cada dia mais precisamos processar mais e mais eventos em diversos tipos de plataforma. Desde sistema que precisam se comunicar, _devices para IOT_, monitoramento de aplicações, sistemas de alarmes, etc.

> ## **Apache Kafka**

### **Definição**

É uma plataforma distribuída de *streaming de eventos* open-source que é utilizada por milhares de empresas para ter alta performance em *pipeline de dados*, *stream de analytics* integração de de dados e aplicações de missão crítica.

**IMPORTANTE**: o Apache Kafka não é apenas uma sistema tradicional de filas como RabbitMQ, Amazon SQS

> Site: https://kafka.apache.org/

### **Características**

* É uma plataforma (possui um ecossistema complexo)

* Trabalha de forma distribuído (alta resiliência)

* Banco de dados para armazenar as mensagens

* Extremamente rápido e com baixa latência

* Utiliza o disco ao invés de memória para processar os dados

### **Vantagens**

* Eventos em tempo real

  * Altíssimo _throughput_

  * Latência extremamente baixa (até 2ms)

* Escalável

* Armazenamento (histórico dos dados)

* Alta disponibilidade

* Se conecta com quase todas as linguagens

* Bibliotecas prontas para as mais diversas tecnologias

* Ferramentas open-source

### **Empresas usando Apache Kafka**

* Linkedin (criador do Kafka)

* Netflix

* Uber

* Twitter

* Dropbox

* Spotify

* Paypal
 
* Bancos... (**principalmente**)

### **Ecossistema**

* Kafka Connect (**Connectors**)

* Confluent Schema Registry

* Rest Proxy

* ksqlDB

* Kafka Streams (Baixo nível)