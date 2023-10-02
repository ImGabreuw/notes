# Configuração do Sequelize

1. Instalar o pacote `sequelize` com NPM:

   ```sh
   $ npm i sequelize
   ```

2. Instalar o pacote `sequelize-cli` com NPM:

   ```sh
   $ npm i sequelize-cli
   ```

3. Configurar as variáveis de ambiente do banco de dados: clicar

   > É recomendável utilizar um arquivo `.env` para armazenar essas informações, juntamente com a biblioteca [`dotenv`](https://www.npmjs.com/package/dotenv).

   ```properties
   # .env

   DATABASE_NAME=escola
   DATABASE_HOST=
   DATABASE_PORT=
   DATABASE_USERNAME=
   DATABASE_PASSWORD=
   ```

4. Configurar o Sequelize por meio do arquivo `.sequelizerc`:

   ```js
   const { resolve } = require("path");

   module.exports = {
     config: resolve(__dirname, "src", "config", "database.js"),
     "modules-path": resolve(__dirname, "src", "models"),
     "migrations-path": resolve(__dirname, "src", "models"),
     "seeders-path": resolve(__dirname, "src", "database", "seeds"),
   };
   ```

   > `migrations-path` e `seeders-path` são criados pelo _Sequelize_

5. Definir o objeto de configuração do banco de dados:

   ```js
   require("dotenv").config();

   module.exports = {
     dialect: "mariadb",
     host: process.env.DATABASE_HOST,
     port: process.env.DATABASE_PORT,
     username: process.env.DATABASE_USERNAME,
     password: process.env.DATABASE_PASSWORD,
     database: process.env.DATABASE_NAME,
     define: {},
     dialectOptions: {
       timezone: "America/Sao_Paulo",
       underscored: true,
       underscoredAll: true,
       createdAt: "created_at",
       updatedAt: "updated_at",
     },
     timezone: "America/Sao_Paulo",
   };
   ```

   - `dialect`: tipo do banco de dados

   - `underscored`: indicar que a nomenclatura dos campos da tabela é composta por **tudo em letra minúscula** e **palavras compostas são separadas por underline** (`_`)

   - `underscoredAll`: aplicar a regra `underscored` em todo mapeamento de atributo objeto-relacional

6. Criar as _migrations_ com `sequelize-cli`:

   ```sh
   $ npm sequelize migration:create --name=[nome da tabela]
   ```

   ```sh
   $ npm sequelize migration:create --name=alunos
   ```

7. Configurar o arquivo de _migration_ (`migrations-path`, definido no arquivo `.sequelizerc`) gerado no comando anterior:

   ```js
   module.exports = {
     up: (queryInterface, Sequelize) =>
       queryInterface.createTable("alunos", {
         id: {
           type: Sequelize.INTEGER,
           allowNull: false,
           autoIncrement: true,
           primaryKey: true,
         },
         nome: {
           type: Sequelize.STRING,
           allowNull: false,
         },
         sobrenome: {
           type: Sequelize.STRING,
           allowNull: false,
         },
         email: {
           type: Sequelize.STRING,
           allowNull: false,
         },
         idade: {
           type: Sequelize.INTEGER,
           allowNull: false,
         },
         peso: {
           type: Sequelize.FLOAT,
           allowNull: false,
         },
         altura: {
           type: Sequelize.FLOAT,
           allowNull: false,
         },
         created_at: {
           type: Sequelize.DATE,
           allowNull: false,
         },
         updated_at: {
           type: Sequelize.DATE,
           allowNull: false,
         },
       }),

     down: (queryInterface) => queryInterface.dropTable("alunos"),
   };
   ```

8. Após a configuração das _migrations_, utilizar o seguinte comando para aplicá-las no banco de dados:

   ```sh
   $ npm sequelize db:migrate
   ```

9. Configurar os _models_:

   Todo _model_ precisar extender a classe `Model` do _Sequelize_.

   É necessário implementar o método estático `init`: configurar as propriedades (tipo, validações, valor padrão) e informar a conexão, ou seja, `sequelize`

   ```js
   import Sequelize, { Model } from "sequelize";

   export default class aluno extends Model {
     static init(sequelize) {
       super.init(
         {
           nome: Sequelize.STRING,
           sobrenome: Sequelize.STRING,
           email: Sequelize.STRING,
           idade: Sequelize.INTEGER,
           peso: Sequelize.FLOAT,
           altura: Sequelize.FLOAT,
         },
         { sequelize }
       );

       return this;
     }
   }
   ```

10. Criar a conexão (sequelize) e executar os _models_:

    ```js
    // index.js

    import Sequelize from "sequelize";
    import databaseConfig from "../config/database";
    import Aluno from "../models/Aluno";

    const models = [Aluno];

    const connection = new Sequelize(databaseConfig);

    models.forEach((model) => model.init(connection));
    ```

    ```js
    // app.js (arquivo de entrada da aplicação)

    import "./src/database";
    ```
