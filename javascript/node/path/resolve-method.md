# Método: `resolve()`

> ## **Definição**

Esse método tem a função de resolver os separadores de caminho (`/` ou `\`) para cada sistema operacional.

> ## **Exemplo**

```js
const path = require("path");

console.log(path.resolve(__dirname, ".", "exemplo-3.js"));

/*
d:\Projects\curso-de-javascript-e-typescript-do-basico-ao-avancado\javascript-node-npm-express-mongodb-nodejs\modulo-2\projects\exemplo-3.js
*/
```
