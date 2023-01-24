# Parâmetros da função

> ## **Argumentos em funções sem parâmetros**

### **Definição**

Em outras linguagens de programação, como o Java, passar **argumentos inesperados** em uma função, resultaria em um erro de compilação, porém no JavaScript isso é **apenas ignorado**.

### **Exemplo**

```js
function funcao() {
  console.log("Olá");
}

funcao("Oi");

// Olá
```

> ## **Propriedade: `arguments`**

### **Definição**

`arguments` é uma propriedade do tipo `array` que armazena todos os valores passados como argumentos (ignorados) na função sem parâmetros ou com parâmetros excedentes.

**IMPORTANTE**: isso só ocorre nas função declaradas com `function` (não funcionada nas _arrow function_)

```js
function funcao() {
  console.log(arguments);
}

funcao("Olá", 1, 2);

// Arguments] { '0': 'Olá', '1': 1, '2': 2 }
```

```js
const funcao = function () {
  console.log(arguments);
};

funcao("Olá", 1, 2);

// [Arguments] { '0': 'Olá', '1': 1, '2': 2 }
```

### **Exemplo**

```js
function somar() {
  let total = 0;

  for (let argumento of arguments) {
    total += argumento;
  }

  console.log(total);
}

somar(1, 2, 3, 4, 5, 6, 7, 8, 9);

// 45
```

```js
function somar(a, b, c) {
  const [paramA, paramB, paramC, ...paramExcedentes] = arguments;
  console.log("Parâmetros da função:", paramA, paramB, paramC);
  console.log("Parâmetros excedentes:", paramExcedentes);
}

somar(1, 2, 3, 4, 5, 6, 7, 8, 9);

/*
Parâmetros da função: 1 2 3
Parâmetros excedentes: [ 4, 5, 6, 7, 8, 9 ]
*/
```

> ## **Valor padrão dos parâmetros de uma função**

### **Definição**

Por padrão o JavaScript atribui `undefined` para os parâmetros que não receberam argumentos

### **Exemplo**

- **Valor padrão definido automaticamente pelo JavaScript**

  ```js
  function funcao(a, b, c, d, e, f) {
    console.log(a, b, c, d, e, f);
  }

  funcao(1, 2, 3);

  // 1 2 3 undefined undefined undefined
  ```

- **Valor padrão customizado**

  - **Forma tradicional**

    ```js
    function somar(a, b) {
      b = b || 0;
      console.log(a + b);
    }

    somar(2);

    // 2
    ```

  - **Forma nova**

    ```js
    function somar(a, b = 0) {
      console.log(a + b);
    }

    somar(2);

    // 2
    ```

> ## **Ignorar argumentos de uma função**

### **Definição**

Para pular um argumento de uma função é necessário passar no argumento o valor de `undefined`, e assim esse parâmetro assumi o valor padrão

### **Exemplo**

```js
function somar(a = 0, b = 1, c = 2) {
  console.log(a + b + c);
}

somar(2, undefined, 10);

// 13
```

> **OBS**: no caso acima, se informar `null` no parâmetro b, o JavaScript atribuirá o valor `0` (valor padrão para `null`);

> ## **Desestruturação nos parâmetros**

### **Em objetos**

```js
function funcao({ nome, sobrenome, idade }) {
  console.log(nome, sobrenome, idade);
}

funcao({ nome: "Luiz", sobrenome: "Otávio", idade: 20 });

// Luiz Otávio 20
```

### **Em array**

```js
function funcao([nome, sobrenome, idade]) {
  console.log(nome, sobrenome, idade);
}

funcao(["Luiz", "Otávio", 20]);

// Luiz Otávio 20
```

> ## **Rest operator em parâmetros**

### **Definição**

O parâmetro com _rest operator_ deve ser o último parâmetro da função

### **Exemplo**

```js
function conta(operador, acumulador, ...numeros) {
  console.log(operador, acumulador, numeros);

  for (let numero of numeros) {
    if (operador === "+") acumulador += numero;
    if (operador === "-") acumulador -= numero;
    if (operador === "*") acumulador *= numero;
    if (operador === "/") acumulador /= numero;
  }

  console.log(acumulador);
}

conta("+", 0, 20, 30, 40, 50);
conta("-", 0, 20, 30, 40, 50);
conta("*", 0, 20, 30, 40, 50);
conta("/", 0, 20, 30, 40, 50);

/*
+ 0 [ 20, 30, 40, 50 ]
140

- 0 [ 20, 30, 40, 50 ]
-140

* 0 [ 20, 30, 40, 50 ]
0

/ 0 [ 20, 30, 40, 50 ]
0
*/
```
