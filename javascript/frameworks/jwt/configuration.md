# Configuração do JWT

1. Instalar o pacote `jsonwebtoken` com NPM:

   ```shell
   $ npm i jsonwebtoken
   ```

2. (Recomendação) Definir as seguintes variáveis de ambiente no arquivo `.env`:

   ```properties
   TOKEN_SECRET=...
   TOKEN_EXPIRATION=...
   ```

3. Importar o `jsonwebtoken` no arquivo que será utilizado esse pacote:

   ```js
   import jwt from "jsonwebtoken";
   ```
