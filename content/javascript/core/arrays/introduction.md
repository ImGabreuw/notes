# Introdução à Arrays

> ## **Definição**

É uma estrutura de dados que serve para armazenar dados e organizá-los.

Cada índice do Array armazena a referência do seu respectivo elemento (valor) na memória.

O Array pode ser criado de 2 formas:

- **Literal**: declarar um array a partir da notação de colchetes (`[]`)

  ```js
  const names = ["Eduardo", "Maria", "Joana"];
  ```

- **Via construtor**: declarar um array a partir do método construtor (utilizando a palavra reservada `new`)

  ```js
  const names = new Array("Eduardo", "Maria", "Joana");
  ```

> ## **Métodos**

- `pop()`

- `shift()`

- `length()`

- `push()`

- `unshift()`

- `slice()`

- `split()`

- `spread operador`

> Para informações mais detalhadas sobre cada método, acessar: [métodos de Array](array-methods.md)

> ## **Dimensões de Array**

### **Array unidimensional**

> Também chamado de **vetor**

```js
const vector = [1, 2, 3];
```

### **Array bidimensional**

> Também chamado de **matriz**

```js
const matrix = [
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3],
];
```
