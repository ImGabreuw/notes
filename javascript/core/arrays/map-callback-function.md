# Função callback: `map`

> ## **Definição**

É um método para transformar cada elemento de uma `array` a partir de uma _callback function_.

> **OBS**: o método `map()` sempre retorna um `array` com o mesmo tamanho do `array` original.

> ## **Exemplos**

```js
const numbers = [5, 50, 80, 1, 2, 3, 5, 8, 7, 11, 15, 22, 27];
const doubleNumbers = numbers.map((number) => number * 2);

console.log(doubleNumbers);

/*
[
  10, 100, 160,  2,  4,  6,
  10,  16,  14, 22, 30, 44,
  54
]
*/
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

const names = people.map((person) => person.name);

console.log(names);

// [ 'Luiz', 'Maria', 'Eduardo', 'Letícia', 'Rosana', 'Wallace' ]
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

const peopleWithId = people.map((person, index) => {
  person.id = ++index;
  return person;
});

console.log(people);
/*
[
  { name: 'Luiz', age: 62, id: 1 },   
  { name: 'Maria', age: 23, id: 2 },  
  { name: 'Eduardo', age: 55, id: 3 },
  { name: 'Letícia', age: 19, id: 4 },
  { name: 'Rosana', age: 32, id: 5 },
  { name: 'Wallace', age: 47, id: 6 }
]
*/

console.log(peopleWithId);
/*
[
  { name: 'Luiz', age: 62, id: 1 },
  { name: 'Maria', age: 23, id: 2 },
  { name: 'Eduardo', age: 55, id: 3 },
  { name: 'Letícia', age: 19, id: 4 },
  { name: 'Rosana', age: 32, id: 5 },
  { name: 'Wallace', age: 47, id: 6 }
]
*/
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

const peopleWithId = people.map((person, index) => {
  const newPerson = { ...person };
  newPerson.id = ++index;
  return newPerson;
});

console.log(people);
/*
[
  { name: 'Luiz', age: 62 },   
  { name: 'Maria', age: 23 },  
  { name: 'Eduardo', age: 55 },
  { name: 'Letícia', age: 19 },
  { name: 'Rosana', age: 32 },
  { name: 'Wallace', age: 47 }
]
*/

console.log(peopleWithId);
/*
[
  { name: 'Luiz', age: 62, id: 1 },
  { name: 'Maria', age: 23, id: 2 },
  { name: 'Eduardo', age: 55, id: 3 },
  { name: 'Letícia', age: 19, id: 4 },
  { name: 'Rosana', age: 32, id: 5 },
  { name: 'Wallace', age: 47, id: 6 }
]
*/
```

### **OBS: retornar um objeto em uma _arrow function_**

- Problema:

  ```js
  const people = [
    { name: "Luiz", age: 62 },
    { name: "Maria", age: 23 },
    { name: "Eduardo", age: 55 },
    { name: "Letícia", age: 19 },
    { name: "Rosana", age: 32 },
    { name: "Wallace", age: 47 },
  ];

  const ages = people.map((person) => {
    age: person.age;
  }); // Erro

  console.log(ages);
  ```

- Solução: utilizar parênteses envolta do objeto

  ```js
  const people = [
    { name: "Luiz", age: 62 },
    { name: "Maria", age: 23 },
    { name: "Eduardo", age: 55 },
    { name: "Letícia", age: 19 },
    { name: "Rosana", age: 32 },
    { name: "Wallace", age: 47 },
  ];

  const ages = people.map((person) => ({ age: person.age }));

  console.log(ages);

  /*
  [
    { age: 62 },
    { age: 23 },
    { age: 55 },
    { age: 19 },
    { age: 32 },
    { age: 47 }
  ]
  */
  ```
