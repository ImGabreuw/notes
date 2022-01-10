# Diferenças entre REST e gRPC

REST | gRPC
:--: | :--:
Texto / JSON | Protocol Buffers
Unidirecional | Bidirecional e assíncrono
Alta latência | Baixa latência
Sem contrato (maior chance de erros) | Contrato definido pelo `.proto`
Sem suporte a streaming (Request / Response) | Suporte a streaming
Design pré-definido (REST foca nas operações HTTP (GET, PUT, POST, DELETE, etc) -> CRUD) | Design é livre
Uso de muitas biblioteca de terceiros | Sem dificuldades de implementação de bibliotecas de terceiros (geração de códigos com stubs)