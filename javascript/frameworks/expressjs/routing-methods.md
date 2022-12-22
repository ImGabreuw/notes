# Métodos de roteamento

> ## **Definição**

No Express.js, existem vários métodos de roteamento disponíveis para gerenciar as rotas em uma aplicação web.

**Cada método** é responsável por **aceitar solicitações HTTP** de um tipo específico e **executar uma ação** determinada quando a rota é acessada.

Os métodos de roteamento mais comuns no Express.js:

- `app.get(path, callback)`: Aceita solicitações _HTTP GET_ para a rota especificada em `path` e executa a ação especificada em `callback`.

- `app.post(path, callback)`: Aceita solicitações _HTTP POST_ para a rota especificada em `path` e executa a ação especificada em `callback`.

- `app.put(path, callback)`: Aceita solicitações _HTTP PUT_ para a rota especificada em `path` e executa a ação especificada em `callback`.

- `app.delete(path, callback)`: Aceita solicitações _HTTP DELETE_ para a rota especificada em `path` e executa a ação especificada em `callback`.

- `app.all(path, callback)`: Aceita qualquer tipo de solicitação HTTP para a rota especificada em `path` e executa a ação especificada em `callback`.

  > Essa abordagem é amplamente utilizado em **middlewares**.

Além desses métodos HTTP, o Express.js têm suporte a outros métodos: head, options, trace, copy, lock, mkcol, move, purge, propfind, proppatch, unlock, report, mkactivity, checkout, merge, m-search, notify, subscribe, unsubscribe, patch, search, e connect.

> **OBS**: Para **métodos de rota que não estão definidas** no Object `express`, use a **notação de colchetes**. Por exemplo: `app['METHOD'](PATH, HANDLER)`

> ## **Exemplo**

```js
import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('Home page');
});

app.post('/login', (req, res) => {
  // process login request
});

app.put('/user/:id', (req, res) => {
  // update user info
}

app.all("/secret", function (req, res, next) {
  console.log("Accessing the secret section ...");
  next(); // pass control to the next handler
});
```
