# Função: Objeto de primeira classe

> ## **Definição**

As função são objetos de primeira classe no JavaScript, então é possível **atribuí-las a uma variável**. Dessa modo passam a ser chamadas de _function expression_ (expressão de função).

Esse comportamento possibilita que função tenham como parâmetro outra função, passando como argumento a referência de uma função.

> **OBS**: _function expression_ também pode ser chamado de função anônima, pois geralmente são são nomeadas

> ## **Exemplo**

- **Function expression**

  ```js
  const falaOi = function () {
    console.log("Oi");
  };

  falaOi();
  ```

- **Função como parâmetro**

  ```js
  const falaOi = function () {
    console.log("Oi");
  };

  function executarFuncao(funcao) {
    funcao();
  }

  executarFuncao(falaOi);
  ```

- **Function expression nomeadas**

  ```js
  const falaOi = function funcaoFalaOi() {
    console.log("Oi");
  };

  falaOi();
  ```
