# Introdução a funções

> ## **Definição**

As funções servem para declarar trechos que códigos que podem ser reutilizados ao longo da aplicação.

**Função** é um [objeto de primeira classe](function-first-class-object.md) no JavaScript, logo ela pode ser atribuído a uma variável (`const` ou `let`).

Toda função, por padrão, retorna `undefined`.

Para retornar um valor em uma função, basta utilizar a palavra reservada `return`.

O trecho de **código dentro da função** está em um **escopo isolado**:

```js
function soma(x, y) {
  const resultado = x + y;
  return resultado;
}

const resultado = soma(2, 2);
console.log(resultado); // 4
```

**Parâmetros com valores padrão**:

```js
function soma(x = 1, y = 1) {
  const resultado = x + y;
  return resultado;
}

console.log(soma(2, 2)); // 4
console.log(soma(2)); // 3
console.log(soma()); // 2
```

**Funções anônimas**:

```js
const raiz = function (n) {
  return Math.sqrt(n);
};

console.log(raiz(9)); // 3
console.log(raiz(16)); // 4
console.log(raiz(25)); // 5
```

**Arrow functions** (expressões lambdas):

```js
const raiz = (n) => Math.sqrt(n);

console.log(raiz(9)); // 3
console.log(raiz(16)); // 4
console.log(raiz(25)); // 5
```

**OBS**: Diferença entre **parâmetro** e **argumento**

- **Argumento**: são as informações passados ao chamar uma função (`minhaFuncao(...)`)

- **Parâmetro**: são os valores que uma função aceita (assinatura da função)

> ## **Sintaxe**

```js
function nomeFuncao([parâmetros]): [tipo retorno] {
  // Corpo da função
}
```

> ## **Exemplo**

```js
function saudacao(nome) {
  console.log(`Bom dia ${nome}!`);
}

saudacao("Gabriel"); // Bom dia Gabriel!
saudacao("Maria"); // Bom dia Maria!
```

```js
function saudacao(nome) {
  console.log(`Bom dia ${nome}!`);
}

const funcaoSemRetorno = saudacao("Gabriel"); // Bom dia Gabriel!

console.log(retornoDaFuncao); // undefined
```

```js
function saudacao(nome) {
  return `Bom dia ${nome}!`;
}

const funcaoComRetorno = saudacao("Gabriel");

console.log(retornoDaFuncao); // Bom dia Gabriel!
```
