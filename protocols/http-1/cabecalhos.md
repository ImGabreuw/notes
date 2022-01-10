# Cabeçalhos HTTP

> ## **Definição**

Os cabeçalhos (*headers*) HTTP permitem que o cliente e o servidor passem informações adicionais entre eles na requisição ou resposta.

Cada campo do cabeçalho é composto por `[chave]: [valor]`.

> **OBS**: o nome da chave é *case-insensitive* (não diferencia letras maiúsculas e minúsculas)

> ## **Tipos cabeçalhos**

### **`Accept`**

* **Definição**:

  * Aceita um valor do tipo **MediaType**

  * **MediaType**, também conhecido como **MIME type**, serve para informar o formato do corpo da requisição (*Content Negotiation*).

  * Geralmente em APIs, é utilizar o formato **JSON**

* **Exemplo**

  ```http
  Accept: application/json
  ```
