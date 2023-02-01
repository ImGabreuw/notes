# Helmet

> ## **Definição**

É uma biblioteca do Express responsável por definir uma variedade de cabeçalhos HTTP.

> ## **Configuração**

1. Instalar o pacote `helmet` com NPM:

   ```sh
   $ npm i helmet
   ```

2. Importar `helmet` no arquivo de entrada da aplicação:

   ```js
   const helmet = require("helmet");
   ```

3. Adicionar o `helmet` no contexto do _Express_:

   ```js
   app.use(helmet());
   ```
