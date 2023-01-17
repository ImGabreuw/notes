# Métodos de objeto

> ## **Spread operator**

### **Função**

Copiar todos os atributos de um objeto, além de ter a possibilidade de adicionar mais atributos, nesse outro objeto.

### **Exemplo**

```js
const pessoa1 = {
  nome: "Luiz",
  sobrenome: "Otávio",
};

const pessoa2 = {
  ...pessoa1,
  idade: 25,
};

console.log(pessoa1); // { nome: 'Luiz', sobrenome: 'Otávio' }
console.log(pessoa2); // { nome: 'Luiz', sobrenome: 'Otávio', idade: 25 }
```
