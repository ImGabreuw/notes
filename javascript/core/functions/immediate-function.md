# Funções imediatas (IIFE)

> ### **Definição**

**IIFE** é um acrônimo para _Immediately Invoked Function Expression_), traduzindo para português é **função imediata** ou **função auto-invocável**.

Evita que variáveis e funções sejam declaradas no escopo global, pois isso pode gerar conflitos com bibliotecas externas.

Geralmente _IIFE_ são funções anônimas.

> ## **Exemplos**

```js
(function () {
  const nome = "Luiz";
  console.log(nome); // Luiz
})();

const nome = "Otávio";
console.log(nome); // Otávio
```

> Sintaxe de _IIFE_ herdada da biblioteca _JQuery_

```js
(function (idade, peso, altura) {
  const sobrenome = "Miranda";

  function criarNome(nome) {
    return nome + " " + sobrenome;
  }

  function falarNome() {
    console.log(criarNome("Luiz"));
  }

  falarNome();
  console.log(idade, peso, altura);
})(30, 80, 1.8);

/*
Luiz Miranda
30 80 1.8
*/
```
