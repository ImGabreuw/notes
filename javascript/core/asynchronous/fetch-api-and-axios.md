# Fetch API e Axios

> ## **Fetch API**

### **Definição**

O método `fetch()` já abstrai toda verbosidade da AJAX (`XMLHttpRequest`) em uma única chamada de método.

Esse método retorna uma `promise`.

### **Exemplo**

```js
fetch("home.html")
  .then((response) => {
    if (response.status !== 200) {
      throw new Error();
    }

    return response.text();
  })
  .then((html) => console.log(html))
  .catch((error) => console.error(error));
```

> ## **Axios**

### **Definição**

É um _client HTTP_, assim como o _Fetch API_.

Apenas o método `axios()` retorna um `Promise`, diferentemente do _Fetch API_ que todo método retorna uma `promise` gerando um encadeamento de `then()`.

**IMPORTANTE**: antes do script JS que utiliza o Axios, é necessário colocá-lo na página HTML para ser carregado:

```html
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
```

> ## **Axios VS Fetch API**

### **Contexto**

```json
// people.json
[
  {
    "nome": "Miguel",
    "email": "miguel@email.com.br",
    "salario": 27211,
    "estado": "MG",
    "empresa": "Facebook",
    "idade": 34,
    "sexo": "M",
    "cpf": "362.418.524-18"
  },
  {
    "nome": "Sophia",
    "email": "sophia@empresa.com.br",
    "salario": 6971,
    "estado": "DF",
    "empresa": "Plastic Co.",
    "idade": 25,
    "sexo": "F",
    "cpf": "742.316.671-52"
  }
]
```

### **Exemplos**

- Fetch API:

  ```js
  fetch("person.json")
    .then((resposta) => resposta.json())
    .then((json) => carregaElementosNaPagina(json));
  ```

- Axios:

  ```js
  axios("pessoas.json").then((resposta) =>
    carregaElementosNaPagina(resposta.data)
  );
  ```
