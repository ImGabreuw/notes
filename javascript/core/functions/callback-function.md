# Funções de callback

> ## **Definição**

São funções executadas após outra função ter sua execução finalizada.

> ## **Exemplo**

```js
function rand(min = 1000, max = 3000) {
  const num = Math.random() * (max - min) + min;

  return Math.floor(num);
}

function f1(callback) {
  setTimeout(function () {
    console.log("f1");

    if (callback) callback();
  }, rand());
}

function f2(callback) {
  setTimeout(function () {
    console.log("f2");

    if (callback) callback();
  }, rand());
}

function f3(callback) {
  setTimeout(function () {
    console.log("f3");

    if (callback) callback();
  }, rand());
}

f1(f1CallBack);

function f1CallBack() {
  f2(f2CallBack);
}

function f2CallBack() {
  f3(f3CallBack);
}

function f3CallBack() {
  console.log("Olá mundo!");
}
```

> ## **Callback hell**

### **Definição**

Encadeamento excessivo de funções callback.

### **Exemplo**

```js
function rand(min = 1000, max = 3000) {
  const num = Math.random() * (max - min) + min;

  return Math.floor(num);
}

function f1(callback) {
  setTimeout(function () {
    console.log("f1");

    if (callback) callback();
  }, rand());
}

function f2(callback) {
  setTimeout(function () {
    console.log("f2");

    if (callback) callback();
  }, rand());
}

function f3(callback) {
  setTimeout(function () {
    console.log("f3");

    if (callback) callback();
  }, rand());
}

f1(function () {
  f2(function () {
    f3(function () {
      console.log("Olá mundo!");
    });
  });
});
```
