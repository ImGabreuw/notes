# Tipo de dado `string`

> ## Template Strings (interpolação de Strings)

### **Função**

- Concatenar `string`s de forma mas elegante.

- Utilizar **aspas simples** e/ou **duplas dentro** dentro da mesma `string`:

  ```js
  console.log(`'Luiz' "Otávio"`); // 'Luiz' "Otávio"
  ```

> ## **Caractere escape (`\`)**

## **Função**

Ignorar o caractere posposto à barra invertida (`\`).

### **Combinações**

- `\'`: citação única

- `\"`: citação dupla

- `\\`: barra invertida

- `\n`: nova linha

- `\b`: backspace (espaço)

- `\t`: TAB (espaçamento)

- `\f`: feed de formulário

- `\v`: guia vertical (o IE < 9 trata `\v` como `v` em vez de uma guia vertical (`\x0B`). Se a compatibilidade entre navegadores for uma preocupação, use `\x0B` em vez de `\v`.)

- `\0`: caractere nulo (U + 0000 NULL) (somente se o próximo caractere não for um dígito decimal; caso contrário, será uma sequência de **escape octal**)

### **Exemplo**

```js
let texto = 'um "texto"';

console.log(texto); // um "texto"
```

> `\"` é muito utilizado para escrever um JSON em uma String

> ## **Índices em uma `string`**

### **Definição**

A String é um Array de `Char` (caracteres), portanto cada caractere em uma `string` têm um índice.

A contagem do índice sempre começa em `0`.

**OBS**: o backspace (espaço) é considerado um caractere

### **Exemplo**

```js
//           01234567;
let texto = "um texto";

console.log(texto); // um texto
console.log(texto[4]); // t
console.log(texto[50]); // undefined
console.log(texto[-1]); // undefined
console.log(texto.charAt(6)); // x

console.log(texto.concat(" simples")); // um "texto" simples
console.log(texto + " simples"); // um "texto" simples
console.log(`${texto} simples`); // um "texto" simples
```

> O método `concat()` tem a mesma função do operador `+`

```js
let texto = "um texto";

console.log(texto.indexOf("um")); // 0
console.log(texto.indexOf("Um")); // -1
console.log(texto.indexOf("t", 5)); // 6
console.log(texto.indexOf("u", 3)); // -1
```

> `-1` representa que a `string` passada como argumento não existe na `string` armazenada na variável

```js
let texto = "um texto";

console.log(texto.lastIndexOf("o")); // 7
console.log(texto.lastIndexOf("o", 3)); // -1
```
