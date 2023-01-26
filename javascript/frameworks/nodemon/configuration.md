# Configuração do Nodemon

1. Instalar o pacote `nodemon` como dependência de desenvolvimento com NPM:

   ```sh
   $ npm i nodemon --save-dev
   ```

2. Instalar o **nodemon** como dependência de desenvolvimento:

   ```sh
   $ npm i nodemon --save-dev
   ```

3. Executar o comando para monitor os arquivos do projeto:

   ```sh
   $ npx nodemon [arquivo de entrada da aplicação]
   ```

   ```sh
   $ npx nodemon server.js
   ```

4. (Opcional) Criar um script (`package.json`) para executar o comando da etapa anterior:

   ```json
   {
     "scripts": {
       "start": "nodemon [arquivo de entrada da aplicação]"
       // ...
     }
   }
   ```

   ```json
   {
     "scripts": {
       "start": "nodemon server.js"
       // ...
     }
   }
   ```

5. (Opcional) Criar um arquivo `nodemon.json` no diretório raiz do projeto:

   ```json
   {
     "execMap": {
       "js": "node -r sucrase/register"
     }
   }
   ```
