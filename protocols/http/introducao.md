# Introdução ao Protocolo HTTP

> ## **Definição**

> **HTTP** HyperText Transfer Protocol (Protocolo de Transferência de Hipertexto)

É um protocolo de comunicação utilizado para sistemas de informação de hipermídia, distribuídos e colaborativos.

É a base para a comunicação de dados da Internet.

Baseado em requisição-resposta (relação cliente-servidor).

> ## **Requisição (Request)**

### **Sintaxe**

```http
[método] [URI] HTTP/[versão] 
[cabeçalhos]

[corpo / payload]
```

> método = verbo HTTP (GET / POST / PUT / DELETE / etc)

### **Exemplo**

```http
GET /hello HTTP/1.1
```

* `GET` = método HTTP

* `/hello` = caminho

* `HTTP/1.1` = versão do HTTP

> ## **Resposta (Response)**

### **Sintaxe**

```http
HTTP/[versão] [status] 
[cabeçalhos]

[corpo]
```

### **Exemplo**

```http
HTTP/1.1      200 OK

Hello, World!
```

* `HTTP/1.1` = versão do HTTP

* `200 OK` = código de status HTTP

* `Hello, World!` = corpo da resposta HTTP