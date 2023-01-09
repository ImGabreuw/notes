# Introdução ao JWT

> ## **Definição**

É uma implementação de _JSON Web Tokens_ para JavaScript.

Foi baseado no framework [node-jws](https://github.com/auth0/node-jws) que foi descontinuado pelo mantenedor [_Auth0_](https://github.com/auth0).

> ## **Criação do token**

### **Sintaxe**

```js
jwt.sign(
  [payload do token],
  [secret]
  [objeto de configuração]
)
```

> `[objeto de configuração]`: informar o tempo de expiração do token, por exemplo

### **Exemplo**

```js
const token = jwt.sign({ id, email }, process.env.TOKEN_SECRET, {
  expiresIn: process.env.TOKEN_EXPIRATION,
});
```
