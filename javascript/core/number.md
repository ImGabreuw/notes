# Tipo de dado `number`

> ## **Números inteiros**

### **Definição**

São números sem casas decimais.

### **Exemplo**

```js
console.log(100); // 100
```

> ## **Números flutuantes**

### **Definição**

São números com casas decimais (com pontos flutuantes, na programação)

## **Exemplo**

```js
console.log(3.1415); // 3.1415
```

> ## **IEEE 754-2008**

### **Função**

Padrão de precisão para números flutuantes (`float`)

### **Problema**

```js
let num1 = 0.7;
let num2 = 0.1;

num1 += num2;
num1 += num2;
num1 += num2;

console.log(num1); // 0.9999999999999999
console.log(Number.isInteger(num1)); // false
```

### **Solução**

```js
let num1 = 0.7;
let num2 = 0.1;

num1 += num2;
num1 += num2;
num1 += num2;

num1 = parseFloat(num1.toFixed(2));
// OU
num1 = Number(num1.toFixed(2));

console.log(num1); // 1
console.log(Number.isInteger(num1)); // true
```

**OU**

```js
let num1 = 0.7;
let num2 = 0.3;

num1 = (num1 * 100 + num2 * 100) / 100;

console.log(num1); // 1
console.log(Number.isInteger(num1)); // true
```
