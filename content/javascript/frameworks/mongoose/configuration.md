# Configuração

1. Instalar o pacote do `mongoose` com NPM:

   ```sh
   $ npm i mongoose
   ```

2. Importar o pacote do `mongoose` na aplicação:

   ```js
   const mongoose = require("mongoose");
   ```

3. Realizar uma conexão com o MongoDB:

   ```js
   mongoose.connect(process.env.CONNECTION_STRING);
   ```

   > **OBS**: `process.env.CONNECTION_STRING` é a string de conexão do banco de dados MongoDB armazenada no arquivo `.env`
