# Objeto: `Router`

> ## **Definição**

É uma classe do _express_ para configurar as rotas da aplicação.

> ## **Configuração**

1. Criar o arquivo `routes.js`

2. Importar o módulo _express_:

   ```js
   // routes.js
   const express = require("express");
   ```

3. Criar um objeto _Router_:

   ```js
   // routes.js
   const route = express.Router();
   ```

4. Importar os _controllers_ e registrar as rotas deles:

   ```js
   const userController = require("./controllers/userController");

   route.get("/users", userController.findAll);
   route.post("/users", userController.save);

   // outras rotas ...
   ```

5. Exportas as rotas para que outros módulos possam usá-las:

   ```js
   module.exports = route;
   ```

6. Adicionar as rotas no contexto do _Express_ (no arquivo de entrada da aplicação: `server.js`):

   ```js
   // server.js
   const routes = require("./routes");

   app.use(routes);
   ```
