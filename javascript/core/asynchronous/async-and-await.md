# `Async` e `Await`

> ## **`async`**

### **Definição**

A palavra reservada `async` serve para indicar que uma função é assíncrona.

### **Sintaxe**

```js
async function [nome da função](...) {
  // ...
}
```

### **Exemplo**

```js
async function execute() {
  // ...
}
```

> ## **`await`**

### **Definição**

A palavra reservada `await` serve apenas para funções assíncronas (com `async`) e obterá o retorno da função após a sua conclusão.

### **Exemplo**

```js
function randomTime(min, max) {
  const minInSeconds = min * 1000;
  const maxInSeconds = max * 1000;

  return Math.floor(
    Math.random() * (maxInSeconds - minInSeconds) + minInSeconds
  );
}

function wait(message) {
  return new Promise((resolve, reject) => {
    if (typeof message !== "string") {
      reject("Valor inválido");
      return;
    }

    setTimeout(() => {
      resolve(message);
    }, randomTime(1, 3));
  });
}

async function execute() {
  const function1 = await wait("Função 1");
  console.log(function1);

  const function2 = await wait("Função 2");
  console.log(function2);

  const function3 = await wait("Função 3");
  console.log(function3);
}

execute();

/* 
Fase 2
Fase 1
Fase 3
*/
```
