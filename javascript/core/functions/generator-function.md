# Função geradora (_Generator Function_)

> ## **Definição**

São funções que possuem a capacidade de "pausar" um código em um determinado local (_lazy evaluation_).

> **_Lazy evaluation_ (avaliação tardia/preguiçosa)**: mecanismo de entrega de valores sobre demanda (pode melhorar a performance da aplicação)

> ## **Sintaxe**

```js
function* nomeDaFuncao() {
  // Código ...
  yield [valor 1];

  // Código ...
  yield [valor 2];

  // Código ...
  yield [valor 3];
}
```

- **`yield`**: é o "`return`" em funções geradoras, porém cada `yield` representa o valor que será retornado para cada invocação da função.

- **`next()`**: função para obter o valor do próximo `yield` da função geradora.

> ## **Exemplos**

### **Função gerador básica**

```js
function* geradora1() {
  yield "Valor 1";

  yield "Valor 2";

  yield "Valor 3";
}

const g1 = geradora1();

console.log(g1); // Object [Generator] {}

console.log(g1.next()); // { value: 'Valor 1', done: false }

console.log(g1.next().value); // Valor 2
console.log(g1.next().value); // Valor 3
```

```js
function* geradora1() {
  yield "Valor 1";

  yield "Valor 2";

  yield "Valor 3";
}

const g1 = geradora1();

for (let valor of g1) {
  console.log(valor);
}

/*
Valor 1
Valor 2
Valor 3
*/
```

### **Gerador infinito**

```js
function* geradoraInfinita() {
  let i = 0;

  while (true) {
    yield i;
    i++;
  }
}

const geradora = geradoraInfinita();

console.log(geradora.next().value);
console.log(geradora.next().value);
console.log(geradora.next().value);
console.log(geradora.next().value);

/*
0
1
2
3
*/
```

### **Gerador para delegar tarefas para outras funções geradoras**

```js
function* geradoraDelegar() {
  yield 0;
  yield 1;
  yield 2;
}

function* geradora1() {
  yield* geradoraDelegar();
  yield 3;
  yield 4;
  yield 5;
}

const g1 = geradora1();

for (let valor of g1) {
  console.log(valor);
}

/*
0
1
2
3
4
5
*/
```

### **`yield` retornando uma função**

```js
function* geradora() {
  yield function () {
    console.log("Vim do yield 1");
  };

  yield function () {
    console.log("Vim do yield 2");
  };
}

const g = geradora();

const func1 = g.next().value;
const func2 = g.next().value;

func1();
func2();

/*
Vim do yield 1
Vim do yield 2
*/
```

### **`return` em funções geradoras**

```js
function* geradora() {
  yield function () {
    console.log("Vim do yield 1");
  };

  return function () {
    console.log("Vim do return");
  };

  // Código inalcançável:
  // yield function() {
  //   console.log("Vim do yield 2");
  // }
}

const g = geradora();

const func1 = g.next().value;
const func2 = g.next().value;

func1();
func2();

/*
Vim do yield 1
Vim do return
*/
```
