# _Hoisting Function_

> ## **Definição**

_Hoisting Function_ é a elevação de uma função para um escopo maior.

JavaScript eleva todas as declarações de funções (apenas aquelas declaras com `function`) para o topo do arquivo na hora de execução do mesmo.

> ## **Exemplo**

- **Código escrito**

  ```js
  falaOi();

  // Código ...

  function falaOi() {
    console.log("Oi");
  }

  // Código ...
  ```

- **Código em execução (_function hoisting_)**

  ```js
  function falaOi() {
    console.log("Oi");
  }

  // Código ...

  falaOi();

  // Código ...
  ```
