# `Promises`

> ## **Definição**

É a forma mais moderna de se trabalhar com processos assíncronos no JavaScript.

Nas versões mais antigas era utilizado as _callback functions_, porém isso gerava um problema chamado de **"callback hell"**, ou seja, o encadeamento de várias _callback functions_.

> ## **Sintaxe**

```js
new Promise(
  ([função "resolve"], [função "reject"])
)
```

> ## **Exemplo**

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
    }

    setTimeout(() => {
      resolve(message);
    }, randomTime(1, 3));
  });
}

wait("Frase 1")
  .then((response) => {
    console.log(response);
    return wait("Frase 2");
  })
  .then((response) => {
    console.log(response);
    return wait(12312312);
  })
  .then((response) => {
    console.log(response);
  })
  .catch((error) => {
    console.log(error);
  });
```

> ## **Os 3 estados de um `promise`**

- `pending`: representação de uma promessa que ainda está sendo processada (pendente)

- `fullfield`: representação de uma promessa processada (resolvida)

- `rejected`: representação de um promessa que teve um error ao longo do processamento (rejeitada)

> ## **Principais métodos**

### **Método `then()`**

- **Definição**: o método `then()` só é executado quando uma `promise` for resolvido (a função `resolve()` for executada)

- **Exemplo**:

  ```js
  function randomTime(min, max) {
    min *= 1000;
    max *= 1000;

    return Math.floor(Math.random() * (max - min) + min);
  }

  function wait(message) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(message);
      }, randomTime(1, 3));
    });
  }

  wait("Frase 1").then((response) => {
    console.log(response);
  });

  // Frase 1
  ```

- **OBS**: é possível retornar uma nova `promise` no no corpo da função `then()` e assim criar um encadeamento de `then()`:

  ```js
  function randomTime(min, max) {
    min *= 1000;
    max *= 1000;

    return Math.floor(Math.random() * (max - min) + min);
  }

  function wait(message) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(message);
      }, randomTime(1, 3));
    });
  }

  wait("Frase 1")
    .then((response) => {
      console.log(response);
      return wait("Frase 2");
    })
    .then((response) => {
      console.log(response);
      return wait("Frase 3");
    })
    .then((response) => {
      console.log(response);
    });

  // Frase 1
  // Frase 2
  // Frase 3
  ```

### **Método `catch()`**

- **Definição**: o método `catch()` só é executado quando uma promessa (`Promise`) for rejeitada (a função `reject()` for executada na `Promise`)

- **Exemplo**:

  ```js
  function randomTime(min, max) {
    min *= 1000;
    max *= 1000;

    return Math.floor(Math.random() * (max - min) + min);
  }

  function wait(message) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(message);
      }, randomTime(1, 3));
    });
  }

  wait("Frase 1")
    .then((response) => {
      console.log(response);
      return wait("Frase 2");
    })
    .then((response) => {
      console.log(response);
      return wait("Frase 3");
    })
    .then((response) => {
      throw new Error();
    })
    .catch((err) => console.error(err));

  // Frase 1
  // Frase 2
  // Error
  ```

### **Método `Promise.all()`**

- **Definição**: esse método executa um `array` de `Promises` e retorna uma `Promise` resolvida, caso todas as promessas forem resolvidas ou retorna apenas a `Promise` rejeitada (e não executará as outras `Promises`), caso alguma promessa seja rejeitada

- **Exemplos**

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

  const promises = [
    "Primeiro valor",
    wait("Promise 1"),
    wait("Promise 2"),
    wait("Promise 3"),
    "Segundo valor",
  ];

  Promise.all(promises)
    .then(function (value) {
      console.log(value);
    })
    .catch(function (error) {
      console.log(error);
    });

  /*
  [
    'Primeiro valor',
    'Segundo valor'  
    'Promise 1',     
    'Promise 2',     
    'Promise 3',     
  ]
  */
  ```

### **Método `Promise.race()`**

- **Definição**: esse método retorna a primeira `Promise` resolvida em um `array` de `Promises`

- **Exemplos**

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

  const promises = [
    "Primeiro valor",
    wait("Promise 1"),
    wait("Promise 2"),
    wait("Promise 3"),
  ];

  Promise.race(promises)
    .then(function (value) {
      console.log(value);
    })
    .catch(function (error) {
      console.log(error);
    });

  // "Primeiro valor"
  ```

  > No exemplo acima, `"Primeiro valor"` será retornado todas as vezes, uma vez que ela já é um `Promise` resolvida ou rejeitada.

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

  const promises = [wait("Promise 1"), wait("Promise 2"), wait("Promise 3")];

  Promise.race(promises)
    .then(function (value) {
      console.log(value);
    })
    .catch(function (error) {
      console.log(error);
    });

  // Promise 2
  ```

### **Método `Promise.resolve()`**

- **Definição**: esse método retorna uma `Promise` já resolvida.

- **Exemplos**

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

  function downloadPage() {
    const isCache = true;

    if (isCache) {
      return Promise.resolve("Página em cache");
    }

    return wait("Página baixada");
  }

  downloadPage()
    .then((pageData) => {
      console.log(pageData);
    })
    .catch((error) => console.log(error));

  // Página em cache
  ```

### **Método `Promise.reject()`**

- **Definição**: esse método retorna uma `Promise` já rejeitada.

- **Exemplo**

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

  function downloadPage() {
    const isCache = true;

    if (isCache) {
      return Promise.reject("Página em cache");
    }

    return wait("Página baixada");
  }

  downloadPage()
    .then((pageData) => {
      console.log(pageData);
    })
    .catch((error) => console.log("ERRO:", error));

  // ERRO: Página em cache
  ```

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
