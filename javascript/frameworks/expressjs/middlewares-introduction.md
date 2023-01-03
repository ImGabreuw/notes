# Middlewares

## **Definição**

Funções middlewares possuem acesso aos dados presentes na requisição (request) e na resposta (response).

Além disso, essas funções também possuem uma referência para a próxima função middleware na pilha de execução.

Funcionalidades das funções de middleware:

- Executar códigos
- Fazer mudanças nos dados da solicitação e resposta
- Encerrar o ciclo de _request-response_
- Executar o próximo middleware na pilha

É fundamental **registrar o middleware** com `app.use(middleware)` para que o Express possa usá-lo para interceptar as requisições necessárias.

**OBS**: Se o atual middleware não for responsável por encerrar o ciclo de _request-response_, é necessário definir dentro dela a referência para o próximo middleware (`next()`). Se não a requisição ficará suspensa e provocando um `timeout error`:

```ts
// Requisição fica suspensa e lança "TimeOutError"
const app = express();

app.get("/", function (req, res, next) {
  // ...
});
```

```ts
// Middleware encerra ciclo
const app = express();

app.get("/", function (req, res, next) {
  // ...
  res.send(); // encerra o ciclo de request-response
});
```

```ts
// Middleware chama o próximo middleware da pilha
const app = express();

app.get("/", function (req, res, next) {
  // ...
  next();
});
```

## **Exemplo**

```ts
const app = express();

var requestTime = function (req, res, next) {
  req.requestTime = Date.now();
  next();
};

app.use(requestTime);

app.get("/", function (req, res) {
  var responseText = "Hello World!";
  responseText += "Requested at: " + req.requestTime;
  res.send(responseText);
});

app.listen(3000);
```

> O Express utilizará a função middleware `requestTime` para interceptar todas as requisições com endereço `/`
