# Tag `<form>`

> ## **Definição**

A tag `<form>` tem a função de enviar informações do usuário (*front-end*) para o servidor (*back-end*).

É possível utilizar as **pseudo-classes** do CSS `:valid` e `:invalid` para aplicar estilo à tag `<form>`.

> ## **Atributos**

* `action`: URL para onde as informações do formulário serão enviados
 
* `autocomplete`: navegador completará alguns campos do formulário (email, senha, etc) automaticamente

  * `autocomplete="off"`: navegador não irá auxiliar o usuário no preenchimento do formulário

  * `autocomplete="on"`: comportamento padrão

* `method`: indicação do mét  odo HTTP na hora do envio dos dados

  * `method="POST"`: execução do [método POST](https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.5)

  * `method="GET"`: execução do [método GET](https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.3)

* `novalidate`: no envio, o navegador não irá fazer uma validação prévia (varia de navegador para navegador) dos dados do formulário

* `target`: meio para mostrar a resposta do envio

  * `target="_self"`: página será recarregada

  * `target="_blank"`: abrir em um novo guia

> ## **Exemplo**

### `action="GET"`

* Código:
  
  ```html
  <form action="#" method="GET">
    <label for="GET-name">Nome:</label>
    <input id="GET-name" type="text" name="name">
    <button type="submit">Enviar</button>
  </form>
  ```

* Demonstração:

  <form action="#" method="GET">
    <label for="GET-name">Nome:</label>
    <input id="GET-name" type="text" name="name">
    <button type="submit">Enviar</button>
  </form>
  
### `action="POST"`

* Código:
  
  ```html
  <form action="#" method="POST">
    <label for="POST-name">Nome:</label>
    <input id="POST-name" type="text" name="name">
    <button type="submit">Salvar</button>
  </form>
  ```

* Demonstração:

  <form action="#" method="POST">
    <label for="POST-name">Nome:</label>
    <input id="POST-name" type="text" name="name">
    <button type="submit">Salvar</button>
  </form>
  
### `<fieldset>` e `<legend>`

* Código:
  
  ```html
  <form action="#" method="POST">
    <fieldset>
      <legend>Título</legend>
      <input type="radio" name="radio" id="radio"> <label for="radio">Clique aqui</label>
    </fieldset>
  </form>
  ```

* Demonstração:
 
  <form action="#" method="POST">
    <fieldset>
      <legend>Título</legend>
      <input type="radio" name="radio" id="radio"> <label for="radio">Clique aqui</label>
    </fieldset>
  </form>