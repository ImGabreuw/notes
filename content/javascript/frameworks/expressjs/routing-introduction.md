# Introdução a roteamento no Express.js

> ## **Definição**

O roteamento é a forma de **gerenciar as rotas** em uma aplicação da web criado com o framework Express.js.

As **rotas são os endereços de URL** que a aplicação pode aceitar e responder às solicitações do cliente.

No Express.js, o roteamento é gerenciado através do objeto **Router**, que é responsável por definir as rotas e as ações a serem executadas quando uma rota é acessada.

O **Router** pode ser configurado para aceitar solicitações de diferentes métodos HTTP, como `GET`, `POST`, `PUT` e `DELETE`, e pode ser usado para tratar diferentes tipos de solicitações de acordo com a URL e os dados da solicitação.

> ## **Sintaxe**

A definição de rotas pelas seguintes formas:

1. Utilizando uma instância do **express**

   ```js
   const app = express();

   app.HTTP_METHOD(PATH, HANDLER);
   ```

2. Utilizando o objeto **Router**

   ```js
   const router = express.Router();

   router.HTTP_METHOD(PATH, HANDLER);
   ```

> ## **Exemplos**

### Rota com GET

```js
app.get("/", function (req, res) {
  res.send("Hello World!");
});
```

### Rota com POST

```js
app.post("/", function (req, res) {
  res.send("Got a POST request");
});
```

### Rota com PUT

```js
app.put("/user", function (req, res) {
  res.send("Got a PUT request at /user");
});
```

### Rota com DELETE

```js
app.delete("/user", function (req, res) {
  res.send("Got a DELETE request at /user");
});
```
