# Módulos

> ## **Objeto: `module`**

### **Definição**

É um objeto da biblioteca _CommonJS_.

A partir dele é possível obter várias informações sobre o módulo:

- `id`

- `path`

- `exports`

- `filename`

- `loaded`

- `children`

- `paths`

### **Exports nomeados**

- **Sintaxe**

  ```js
  module.exports.[chave] = [propriedade]
  ```

  ```js
  exports.[chave] = [propriedade]
  ```

  ```js
  this.[chave] = [propriedade]
  ```

- **Exemplos**

  ```js
  const nome = "Luiz";
  const sobrenome = "Miranda";

  const falarNome = () => {
    console.log(nome, sobrenome);
  };

  module.exports.nome = nome;
  module.exports.sobrenome = sobrenome;
  module.exports.falarNome = falarNome;

  console.log(module.exports);

  /*
  {
    nome: 'Luiz',
    sobrenome: 'Miranda',
    falarNome: [Function: falarNome]
  }
  */
  ```

  ```js
  const nome = "Luiz";
  const sobrenome = "Miranda";

  const falarNome = () => {
    console.log(nome, sobrenome);
  };

  exports.nome = nome;
  exports.sobrenome = sobrenome;
  exports.falarNome = falarNome;

  console.log(module.exports);

  /*
  {
    nome: 'Luiz',
    sobrenome: 'Miranda',
    falarNome: [Function: falarNome]
  }
  */
  ```

  ```js
  const nome = "Luiz";
  const sobrenome = "Miranda";

  const falarNome = () => {
    console.log(nome, sobrenome);
  };

  this.nome = nome;
  this.sobrenome = sobrenome;
  this.falarNome = falarNome;

  console.log(module.exports);

  /*
  {
    nome: 'Luiz',
    sobrenome: 'Miranda',
    falarNome: [Function: falarNome]
  }
  */
  ```

### **Executar uma função exportada**

```js
module.exports = function (x, y) {
  return x * y;
};

console.log(module.exports(2, 2)); // 4
```

> ## **Método: `require()`**

### **Definição**

Essa função é responsável por importar um módulo em um arquivo.

Geralmente o retorno de `require()` é atribuído a uma variável `const`.

### **Importar bibliotecas nativas do Node ou externas**

- **Sintaxe**

  ```js
  require([nome do pacote])
  ```

- **Exemplo**

  ```js
  const path = require("path");
  ```

  ```js
  const axios = require("axios");
  ```

### **Atribuição via desestruturação no `require()`**

- **Atributos e funções**

  ```js
  const { nome, sobrenome, falarNome } = require("./modulo-1");

  console.log(nome); // Luiz
  console.log(sobrenome); // Miranda
  falarNome(); // Luiz Miranda
  ```

- **Classes**

  ```js
  // modulo-4.js
  class Pessoa {
    constructor(nome) {
      this.nome = nome;
    }
  }

  exports.Pessoa = Pessoa;

  // app.js
  const { Pessoa } = require("./modulo-4");

  const pessoa = new Pessoa("Luiz");

  console.log(pessoa);
  ```

### **Sintaxe**

```js
require([caminho do arquivo])
```

> É recomendado utilizar o **caminho relativo** para especificar o `[caminho do arquivo]`.

### **Exemplo**

```js
const module1 = require("./modulo-1");

console.log(module1.nome); // Luiz
console.log(module1.sobrenome); // Miranda
module1.falarNome(); // Luiz Miranda
```
