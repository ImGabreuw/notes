# Introdução ao Sequelize

> ## **Definição**

É uma biblioteca para facilitar o gerenciamento de banco de dados SQL. Ele fornece um ORM, migrations, etc...

> ## **Migration**

Criar uma migration (seed):

```shell
$ npx sequelize seed:generate --name [nome seed]
```

```shell
$ npx sequelize seed:generate --name create-users
```

> ## **Padrão de nomenclatura de métodos em Controllers**

- `index` (GET): listagem de recursos

- `store` ou `create` (POST): criar um novo recurso

- `delete` (DELETE): apagar um recurso

- `show` (GET): obter um recurso específico

- `update` (PUT ou PATCH): atualizar um recurso
