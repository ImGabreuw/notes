# Introdução ao Protocolo HTTP

> HTTP Protocol = Hypertext Transfer Protocol (Protocolo de Transferência de Hipertexto)

### Definição

* É um protocolo de comunicação utilizado para sistemas de informação de hipermídia, distribuídos e colaborativos

* É a base para a comunicação de dados da Internet

### Request

> Termo em português: requisição

* **Exemplo**

  ```http
  GET /hello HTTP/1.1
  ```

  * `GET` = método HTTP

  * `/hello` = caminho

  * `HTTP/1.1` = versão do HTTP

### Response

> Termo em português: resposta

* **Exemplo**

  ```http
  HTTP/1.1      200 OK

  Hello, World!
  ```

  * `HTTP/1.1` = versão do HTTP

  * `200 OK` = código de status HTTP

  * `Hello, World!` = corpo da resposta HTTP