# Funções construtoras (_constructor functions_)

> ## **Definição**

É uma função para criar objetos, porém de uma forma um pouco diferente das funções fábricas (_factory functions_).

O nome de um _constructor functions_, por convenção, devem começar com letra maiúscula.

Para invocar um função construtura (e assim instanciar um novo objeto), utiliza-se a palavra reservada `new` antes do nome da função.

> ## **Sintaxe**

- Declaração de atributos públicos:

  ```js
  function NomeDaFuncao([parâmetros...]) {
    this.atributo1 = parametro1;
    this.atributo2 = parametro2;
    // ...
  }
  ```

- Declaração de métodos públicos:

  ```js
  function NomeDaFuncao([parâmetros...]) {
    this.metodo1 = function() {
      // Código
    }

    this.metodo2 = function() {
      // Código
    }

    // ...
  }
  ```

- Declaração de atributos privados:

  ```js
  function NomeDaFuncao([parâmetros...]) {
      const ATRIBUTO1 = [valor];
      let ATRIBUTO2 = [valor];
      // ...
    }
  ```

- Declaração de métodos privados:

  ```js
  function NomeDaFuncao([parâmetros...]) {
    const metodo1 = function() {
      // Código
    }

    const metodo2 = function() {
      // Código
    }

    // ...
  }
  ```

> ## **Exemplos**

```js
// Função construtora
function Pessoa(nome, sobrenome) {
  this.nome = nome;
  this.sobrenome = sobrenome;
}

// Instanciação de objetos
const pessoa1 = new Pessoa("Luiz", "Otávio");
const pessoa2 = new Pessoa("Maria", "Oliveira");

console.log(pessoa1);
console.log(pessoa2);
```

```js
function Pessoa(nome, sobrenome) {
  this.nome = nome;
  this.sobrenome = sobrenome;

  this.metodo = function () {
    console.log(this.nome + ": sou um método");
  };
}

const pessoa1 = new Pessoa("Luiz", "Otávio");
pessoa1.metodo();

console.log(pessoa1);

/*
Luiz: sou um método
Pessoa {
  nome: 'Luiz',
  sobrenome: 'Otávio',
  metodo: [Function (anonymous)]
}
*/
```

```js
function Pessoa(nome, sobrenome) {
  const ID = 1234;

  const metodoInterno = function () {};

  this.nome = nome;
  this.sobrenome = sobrenome;

  this.metodo = function () {
    console.log(this.nome + ": sou um método");
  };
}

const pessoa1 = new Pessoa("Luiz", "Otávio");
pessoa1.metodo();

console.log(pessoa1);

/*
Luiz: sou um método
Pessoa {
  nome: 'Luiz',
  sobrenome: 'Otávio',
  metodo: [Function (anonymous)]
}
*/
```
