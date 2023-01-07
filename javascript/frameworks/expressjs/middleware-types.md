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

## Middleware de nível de roteador

### **Definição**

São middlewares vinculados a uma instância do `express.Router()`:

```ts
import express from "express";

const router = express.Router();
```

Esse vinculo ocorre a partir das seguintes funções:

- `router.use()`

- `router.HTTP_METHOD()`

  > Exemplos: `router.get()`, `router.put()`, `router.post()`

É possível registrar várias funções middlewares, mapeados em um mesmo endpoint, em série com `router.use()` ou `router.HTTP_METHOD()`:

```ts
router.use(function (req, res, next) {
  console.log("Time:", Date.now());
  next();
});

router.use(
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

**IMPORTANTE**: configurar o `Router` no objeto `App`

```ts
// ...

app.use("/", router);
```

### **Exemplo**

```ts
// Registrar middleware em nível de roteador com router.get()
router.get("/user/:id", function (req, res, next) {
  console.log(req.params.id);
  res.render("special");
});

// Registrar pilha de middlewares em nível de roteador com router.get()
router.get(
  "/user/:id",
  function (req, res, next) {
    if (req.params.id == 0) next("route");
    else next();
  },
  function (req, res, next) {
    res.render("regular");
  }
);
```

## Middleware de manipulação de erros

### **Definição**

**IMPORTANTE**: middleware de manipulação de erros possuem 4 argumentos (`err`, `req`, `res`, `next`) e essa assinatura deve ser mantida rigorosamente para que o Express interprete que essa função seja uma função middleware de manipulação de erros.

> Mais detalhes sobre [manipulação de erros](https://expressjs.com/pt-br/guide/error-handling.html)

### **Exemplo**

```ts
app.use(function (err, req, res, next) {
  console.error(err.stack);

  res.status(500).send("Something broke!");
});
```
