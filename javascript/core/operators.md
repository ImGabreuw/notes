# Operadores

> ## **Operadores aritméticos**

| Operador |              Função               |        Exemplo        |
| :------: | :-------------------------------: | :-------------------: |
|   `+`    | adição ou concatenação de Strings | `console.log(5 + 5)`  |
|   `-`    |             subtração             | `console.log(5 - 5)`  |
|   `*`    |           multiplicação           | `console.log(5 * 5)`  |
|   `/`    |              divisão              | `console.log(5 / 5)`  |
|   `**`   |            potenciação            | `console.log(5 ** 5)` |
|   `%`    |         resto da divisão          | `console.log(5 % 5)`  |

> **OBS**: a precedência dos operadores é igual a da matemática, ou seja, `()` > `**` > `*`, `/` ou `%` > `+` ou `-` (maior importância -> menor importância)

> ## **Operador de atribuição**

| Operador |                             Função                              |      Exemplo       |
| :------: | :-------------------------------------------------------------: | :----------------: |
|   `=`    |                atribuir um valor a uma variável                 | `const numero = 5` |
|   `+=`   |        somar e atribuir o resultado da soma na variável         |  `contador += 2`   |
|   `-=`   |    subtrair e atribuir o resultado da subtração na variável     |  `contador -= 2`   |
|   `*=`   | multiplicar e atribuir o resultado da multiplicação na variável |  `contador *= 2`   |
|   `/=`   |      dividir e atribuir o resultado da divisão na variável      |  `contador /= 2`   |
|  `**=`   |    elevar e atribuir o resultado da potenciação na variável     |  `contador **= 2`  |

> ## **Incremento**

### **Pré incremento**

- **Definição**: O valor é incrementado (em 1) antes da utilização do mesmo

- **Exemplo**

  ```js
  let contador = 1;
  console.log(++contador); // 2
  console.log(contador); // 2
  ```

### **Pós incremento**

- **Definição**: O valor é incrementado (em 1) depois da utilização do mesmo

- **Exemplo**

  ```js
  let contador = 1;
  console.log(contador++); // 1
  console.log(contador); // 2
  ```

> ## **Decremento**

### **Pré decremento**

- **Definição**: O valor é decrementado (em 1) antes da utilização do mesmo

- **Exemplo**

  ```js
  let contador = 2;
  console.log(--contador); // 1
  console.log(contador); // 1
  ```

### **Pós decremento**

- **Definição**: O valor é decrementado (em 1) depois da utilização do mesmo

- **Exemplo**

  ```js
  let contador = 2;
  console.log(contador--); // 2
  console.log(contador); // 1
  ```

> ## **Atenção**

### **Cuidado com os tipos de dados**

- JavaScript faz a conversão de uma `string` para `number` (caso contenha um número na `string`, senão será lançado o erro `NaN`), mas isso pode gerar efeitos não desejados:

  ```js
  const num1 = 10;
  const num2 = "5";
  console.log(num1 * num2); // 50
  ```

  ```js
  const num1 = 10;
  const num2 = "5";
  console.log(num1 + num2); // 105
  ```

  ```js
  const num1 = 10;
  const num2 = "Luiz";
  console.log(num1 + num2); // NaN (Not a Number)
  ```

- Converter uma `string` para `number`

  ```js
  const num1 = 10;
  const num2 = parseInt("5");
  console.log(num1 + num2); // 15
  ```

  ```js
  const num1 = 10;
  const num2 = parseInt("5.25");
  console.log(num2); // 5
  console.log(num1 + num2); // 15
  ```

  ```js
  const num1 = 10;
  const num2 = parseFloat("5.25");
  console.log(num2); // 5.25
  console.log(num1 + num2); // 15.25
  ```

  ```js
  const num1 = 10;
  const num2 = Number("5");
  console.log(num2); // 5
  console.log(num1 + num2); // 15
  ```

  ```js
  const num1 = 10;
  const num2 = Number("5.25");
  console.log(num2); // 5.25
  console.log(num1 + num2); // 15.25
  ```
