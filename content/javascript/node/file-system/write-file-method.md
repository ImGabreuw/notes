# Método: `writeFile()`

> ## **Definição**

É um método do módulo `FS` do Node que serve para **escrever dados em um arquivo**.

> ## **Sintaxe**

```js
writeFile(
  [caminho do arquivo],
  [dados],
  [objeto de configuração]
)
```

### **Propriedades de `[objeto de configuração]`**

- `flag`:

  - `w`: o conteúdo existente no arquivo é limpo e substituído conteúdo/dado passado como argumento do método

  - `a`: o conteúdo/dado passado como argumento do método é adicionado no final do arquivo

    > **OBS**: por padrão, não ocorre a quebra de linha ao adicionar um novo elemento no arquivo

- `encoding`: encoding do arquivo (por padrão é UTF-8)

> ## **Exemplo**

```js
const fs = require("fs").promises;

module.exports = (caminho, dados) =>
  fs.writeFile(caminho, dados, { flag: "w" });
```
