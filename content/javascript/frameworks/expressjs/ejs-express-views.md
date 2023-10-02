# EJS

> ## **Definição**

**EJS**: Embedded JavaScript templates

É uma motor de visualização que facilita a criação de páginas HTML com código JavaScript.

> ## **Injetar valores de propriedades**

### **Sintaxe**

- `=` na tag EJS (`<% %>`): não escapar caracteres (mostrar as tags passadas pelo objeto JavaScript)

  ```html
  <%= [nome da propriedade] %>
  ```

- `-` na tag EJS (`<% %>`): escapar caracteres (executar as tags passadas pelo objeto JavaScript)

  ```html
  <%- [nome da propriedade] %>
  ```

### **Exemplo**

- Utilizando `<%= ... %>`

  ```js
  exports.paginaInicial = (req, res) => {
    res.render("index", {
      titulo: "Este será o <span style='color: red'>título</span> da página",
    });

    return;
  };
  ```

  ```html
  <h1><%= titulo %></h1>

  <!-- 
  Na página: Este será o <span style='color: red'>título</span> da página
  -->
  ```

- Utilizando `<%- ... %>`

  ```js
  exports.paginaInicial = (req, res) => {
    res.render("index", {
      titulo: "Este será o <span style='color: red'>título</span> da página",
    });

    return;
  };
  ```

  ```html
  <h1><%= titulo %></h1>

  <!-- 
  Na página: Este será o título da página
                            |
                            |
                      Estará em vermelho
  -->
  ```

> ## **Estrutura condicional**

### **Sintaxe**

```js
<% if([condição]) { %>
    // código quando a condição for verdadeira
<% } else { %>
    // código quando a condição for false
<% } %>
```

### **Exemplo**

```js
<% if(typeof !== "undefined") { %>
    <%= titulo %>
<% } else { %>
    O título não foi enviado.
<% } %>
```

> ## **Estrutura de repetição**

### **Sintaxe**

```js
<% [array].forEach([arrow function]) %>
```

### **Exemplo**

```js
<% numeros.forEach(num => { %>
  <% num %>
<% }); %>
```

> ## **Importar conteúdos de outras páginas**

### **Sintaxe**

```js
<%- include([caminho até a página HTML]) %>
```

### **Exemplo**

```html
<!-- Arquivo: include/head.ejs -->

<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Modelo</title>
  </head>
</html>
```

```html
<% include("include/head) %>

<body>

  <section class="container">
    <h1>
      <% if(typeof !== "undefined") { %>
          <%= titulo %>
      <% } else { %>
          O título não foi enviado.
      <% } %>
    </h1>
  </section>

  <script src="./assets/js/bundle.js"></script>
</body>

</html>
```
