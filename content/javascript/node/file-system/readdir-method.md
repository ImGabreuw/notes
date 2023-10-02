# Método: `readdir()`

> ## **Definição**

Ler o conteúdo do diretório especificado no argumento do método.

Esse método trabalho com processos assíncronos.

> ## **Exemplo**

```js
const fs = require("fs").promises;
const path = require("path");

fs.readdir(path.resolve(__dirname))
  .then((file) => console.log(file))
  .catch((err) => console.log(err));
```

```js
const fs = require("fs").promises;
const path = require("path");

async function readdir(rootDir) {
  rootDir = rootDir || path.resolve(__dirname);

  const files = await fs.readdir(rootDir);

  walk(files);
}

function walk(files) {
  for (let file of files) {
    console.log(file);
  }
}

readdir();
```
