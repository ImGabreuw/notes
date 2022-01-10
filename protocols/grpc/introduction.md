# Introdução à gRPC

> ## **Definição**

**gRPC**: *Remote Procedure Call*

É uma framework desenvolvido pela Google que implementa o RPC, e tem o objetivo de facilitar o processo de comunicação entre sistemas de uma forma extremamente rápida, leve, independente de linguagem.

Faz parte da *CNCF* (*Cloud Native Computing Foundation*).

> ## **Casos de uso**

* Microsserviços (principalmente)

* Back-end

* Mobile

* Navegadores (em desenvolvimento)

> ## **Vantagens**

* Desenvolvimento de *API Contract-first*, com *Protocol Buffer* por padrão

* Suporte a [várias linguagens](https://grpc.io/)

* Suporte a chamadas *streaming* do cliente para o servidor (vice-versa) e bidirecional.

* Economia de recursos de rede (dados são trafegados em binário)

* Baixa latência

* Utiliza o **procolo HTTP/2**