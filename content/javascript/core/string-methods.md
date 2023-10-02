# Métodos de `string`

> ## **Busca de caracteres com Regex (expressão regular)**

### **Método: `match()`**

- **Função**: retornar todos os caracteres que se encaixam na expressão regular passada como argumento no método `match()`

- **Exemplo**

  ```js
  let texto = "Um texto";

  console.log(texto.match(/[a-z]/g)); // [ 'm', 't', 'e', 'x', 't', 'o' ]
  ```

  > A expressão regular `/[a-z]/g` serve para buscar todos os caracteres em minúsculo

### **Método: `search()`**

- **Função**: retornar a posição do primeiro caractere que se encaixa na expressão regular passada como argumento no método `search()`

- **Exemplo**

  ```js
  let texto = "Um texto";

  console.log(texto.search(/[a-z]/)); // 1
  ```

### **Método: `replace()`**

- **Função**: substituir uma `string` ou caractere por outra `string` ou caractere

  > **OBS**: esse método aceita expressão regular ou `string`

- **Exemplo**

  ```js
  let texto = "Um texto";

  console.log(texto.replace("Um", "Outro")); // Outro texto
  console.log(texto.replace(/Um/, "Outro")); // Outro texto
  ```

  ```js
  let texto = "O rato roeu a roupa do rei de roma.";

  console.log(texto.replace(/r/, "#")); // O #ato roeu a roupa do rei de roma.
  console.log(texto.replace(/r/g, "#")); // O #ato #oeu a #oupa do #ei de #oma.
  ```

> ## **Método: `split()`**

### **Função**

Separar uma `string` em um `array` a partir de um _delimitador_ (argumento do método).

### **Exemplo**

```js
const name = "João da Silva";
const names = name.split(" ");

console.log(names);
// [ 'joão', 'da', 'Silva' ]
```

> No código acima, o delimitador passado no método é o **espaço**.

> ## **Método: `length()`**

### **Função**

Retornar o tamanho da `string` (número de caracteres de uma `string`).

### **Exemplo**

```js
let texto = "O rato roeu a roupa do rei de roma.";

console.log(texto.length); // 35
```

> ## **slice**

### **Função**

Retornar uma trecho de uma `string`.

O método `substring()` tem a mesma função do `slice()`, porém aquele método não aceita valores negativos.

### **Exemplo**

```js
//                    1111111
//           0123456789012345
let texto = "Um texto simples";

console.log(texto.slice(3, 7)); // text
console.log(texto.slice(3, 8)); // texto
```

> **OBS**: o índice passado no parâmetro `end`, não pertence ao intervalo da `string` a ser cortado

```js
//                    1111111
//           0123456789012345
let texto = "Um texto simples";

console.log(texto.slice(-7)); // simples
console.log(texto.slice(texto.length - 7)); // simples
```

```js
//                    11111111
//           01234567890123456
let texto = "Um texto simples.";

console.log(texto.slice(-8, -1)); // simples
console.log(texto.substring(texto.length - 8, texto.length - 1)); // simples
```
