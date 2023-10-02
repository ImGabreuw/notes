# Protocol Buffers

> ## **Definição**

**Protocol Buffer** ou **Protobuf** é um método criado a Google de serialização de dados estruturados, independente de linguagem.

O gRPC utiliza o arquivo com extensão `.proto` para definir os contratos de requisição e resposta, garantindo o *Contract-first*.

> ## **Vantagens**

* Extremamente rápido (até 6x mais rápido do que o JSON)

* Contratos de requisição e resposta bem definidos 

* Mais simplicidade do que o XML/JSON.

> ## **Exemplo**

```protobuf
syntax = "proto3";
package payment;
option go_package = "grpc/pb";

import "google/protobuf/empty.proto";

service PaymentService {
  rpc Payment(PaymentRequest) returns (google.protobuf.Empty) {}
}

message PaymentRequest {
  CreditCard creditCard = 1;
  double amount = 2;
  string store = 3;
  string description = 4;
}

message CreditCard {
  string name = 1;
  string number = 2;
  int32 expirationMonth = 3;
  int32 expirationYear = 4;
  int32 cvv = 5;
}
```

* `go_package`: é uma opção específica para a integração com o Go

* `pb`: Protocol Buffer

* `1`, `2`, `3`, `4`: são as tags do *Protocol Buffers*, ou seja, numeração dos campos de cada `message`

```protobuf
syntax = "proto3";
package payment;
option go_package = "grpc/pb";

import "google/protobuf/empty.proto";

service PaymentService {
  rpc Payment(PaymentRequest) returns (google.protobuf.Empty) {}
}

message PaymentRequest {

  message CreditCard {
    string name = 1;
    string number = 2;
    int32 expirationMonth = 3;
    int32 expirationYear = 4;
    int32 cvv = 5;
  }

  CreditCard creditCard = 1;
  double amount = 2;
  string store = 3;
  string description = 4;
}
```