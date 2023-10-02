# Escopo léxico

> ## **Definição**

A função conhece o escopo aonde foi declarado (**escopo local**) e os escopos superiores (até chegar no **escopo global**).

> ## **Exemplos**

```js
const nome = "Luiz";

function falaNome() {
  console.log(nome);
}

function usarFalaNome() {
  falaNome();
}

usarFalaNome();
// Luiz
```

```js
const nome = "Luiz";

function falaNome() {
  const nome = "Otávio";
  console.log(nome);
}

function usarFalaNome() {
  falaNome();
}

usarFalaNome(); // Otávio
```

```js
const nome = "Luiz";

function falaNome() {
  console.log(nome);
}

function usarFalaNome() {
  const nome = "Otávio";
  falaNome();
}

usarFalaNome(); // Luiz
```
