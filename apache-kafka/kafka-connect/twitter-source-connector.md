# Twitter Source Connector

> ## **Configuração do ambiente com Docker**

```yaml
version: "3"

services:
  zookeeper:
    image: confluentinc/cp-zookeeper:latest
    environment:
      ZOOKEEPER_CLIENT_PORT: 2181

  kafka:
    image: confluentinc/cp-kafka:latest
    depends_on:
      - zookeeper
    ports:
      - 9092:9092
      - 9094:9094
    environment:
      KAFKA_BROKER_ID: 1
      KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR: 1
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:2181
      KAFKA_INTER_BROKER_LISTENER_NAME: INTERNAL
      KAFKA_LISTENERS: INTERNAL://:9092,OUTSIDE://:9094
      KAFKA_ADVERTISED_LISTENERS: INTERNAL://kafka:9092,OUTSIDE://host.docker.internal:9094
      KAFKA_LISTENER_SECURITY_PROTOCOL_MAP: INTERNAL:PLAINTEXT,OUTSIDE:PLAINTEXT
    extra_hosts:
      - "host.docker.internal:172.17.0.1"

  control-center:
    image: confluentinc/cp-enterprise-control-center:6.0.1
    hostname: control-center
    depends_on:
      - kafka
      - kafka-connect
    ports:
      - "9021:9021"
    environment:
      CONTROL_CENTER_BOOTSTRAP_SERVERS: "kafka:9092"
      CONTROL_CENTER_REPLICATION_FACTOR: 1
      CONTROL_CENTER_CONNECT_CLUSTER: http://kafka-connect:8083
      PORT: 9021

  kafka-connect:
    image: confluentinc/cp-kafka-connect-base:6.0.0
    container_name: kafka-connect
    depends_on:
      - zookeeper
      - kafka
    ports:
      - 8083:8083
    environment:
      CONNECT_BOOTSTRAP_SERVERS: "kafka:9092"
      CONNECT_REST_PORT: 8083
      CONNECT_GROUP_ID: kafka-connect
      CONNECT_CONFIG_STORAGE_TOPIC: _connect-configs
      CONNECT_OFFSET_STORAGE_TOPIC: _connect-offsets
      CONNECT_STATUS_STORAGE_TOPIC: _connect-status
      CONNECT_KEY_CONVERTER: org.apache.kafka.connect.storage.StringConverter
      CONNECT_VALUE_CONVERTER: org.apache.kafka.connect.json.JsonConverter
      CONNECT_INTERNAL_KEY_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
      CONNECT_INTERNAL_VALUE_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
      CONNECT_REST_ADVERTISED_HOST_NAME: "kafka-connect"
      CONNECT_LOG4J_ROOT_LOGLEVEL: "INFO"
      CONNECT_LOG4J_LOGGERS: "org.apache.kafka.connect.runtime.rest=WARN,org.reflections=ERROR"
      CONNECT_LOG4J_APPENDER_STDOUT_LAYOUT_CONVERSIONPATTERN: "[%d] %p %X{connector.context}%m (%c:%L)%n"
      CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR: "1"
      CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR: "1"
      CONNECT_STATUS_STORAGE_REPLICATION_FACTOR: "1"
      # # Optional settings to include to support Confluent Control Center
      #   CONNECT_PRODUCER_INTERCEPTOR_CLASSES: "io.confluent.monitoring.clients.interceptor.MonitoringProducerInterceptor"
      #   CONNECT_CONSUMER_INTERCEPTOR_CLASSES: "io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor"
      #  ---------------
      CONNECT_PLUGIN_PATH: /usr/share/java,/usr/share/confluent-hub-components,/data/connect-jars
    # In the command section, $ are replaced with $$ to avoid the error 'Invalid interpolation format for "command" option'
    command:
      - bash
      - -c
      - |
        echo "Installing Connector"
        confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.5.0
        confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:0.3.33
        #
        echo "Launching Kafka Connect worker"
        /etc/confluent/docker/run &
        #
        sleep infinity
    extra_hosts:
      - "host.docker.internal:172.17.0.1"
```

> ## **Configuração do conector do Twitter**

```properties
name = twitter
connector.class = com.github.jcustenborder.kafka.connect.twitter.TwitterSourceConnector

# Secrets
twitter.oauth.consumerKey =
twitter.oauth.consumerSecret = 
twitter.oauth.accessToken = 
twitter.oauth.accessTokenSecret = 

filter.keywords = bbb
kafka.status.topic = tweets
process.deletes = false
```

### **Tokens do Twitter**

Para obter os tokens da API do Twitter é necessário ter uma conta no Twitter (com email e número do telefone cadastrado).

1. Acessar: https://developer.twitter.com/

2. Clicar em `Developer Portal` (barra de navegação superior)

3. Criar/Acessar um projeto a partir da aba `Projects & Apps` (barra de navegação lateral)

4. Acessar menu `Keys and Tokens`

5. Clicar em `Access Token and Secret`