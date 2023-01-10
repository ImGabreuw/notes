# Método de Array: `slice`

> ## **Definição**

Esse método "simula" as seguintes funções `pop()`, `shift()`, `unshift()`, `push()`.

> ## **Sintaxe**

```js
array.splice(
  [índice],
  [número de elementos a serem deletados],
  [elementos a serem adicionados, separados por vírgula ...]
)
```

> ## **Exemplos**

### **Simular o método `pop()`**

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(4, 1);

console.log(removidos);
// [ 'Júlia' ]
```

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(-2, 2);

console.log(removidos); // [ 'Gabriel', 'Júlia' ]
```

### **Simular o método `push()`**

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(nomes.length, 0, "Luiz");

console.log(nomes, removidos); // [ 'Eduardo', 'Maria', 'Joana', 'Gabriel', 'Júlia', 'Luiz' ] []
```

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(3, 0, "Luiz");

console.log(nomes, removidos); // [ 'Eduardo', 'Maria', 'Joana', 'Luiz', 'Gabriel', 'Júlia' ] []
```

> No caso acima, o método `splice()` não removeu nenhum elemento e adicionou o elemento `"Luiz"` no índice passado como argumento (`índice=3`).

### **Simular o método `shift()`**

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(0, 1);

console.log(nomes, removidos); // [ 'Maria', 'Joana', 'Gabriel', 'Júlia' ] [ 'Eduardo' ]
```

### **Simular o método `unshift()`**

```js
const nomes = ["Eduardo", "Maria", "Joana", "Gabriel", "Júlia"];

const removidos = nomes.splice(0, 0, "Luiz");

console.log(nomes, removidos); // [ 'Luiz', 'Eduardo', 'Maria', 'Joana', 'Gabriel', 'Júlia' ] []
```
