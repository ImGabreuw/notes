# Introdução a objetos

> ## **Definição**

Um objeto pode ter vários **atributos** (características do objeto).

**Método**: é o nome dado para a função de um objeto

```js
const pessoa = {
  nome: "Luiz",
  sobrenome: "Miranda",
  idade: 25,

  fala() {
    console.log(`A minha idade atual é ${this.idade} anos.`);
  },

  incrementaIdade() {
    this.idade++;
  },
};

pessoa.fala(); // A minha idade atual é 25 anos.
pessoa.incrementaIdade();
pessoa.fala(); // A minha idade atual é 26 anos.
```

> ## **Sitaxe**

```js
{
  [nome do atributo]: [valor],
  // ...
}
```

> ## **Exemplos**

```js
function criarPessoa(nome, sobrenome, idade) {
  return {
    nome: nome,
    sobrenome: sobrenome,
    idade: idade,
  };
}

const pessoa = criarPessoa("Luiz", "Otávio", 25);
console.log(pessoa); // { nome: 'Luiz', sobrenome: 'Otávio', idade: 25 }
```

**OU**

```js
function criarPessoa(nome, sobrenome, idade) {
  return {
    nome,
    sobrenome,
    idade,
  };
}

const pessoa = criarPessoa("Luiz", "Otávio", 25);
console.log(pessoa); // // { nome: 'Luiz', sobrenome: 'Otávio', idade: 25 }
```
