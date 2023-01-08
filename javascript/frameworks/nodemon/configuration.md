# Configuração do Nodemon

> ## **Instalação**

1. Instalar o pacote `nodemon` como dependência de desenvolvimento com NPM:

   ```sh
   $ npm i nodemon --save-dev
   ```

2. Criar um arquivo `nodemon.json` no diretório raiz do projeto:

   ```json
   {
     "execMap": {
       "js": "node -r sucrase/register"
     }
   }
   ```
