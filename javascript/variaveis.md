# Variáveis

> ## IMPORTANTE

* Não é possível declarar 2 (ou +) variáveis com nomes iguais em um mesmo escopo.

* Não é possível reatribuir um valor a uma `const`:

  ```js
  const nome = "João"
  nome = "Otávio" // Erro
  ```

---

> ## Regras de nomenclatura de variáveis

* Não utilizar variáveis com palavras reservadas.

  * `const`, `let`, `if`

* É recomendável declarar variáveis com nomes descritivos.

  * **Ruim**

    ```js
    const a = "JavaScript";
    ```

  * **Bom**

    ```js
    const linguagem = "JavaScript";
    ```

* Não pode começar com números.

  ```js
  const 1nome = "João"; // Erro
  ```

* Sempre começar com letra minúscula.

  * **Ruim**

    ```js
    const Linguagem = "JavaScript";
    ```

  * **Bom**

    ```js
    const linguagem = "JavaScript";
    ```

* Não deve conter espaços e/ou traços.

  * **Ruim**

    ```js
    const nome-Cliente = "João"; // Erro
    const nome Cliente = "João"; // Erro
    ```

  * **Bom**: utilizar o padrão **camelCase**

* Seguir o padrão **camelCase** para nomes de variáveis compostas.

  ```js
  const nomeCliente = "João";
  ```

* JavaScript é uma linguagem *case-sensitive*

  ```js
  const nomeCliente = "Luiz";
  const nomecliente = "Otávio";
  ```

  > `nomeCliente` e `nomecliente` são variáveis diferentes

---

> ## `const`

### **Função**

Armazenar um valor em memória e não é possível alterá-lo durante a execução do programa (são imutáveis).

### **Sintaxe**

Declarar uma variável e inicializa-la com um valor:

```js
const [nome da variável] = [valor];
```

### **Exemplos**

```js
const nome = "João"
```

```js
const numero = 5;

console.log(typeof numero); // number
console.log(typeof(numero)); // number
```

```js
const numero1 = 5;
const numero2 = 10;

console.log(typeof numero1 + numero2); // number10
console.log(typeof(numero1 + numero2)); // number
```

> É obrigatório inicializar uma `const` com um valor.

---

> ## `let`

### **Função**

Armazenar um valor em memória e é possível alterá-lo durante a execução do programa.

### **Sintaxe**

* Declarar uma variável sem inicializa-la:

  ```js
  let [nome da variável];
  ```

  > O valor padrão de uma variável (não inicializada) é `undefined`.

* Declarar uma variável e inicializa-la com algum valor:

  ```js
  let [nome da variável] = [valor];
  ```

### **Exemplos**

```js
let nome;
console.log(nome); // undefined
```

```js
let nome = "João";

console.log(nome, "nasceu em 1984.");
console.log("Em 2000", nome, "conheceu Maria.");
console.log(nome, "casou-se com Maria em 2012.");
console.log("Maria teve 1 filho com", nome, "em 2015.");
console.log("O filho de", nome, "se chama Eduardo.");
```

```js
let nome; // declaração
nome = "João"; // inicialização
console.log(nome); // "João"
```

```js
let nome; // declaração
nome = "João"; // inicialização
console.log(nome); // "João"

let nome; // Erro
```

---

> ## `var`

### **Função**

Tem a mesma função da variável `let`.

### **Sintaxe**

* Declarar uma variável sem utilizar a palavra reservada para essa finalidade:

  ```js
  [nome da variável] = [valor]
  ```

  > Ao ocultar as palavras reservadas `const` ou `let`, o JavaScript automaticamente a atribuí como uma `var`.

* Declarar uma variável sem inicializa-la:

  ```js
  var [nome da variável];
  ```

* Declarar uma variável e inicializa-la:

  ```js
  var [nome da variável] = [valor];
  ```

### **OBS**: diferença entre `let` e `var`

* É possível redeclarar variáveis `var`

  ```js
  var nome = "Luiz";
  var nome = "Otávio";

  console.log(nome); // Otávio
  ```

* Por padrão toda variável no JavaScript (se não for explicitamente declarada como `let` ou `const`), é definido como `var`

  ```js
  nome = "Luiz"; // <=> var nome = "Luiz";

  console.log(nome);
  ```

  > Esse tipo de declaração de variável não é uma boa prática, pois a variável `nome` foi declarada como uma **variável global** (de escopo global) e isso pode afetar outras variáveis no sistema