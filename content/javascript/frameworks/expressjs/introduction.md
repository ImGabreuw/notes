# Express.js

> ## **Definição**

Express.js é um framework para criar aplicações web baseado em **Node.js**.

> **Node.js** é um ambiente em tempo de execução JavaScript do lado do servidor

O Express.js foi criado com o **objetivo** de fornecer uma forma mais **fácil de criar aplicações web com o Node.js**.

Ele fornece uma série de recursos e ferramentas que facilitam a criação de aplicações web de forma rápida e fácil, por exemplo:

- **Gerenciamento de rotas**

- **Tratamento de solicitações HTTP**

- **Gerenciamento de sessão**

Além disso, o Express.js é **altamente personalizável** por meio de **plug-ins** e **middlewares** customizados

O Express.js é um dos frameworks mais populares no ambiente web com o Node.js e é amplamente utilizado em muitos projetos da web de produção. Ele é fácil de aprender e usar, e oferece uma grande variedade de recursos e ferramentas para a criação de projetos web de alta qualidade.

> ## **Instalação**

> **Pré-requisitos**: [Node.js](https://nodejs.org/en/)

1. Criar um diretório para armazenar os arquivos do projeto

   ```shell
   $ mkdir [nome projeto]
   $ cd [nome projeto]
   ```

2. Criar o arquivo `package.json` com **npm**

   ```shell
   $ npm init -y
   ```

3. Criar o arquivo (`index.js`) como _entrypoint_ da aplicação

4. Instalar a dependência `express`

   ```shell
   $ npm i express
   ```

5. (Opcional) Caso você esteja usando TypeScript no seu projeto, você pode instalar os tipos para o Express.js

   ```shell
   $ npm i @types/express -D
   ```

> ## **Exemplo: Hello World**

1. Pré-requisito: concluir as [etapas de instalação](#instalação)

2. Configuração do arquivo `package.json`

   ```json
   {
     "name": "hello-world-expressjs",
     "version": "1.0.0",
     "description": "Um simples exemplo de uma aplicação emm JavaScript com Express.js",
     "type": "module",
     "main": "app.js",
     "scripts": {
       "dev": "node app.js"
     },
     "keywords": [],
     "author": "ImGabreuw",
     "license": "ISC",
     "dependencies": {
       "express": "^4.18.2"
     }
   }
   ```

3. Criar o arquivo `app.js` e inserir o seguinte código

   ```js
   import express from "express";

   const app = express();
   const port = 3000;

   app.listen(port, () => {
     console.log(`App running on port ${port}`);
   });

   app.get("/", (request, response) => {
     response.send("Hello world!");
   });
   ```

4. Iniciar a aplicação com o script **dev** definido no `package.json`

   ```shell
   $ npm run dev
   ```

5. Acessar a URL: http://localhost:3000/ e ver o resultado `Hello world!` na tela do navegador