# Função callback: `filter`

> ## **Definição**

É um método para filtrar os elementos que não se adequam a um determinada condição (_predicate_), ou seja, a comparação retorna `false`, logo esse elemento é eliminado do novo `array`.

**IMPORTANTE**: o método `filter()` recebe como argumento uma _callback function_

> **OBS**: o método `filter()` sempre retorna um `array` com o tamanho menor ou igual ao `array` original.

> ## **Exemplos**

```js
const numbers = [1, 40, 82, 93, 9, 4, 12, 29, 57, 63, 32];

const filteredNumbers = numbers.filter((number) => number > 10);

console.log(filteredNumbers);

// [ 40, 82, 93, 12, 29, 57, 63, 32 ]
```

```js
const people = [
  { name: "Luiz", age: 62 },
  { name: "Maria", age: 23 },
  { name: "Eduardo", age: 55 },
  { name: "Letícia", age: 19 },
  { name: "Rosana", age: 32 },
  { name: "Wallace", age: 47 },
];

const peopleWithLargeName = pessoas.filter((person) => person.name.length >= 7);

console.log(peopleWithLargeName);

/*
[
  { name: 'Eduardo', age: 55 },
  { name: 'Letícia', age: 19 },
  { name: 'Wallace', age: 47 }
]
*/
```
