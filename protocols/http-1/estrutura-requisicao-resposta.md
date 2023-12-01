# Estrutura de uma requisição/resposta no Protocolo HTTP

### Header

> Termo em português: cabeçalhos

* Permitir a troca de informações adicionais entre requisições e respostas (cliente e servidor)

* **Exemplo**

  Accept | Content negotiation | Accept: application/json
  :----: | :-----------------: | :----------------------:
  Cache-Control | Caching | `Cache-Control: max-age=100`
  Authorization | Authentication | `Authorization: Bearer $2b$10$yl9rJOApdaipTptRB.foFOe.6Pj2Y22LtIs8.Ispa/dxAVSPWSab6`

### Payload

* Também pode ser chamado de *body* (corpo)

* Conteúdo das requisições e respostas

* Contêm a localização/representação de um [**recurso**](wiki/software-architecture/rest/introducao.md)