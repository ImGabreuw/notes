# Função: Objeto de primeira classe

> ## **Definição**

As função são objetos de primeira classe no JavaScript, então é possível **atribuí-las a uma variável**. Dessa modo passam a ser chamadas de _function expression_ (expressão de função).

Esse comportamento possibilita que função tenham como parâmetro outra função, passando como argumento a referência de uma função.

> **OBS**: _function expression_ também pode ser chamado de função anônima, pois geralmente são são nomeadas

> ## **OBS: comportamento do `this` em funções**

### **Definição**

`this` é uma palavra reservada para referenciar atributos e métodos de um objeto.

No JavaScript, o valor de `this` depende do contexto em que é utilizado.

E no casos de funções, que são tratados como objetos no JavaScript, o `this` faz referência ao objeto no qual essa função pertence (foi declarada).

### **Problema**

A palavra `this` não fazer referência ao objeto `Calculadora`, mas sim ao objeto `Document` uma vez que o método `addEventListener` pertence a esse objeto.

```js
function criarCalculadora() {
  return {
    display: document.querySelector(".display"),

    iniciar() {
      this.cliqueBotoes();
    },

    cliqueBotoes() {
      document.addEventListener("click", function (e) {
        const el = e.target;

        console.log(this); // document

        if (el.classList.contains("btn-num")) {
          this.btnParaDisplay(el.innerText);
        }
      });
    },

    btnParaDisplay(valor) {
      this.display.value += valor;
    },
  };
}

const calculadora = criarCalculadora();
calculadora.iniciar();
```

### **Solução**

- Utilizar a função `bind()`: sobrescrever a referência `this` da função para o objeto `Calculadora`

  ```js
  function criarCalculadora() {
    return {
      display: document.querySelector(".display"),

      iniciar() {
        this.cliqueBotoes();
      },

      cliqueBotoes() {
        document.addEventListener(
          "click",
          function (e) {
            const el = e.target;

            console.log(this);

            if (el.classList.contains("btn-num")) {
              this.btnParaDisplay(el.innerText);
            }
          }.bind(this)
        );
      },

      btnParaDisplay(valor) {
        this.display.value += valor;
      },
    };
  }

  const calculadora = criarCalculadora();
  calculadora.iniciar();
  ```

- Utilizar _arrow function_: por ser uma função anônima, ela não pertence a nenhum objeto. Logo a referência `this` permanece ao objeto `Calculadora`

  ```js
  function criarCalculadora() {
    return {
      display: document.querySelector(".display"),

      iniciar() {
        this.cliqueBotoes();
      },

      cliqueBotoes() {
        document.addEventListener("click", (e) => {
          const el = e.target;

          console.log(this);

          if (el.classList.contains("btn-num")) {
            this.btnParaDisplay(el.innerText);
          }
        });
      },

      btnParaDisplay(valor) {
        this.display.value += valor;
      },
    };
  }

  const calculadora = criarCalculadora();
  calculadora.iniciar();
  ```

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
