# Classes

> ## **Definição**

Assim como as funções construtoras, as classes são uma outra forma de criar objetos no JavaScript.

Toda classe precisar ter uma função construtora, e para isso utiliza-se a palavra reservada `constructor`.

**IMPORTANTE**: os métodos de uma classe já são anexadas ao `prototype`, então não é necessário fazer o _binding_ de `prototypes` entre a superclasse (`Produto`) e subclasse (`Camiseta`), como se pode ver no exemplo abaixo:

```js
// Redundante
Camiseta.prototype = Object.create(Produto.prototype);
Camiseta.prototype.constructor = Camiseta;
```

> ## **Sintaxe**

```js
class [nome da classe] {

  constructor([parâmetros]) {
    // Definir as propriedades da classe (da mesma forma que nas funções construtoras)
  }

  // ...
}
```

> ## **Exemplo**

```js
class Pessoa {
  constructor(nome, sobrenome) {
    this.nome = nome;
    this.sobrenome = sobrenome;
  }
}

const pessoa = new Pessoa("Luiz", "Otávio");

console.log(pessoa); // Pessoa { nome: 'Luiz', sobrenome: 'Otávio' }
```

```js
class Pessoa {
  constructor(nome, sobrenome) {
    this.nome = nome;
    this.sobrenome = sobrenome;
  }

  falar() {
    console.log(`${this.nome} está falando.`);
  }

  comer() {
    console.log(`${this.nome} está comendo.`);
  }

  beber() {
    console.log(`${this.nome} está bebendo.`);
  }
}

const pessoa = new Pessoa("Luiz", "Otávio");

console.log(pessoa); // Pessoa { nome: 'Luiz', sobrenome: 'Otávio' }

pessoa.falar(); // Luiz está falando.
pessoa.comer(); // Luiz está comendo.
pessoa.beber(); // Luiz está bebendo.
```
