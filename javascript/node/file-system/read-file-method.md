# Método: `readFile()`

> ## **Definição**

É um método do módulo `FS` do Node que serve para **ler os dados de um arquivo**.

> ## **Sintaxe**

```js
readFile(
  [caminho do arquivo],
  [encoding]
)
```

> ## **Exemplo**

```js
const fs = require("fs").promises;

module.exports = (caminho) => fs.readFile(caminho, "utf8");
```
