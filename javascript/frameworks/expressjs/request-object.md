# Objeto: `Request`

> ## **Parâmetros**

### **Definição**

São informações da requisição passadas na URL (parâmetros de URL).

### **Exemplo**

```
http://facebook.com/profiles/5
```

> `5` é o parâmetro da URL

> ## **Query String**

### **Definição**

São as informações passadas na URL após o ponto de interrogação (`?`) (parâmetros de URL).

A adição de novos valores é feita a partir do `&`.

Os valores da **Query String** são armazenados em chave-valor.

### **Exemplo**

```
http://facebook.com/profiles/5?campanha=googleads&nome_campanha=seila
```

: `?campanha=googleads&nome_campanha=seila` é a **Query String** da requisição

> ## **Corpo da requisição**

### **Definição**

São informações que não são armazenadas na URL da requisição.

> ## **Express**

### **Parâmetros**

- **Sintaxe**

  - **Parâmetro obrigatório**

    ```http
    GET /caminho/do/recurso/:[parâmetro]
    ```

  - **Parâmetro opcional** (adicionar `?` no final da URL)

    ```http
    GET /caminho/do/recurso/:[parâmetro]?
    ```

- **Exemplo**

  - **URL**: `http://localhost:3000/testes/123`

  - **Código**

    ```js
    app.get("/testes/:id?", (req, res) => {
      res.send(req.params.id || "Teste");
    });

    // 123
    ```

### **Query String**

- **Exemplo**

  - **URL**: `http://localhost:3000/testes?nome=Miranda&sobrenome=Otavio&idade=30`

  - **Código**

    ```js
    app.get("/testes/:id?", (req, res) => {
      res.send(req.query);
    });

    // {"nome":"Miranda","sobrenome":"Otavio","idade":"30"}
    ```

### **Body**

- **Configuração**

  O comportamento padrão do _express_ é não tratar o _body_ de uma requisição, e para isso pé preciso adicionar a seguinte configuração:

  ```js
  app.use(
    express.urlencoded({
      extended: true,
    })
  );
  ```

- **Exemplo**

  - **Requisição**

    ```http
    POST http://localhost:3000/

    {
      "nome": "Luiz"
    }
    ```

  - **Código**

    ```js
    app.post("/", (req, res) => {
      console.log(req.body);
      res.send("Recebi o formulário.");
    });

    // { nome: 'Luiz' }
    ```
