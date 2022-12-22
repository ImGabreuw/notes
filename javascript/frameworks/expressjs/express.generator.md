# Gerador de aplicativos do Express

> ## **Definição**

O **Express Generator** é uma ferramenta para **geração de uma estrutura base**, configurado e pronto para uso, para aplicações web com o Node.js e o Express.js.

> ## **Instalação**

1. Instalação do Express Generator globalmente na máquina

   ```shell
   $ npm i -g express-generator
   ```

2. Criar a aplicação com Express Generator

   ```shell
   $ express [nome projeto]
   ```

> ## **Comando: express**

### **Sintaxe**

```shell
$ express [opções] [diretório]
```

### **Opções**

- `-h` / `--help`: imprime as informações de uso do comando `express`

- `--version`: imprime a versão instalada na máquina

- `-e` / `--ejs`: adicionar suporte ao **EJS Engine**

- `--hbs`: adicionar suporte ao **Handlebars engine**

- `--pug`: adicionar suporte ao **Pug engine**

- `-H` / `--hogan`: adicionar suporte ao **Hogan.js**

- `--no-view`: desabilitar o **View engine**

- `-v` / `--view &lt;engine&gt`: adicionar `view &lt;engine&gt` (suporta `ejs|hbs|hjs|jade|pug|twig|vash`)

  > Valor padrão: **Jade**

- `-c` / `--css &lt;engine&gt`: adicionar `stylesheet &lt;engine&gt` (suporta `less|stylus|compass|sass`)

  > Valor padrão: **plain css**

- `--git`: adicionar arquivo **.gitignore**

- `-f` / `--force`: forçar a geração em diretório que não estão vazios

> ## **Exemplo de uso**

1. Criar o projeto `sample-express-generator` com a opção `--git`

   ```shell
   $ express --git sample-express-generator
   ```

   ```shell
   create : sample-express-generator/
   create : sample-express-generator/public/
   create : sample-express-generator/public/javascripts/
   create : sample-express-generator/public/images/
   create : sample-express-generator/public/stylesheets/
   create : sample-express-generator/public/stylesheets/style.css
   create : sample-express-generator/routes/
   create : sample-express-generator/routes/index.js
   create : sample-express-generator/routes/users.js
   create : sample-express-generator/views/
   create : sample-express-generator/views/error.jade
   create : sample-express-generator/views/index.jade
   create : sample-express-generator/views/layout.jade
   create : sample-express-generator/.gitignore
   create : sample-express-generator/app.js
   create : sample-express-generator/package.json
   create : sample-express-generator/bin/
   create : sample-express-generator/bin/www

   change directory:
     $ cd sample-express-generator

   install dependencies:
     $ npm install

   run the app:
     $ DEBUG=sample-express-generator:* npm start
   ```

2. Instalar as dependências

   ```shell
   $ cd sample-express-generator
   $ npm i
   ```

3. Executar a aplicação

   1. Ambiente MacOS ou Linux

      ```shell
      $ DEBUG=[nome projeto]:* npm start
      ```

      ```shell
      $ DEBUG=[sample-express-generator]:* npm start
      ```

   2. Ambiente Windows

      ```shell
      $ set DEBUG=[nome projeto]:* & npm start
      ```

      ```shell
      $ set DEBUG=[sample-express-generator]:* & npm start
      ```

4. Acessar a URL: http://localhost:3000/ e ver o resultado no navegador

5. **OBS**: o Express Generator gera a seguinte estrutura de diretórios

   ```shell
   .
   ├── app.js
   ├── bin
   │   └── www
   ├── package.json
   ├── package-lock.json
   ├── public
   │   ├── images
   │   ├── javascripts
   │   └── stylesheets
   │       └── style.css
   ├── routes
   │   ├── index.js
   │   └── users.js
   └── views
       ├── error.jade
       ├── index.jade
       └── layout.jade

   7 directories, 10 files
   ```

   > Comando utilizado: `$ tree -I node_modules .`
