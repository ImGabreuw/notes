# Objeto `Math`

> ## **Infinity**

### **Função**

Um número é `Infinity`, ou seja, tende ao infinito, quando o mesmo é um número muito grande

### Exemplo

```js
console.log(10 / 0); // Infinity
```

> **IMPORTANTE**: `Infinity` **NÃO** é um erro no JavaScript

> ## **Retornar uma número aleatório dentro de um intervalo específico**

### **Sintaxe**

```js
Math.random() * ([valor máximo] - [valor mínimo]) + [valor mínimo];
```

### **Exemplo**

```js
let numeroAleatorio = Math.random() * (10 - 5) + 5; // número aleatório entre "5" e "10"

console.log(numeroAleatorio);
```
