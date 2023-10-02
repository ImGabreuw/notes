# Arquivos estáticos

> ## **Definição**

São arquivos que **não mudam de estado durante a execução** da aplicação.

Geralmente esses tipo de arquivos são armazenados no diretório `public/`.

Os arquivos estáticos podem ser acessados diretamente pela URL (utilizando o caminho relativo do arquivo e desconsiderar o diretório `public/`):

- Arquivo `style.css` (caminho relativo: `./public/assets/css/style.css`):

  ```css
  body {
    background: red;
  }
  ```

- Requisição:

  ```http
  GET http://localhost:3000/assets/css/style.css
  ```

- Resposta:

  ```css
  body {
    background: red;
  }
  ```

> ## **Exemplos**

- `bundle.js` (arquivo gerado pelo Webpack)

- Arquivos `.css`

- Imagens

- Logo
