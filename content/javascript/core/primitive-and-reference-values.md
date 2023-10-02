# Valores primitivos e Valores por referência

> ## **Valores primitivos**

### **Definição**

Os valores primitivos são imutáveis:

```js
let nome = "Luiz";
nome[0] = "R";
console.log(nome[0], nome); // L Luiz
```

Ao atribuir uma variável "A", que armazena um tipo primitivo, em uma outra variável "B", esse valor será copiado para "B"

```js
let a = "A";
let b = a;

console.log(a, b); // A A

a = "Outra coisa";
console.log(a, b); // Outra coisa A
```

### **Tipos primitivos**

- string

- number

- boolean

- undefined

- null

- bigint

- symbol

> ## **Valor por referência**

### **Definição**

Os valores por referência são mutáveis.

Ao atribuir uma variável "A", que armazena um tipo por referência (`object`), em uma outra variável "B", "B" armazenará a referência para esse valor, logo se uma das variáveis tiver seu valor alterado o outro também sofrerá essa alteração.

```js
let a = [1, 2, 3];
let b = a;

console.log(a, b); // [ 1, 2, 3 ] [ 1, 2, 3 ]

a.push(4);

console.log(a, b); // [ 1, 2, 3, 4 ] [ 1, 2, 3, 4 ]
```

### **Tipos por referência**

- array

- object

- function
