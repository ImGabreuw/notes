# Métodos de Array

> ## **Método: `push`**

### **Função**

Adicionar um novo elemento no final do `Array`.

### **Exemplo**

```js
const students = ["Luiz", "Maria", "João"];

students.push("Luiza");
console.log(students); // [ 'Luiz', 'Maria', 'João', 'Luiza' ]
```

**OU**

```js
const students = ["Luiz", "Maria", "João"];

students[students.length] = "Luiza";
console.log(students); // [ 'Luiz', 'Maria', 'João', 'Luiza' ]
```

> ## **Método: `unshift`**

### **Função**

Adicionar um novo elemento no começo do `Array`.

### **Exemplo**

```js
const students = ["Luiz", "Maria", "João"];

students.unshift("Luiza");
console.log(students); // [ 'Luiza', 'Luiz', 'Maria', 'João' ]
```

> ## **Método: `pop`**

### **Função**

Obter e remover o último elemento do `Array`.

### Exemplo

```js
const students = ["Luiz", "Maria", "João"];

const lastStudent = students.pop();
console.log(lastStudent); // João
console.log(students); // [ 'Luiz', 'Maria' ]
```

> ## **Método: `shift`**

### **Função**

Obter e remover o primeiro elemento do `Array`.

### Exemplo

```js
const students = ["Luiz", "Maria", "João"];

const firstStudent = students.shift();
console.log(firstStudent); // Luiz
console.log(students); // [ 'Maria', 'João' ]
```

> ## **Método: `delete`**

### **Função**

Remover um elemento do `Array` a partir de um índice, porém esse elemento se torna do tipo `undefined`.

### **Exemplo**

```js
const students = ["Luiz", "Maria", "João"];

delete students[1];
console.log(students); // [ 'Luiz', <1 empty item>, 'João' ]
console.log(students[1]); // undefined
```

> ## **Método: `slice`**

### **Função**

Obter apenas os elementos dentro de um intervalo específico no `Array`.

> **OBS**: O parâmetro `end` do método não pertence ao intervalo a ser "fatiado"

### **Exemplo**

```js
const students = ["Luiz", "Maria", "João", "Luiza", "Eduardo"];

console.log(students.slice(0, 3)); // [ 'Luiz', 'Maria', 'João' ]
console.log(students.slice(0, -2)); // [ 'Luiz', 'Maria', 'João' ]
```

> ## Método: `splice`

### **Definição**

Esse método "simula" as seguintes funções `pop()`, `shift()`, `unshift()`, `push()`.

### **Sintaxe**

```js
array.splice(
  [índice],
  [número de elementos a serem deletados],
  [elementos a serem adicionados, separados por vírgula ...]
)
```

### **Exemplos**

- **Simular o método `pop()`**:

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(4, 1);

  console.log(removedNames);
  // [ 'Júlia' ]
  ```

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(-2, 2);

  console.log(removedNames); // [ 'Gabriel', 'Júlia' ]
  ```

- **Simular o método `push()`**:

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(names.length, 0, "Luiz");

  console.log(names, removedNames); // [ 'Eduardo', 'Maria', 'Joana', 'Gabriel', 'Júlia', 'Luiz' ] []
  ```

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(3, 0, "Luiz");

  console.log(names, removedNames); // [ 'Eduardo', 'Maria', 'Joana', 'Luiz', 'Gabriel', 'Júlia' ] []
  ```

  > No caso acima, o método `splice()` não removeu nenhum elemento e adicionou o elemento `"Luiz"` no índice passado como argumento (`índice=3`).

- **Simular o método `shift()`**:

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(0, 1);

  console.log(names, removedNames); // [ 'Maria', 'Joana', 'Gabriel', 'Júlia' ] [ 'Eduardo' ]
  ```

- **Simular o método `unshift()`**:

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

  const removedNames = names.splice(0, 0, "Luiz");

  console.log(names, removedNames); // [ 'Luiz', 'Eduardo', 'Maria', 'Joana', 'Gabriel', 'Júlia' ] []
  ```

> ## **Operador: spread operator**

### **Função**

Copiar todos os elementos de um `Array` para um outro, além de ter a possibilidade de adicionar mais elementos nesse novo `Array`.

### **Exemplo**

```js
let a = [1, 2, 3];
let b = [...a];

console.log(a, b); // [ 1, 2, 3 ] [ 1, 2, 3 ]
```

```js
let a = [1, 2, 3];
let b = [...a, 4, 5];

console.log(a, b); // [ 1, 2, 3 ] [ 1, 2, 3, 4, 5 ]
```
