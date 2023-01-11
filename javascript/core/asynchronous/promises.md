# `Promises`

> ## **Os 3 estados de um `promise`**

- `pending`: representação de uma promessa que ainda está sendo processada (pendente)

- `fullfield`: representação de uma promessa processada (resolvida)

- `rejected`: representação de um promessa que teve um error ao longo do processamento (rejeitada)

> ## **Tratamento de `promises` rejeitadas**

Utilizar `try-catch`:

```js
function randomTime(min, max) {
  min *= 1000;
  max *= 1000;

  return Math.floor(Math.random() * (max - min) + min);
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
  try {
    const function1 = await wait("Função 1");
    console.log(function1);

    const function2 = await wait("Função 2");
    console.log(function2);

    const function3 = await wait("Função 3");
    console.log(function3);
  } catch (error) {
    console.log(error);
  }
}

execute();
```
