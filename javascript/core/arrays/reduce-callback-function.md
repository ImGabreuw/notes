# Função callback: `reduce`

> ## **Definição**

É uma método para reduzir os valores de um `array` em um único valor. A junção desse elementos é feita por uma _callback function_.

**IMPORTANTE**: a partir do método `reduce()` é possível exercer a mesma função dos métodos `filter()` e `map()`, porém não é recomendado.

> ## **Sintaxe**

```js
array.reduce(([acumulador], [valor atual], [índice atual], [array original]) => {
  // Código ...

  return acumulador;
}, [valor inicial]);
```

> **OBS**: o parâmetro `[valor inicial]` é opcional, então se não especificado o JavaScript utiliza como valor inicial o **primeiro elemento do `array`**.

> ## **Exemplos**

```js
const numbers = [5, 50, 80, 1, 2, 3, 5, 8, 7, 11, 15, 22, 27];

const total = numbers.reduce(function (accumulator, number, index, array) {
  accumulator += number;
  return accumulator;
}, 0);

console.log(total);
// 236
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

const oldestPerson = people.reduce(function (accumulator, person) {
  if (accumulator.age > person.age) return accumulator;

  return person;
});

console.log(oldestPerson);
// { name: 'Luiz', age: 62 }
```

### **Simulação de outras funções callback de Array**

- Simulação do método `filter()`:

  ```js
  const numbers = [5, 50, 80, 1, 2, 3, 5, 8, 7, 11, 15, 22, 27];

  const total = numbers.reduce(function (accumulator, number) {
    if (number % 2 === 0) accumulator.push(number);

    return accumulator;
  }, []);

  console.log(total); // [ 50, 80, 2, 8, 22 ]
  ```

- Simulação do método `map()`:

  ```js
  const numbers = [5, 50, 80, 1, 2, 3, 5, 8, 7, 11, 15, 22, 27];

  const total = numbers.reduce(function (accumulator, number) {
    accumulator.push(number * 2);

    return accumulator;
  }, []);

  console.log(total);

  // [ 10, 100, 160,  2,  4,  6, 10,  16,  14, 22, 30, 44, 54 ]
  ```
