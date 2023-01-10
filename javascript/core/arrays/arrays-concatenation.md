# Concatenação de Arrays

> ## **Operador `+`**

**IMPORTANTE**: O operador `+` concatena os valores presentes entre 2 ou mais arrays

```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];

const arrayConcat = array1 + array2;

console.log(arrayConcat); // [ 1, 2, 3, 4, 5, 6 ]
```

> ## **Método `concat()`**

```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const arrayConcat = array1.concat(array2);

console.log(arrayConcat); // [ 1, 2, 3, 4, 5, 6 ]
```

```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const arrayConcat = array1.concat(array2, [7, 8, 9], "Luiz");

console.log(arrayConcat);

// [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 'Luiz' ]
```

> ## **Spread operator (`...`)**

```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const arrayConcat = [...array1, ...array2, 7, 8, 9];

console.log(arrayConcat);

// [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
```

```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const arrayConcat = [...array1, ...array2, ...[7, 8, 9]];

console.log(arrayConcat);

// [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
```
