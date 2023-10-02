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

> ## Tipo de ações no banco de dados

### **CASCADE**

- `ON DELETE CASCADE`: se o registro pai for deletado, o filho também será

- `ON UPDATE CASCADE`: se a _primary key_ do registro pai for alterada, isso será refletido no registro filho

### **RESTRICT**

Prevenir qualquer tentativa de apagar ou atualizar o registro pai (é lançado um erro)

### **NO ACTION**

Não é executado nenhuma ação (apenas ignorado), ou seja, não é possível apagar ou atualizar a _primary key_ do registro pai, além de prevenir a alteração da _foreign key_ do registro filho, caso a primary key do registro pai ainda não tiver sido atualizado.

### **SET NULL**

Apagar ou atualizar a _primary key_ do registro pai, a _foreign key_ do registro filho é configurado para `NULL`.
