# Configuração do PM2

1. Instalar o pacote `pm2` com NPM:

   ```shell
   $ npm install pm2 -g
   ```

2. Rodar a aplicação em qualquer linguagem (Node.js, Python, Ruby, binários em `$PATH`):

   ```shell
   $ pm2 start [entrypoint]
   ```

   ```shell
   $ pm2 start app.js
   ```
