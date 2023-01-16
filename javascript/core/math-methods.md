# Métodos de `Math`

> ## **Método: `floor()`**

### **Função**

Arredondar um número para baixo (_floor_).

### **Exemplo**

```js
let num1 = 9.54578;
let num2 = Math.floor(num1);

console.log(num2); // 9
```

> ## **Método: `ceil()`**

### **Função**

Arredondar um número para cima (`ceil`).

### **Exemplo**

```js
let num1 = 9.54578;
let num2 = Math.ceil(num1);

console.log(num2); // 10
```

> ## **Método: `round()`**

### **Função**

Arredondar um número com base na sua primeira casa decimal:

- `< 5`: arredonda para baixo

- `>= 5`: arredonda para cima

### **Exemplo**

```js
let num1 = 9.49;
let num2 = Math.round(num1);

console.log(num2); // 9
```

```js
let num1 = 9.5;
let num2 = Math.round(num1);

console.log(num2); // 10
```

> ## **Método: `max()`**

### **Função**

Obter o maior número dentro uma array numérico.

### **Exemplo**

```js
let maiorNumero = Math.max(1, 2, 3, 4, 5, -50, 100, 9, 8, 6);

console.log(maiorNumero); // 100
```

> ## **Método: `random()`**

### **Função**

Obter uma número aleatório dentro do intervalo entre `0` e `1`.

> **OBS**: `1` não pertence ao intervalo de valores possíveis

### **Exemplo**

```js
let numeroAleatorio = Math.random();

console.log(numeroAleatorio); // 0.6329995167403006
```

> ## **Método: `pow()`**

### **Função**

Exponenciação.

> **OBS**: tem a mesma função do operador `**`

### **Exemplo**

```js
console.log(Math.pow(2, 10)); // 1024
```

**OU**

```js
console.log(2 ** 10); // 1024
```

> ## **Método: `sqrt()`**

### **Função**

Raiz quadrada.

### **Exemplo**

```js
let num1 = 9;

console.log(Math.sqrt(num1)); // 3
```

**OU**

```js
let num1 = 9;

console.log(num1 ** (1 / 2)); // 3
console.log(num1 ** 0.5); // 3
```
