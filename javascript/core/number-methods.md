# Métodos de `number`

> ## **Método: `toString()`**

### **Converter um `number` em `string`**

```js
let num1 = 1;
let num2 = 2.5;

console.log(num1.toString() + num2); // 12.5
```

> O operador `+`, no exemplo acima, exerce a função de concatenação de `string`s

### **Representar uma `number` na forma de binário**

```js
let num1 = 1500;

console.log(num1.toString(2)); // 10111011100
```

> ## **Método: `toFixed()`**

### **Função**

Arredondar um número a partir do número de casas decimais passado no argumento do método.

### **Exemplo**

```js
let num1 = 10.73648123;

console.log(num1.toFixed(2)); // 10.74
```

> ## **Método: `isInteger()`**

### **Função**

Verificar se um `number` é um inteiro.

### **Exemplo**

```js
let num1 = 10.25;

console.log(Number.isInteger(num1)); // false
```

> ## `**Método: `isNaN`**`

### **Função**

Verificar se um valor não é um número (_Not a Number_).

### **Exemplo**

```js
let num1 = 20.15;
let temp = num1 * "olá";

console.log(Number.isNaN(temp)); // true
```

```js
let num1 = 20.15;
let temp = num1 * "5";

console.log(Number.isNaN(temp)); // false
```
