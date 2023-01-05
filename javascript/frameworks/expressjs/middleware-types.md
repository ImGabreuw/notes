# Tipos de middlewares

## Middleware de nível do aplicativo

### **Definição**

São middleware vinculados a uma instância do `app`:

```ts
import express from "express";

const app = express();
```

Esse vinculo ocorre a partir das seguintes funções:

- `app.use()`

- `app.HTTP_METHOD()`
  > Exemplos: `app.get()`, `app.put()`, `app.post()`

É possível registrar várias funções middlewares, mapeados em um mesmo endpoint, em série com `app.use()` ou `app.HTTP_METHOD()`:

```ts
// Middleware executado primeiro
app.get("/user/:id", function (req, res, next) {
  res.end(req.params.id); // termina o ciclo request-response
});

// Esse middleware não provoca erro, porém nunca é executado
app.get(
  "/user/:id",
  function (req, res, next) {
    console.log("ID:", req.params.id);
    next();
  },
  function (req, res, next) {
    res.send("User Info");
  }
);
```

### **Exemplos**

```ts
// Registrar middleware em nível de aplicação com app.use()
app.use("/user/:id", function (req, res, next) {
  console.log("Request Type:", req.method);
  next();
});
```

```ts
// Registrar middleware em nível de aplicação com app.HTTP_METHOD()
app.get("/user/:id", function (req, res, next) {
  res.send("USER");
});
```

```ts
// Registrar pilha de middlewares em nível de aplicação com app.use()
app.use(
  "/user/:id",
  function (req, res, next) {
    console.log("Request URL:", req.originalUrl);
    next();
  },
  function (req, res, next) {
    console.log("Request Type:", req.method);
    next();
  }
);
```
