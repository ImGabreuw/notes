# Introdução ao Jackson

> ## **Definição**

_Jackson_ é um conjunto de ferramentas para processamento de dados para o Java, dentre elas estão:

- JSON parser / generator

- Biblioteca de conversão entre POJO e JSON

Além de dar suporte a outros formatos de dados como:

- CSV

- Protobuf

- XML

- YAML

- [etc ...](https://github.com/FasterXML/jackson#what-is-jackson)

> ## **Configuração**

1. Adicionar a dependência do Jackson no arquivo `pom.xml`

   ```xml
   <dependency>
       <groupId>com.fasterxml.jackson.core</groupId>
       <artifactId>jackson-databind</artifactId>
       <version>2.13.3</version>
   </dependency>
   ```
