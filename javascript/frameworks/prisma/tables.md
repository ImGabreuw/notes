# Tabelas no Prisma

> ## **Configuração**

1. [Requisitos](wiki/javascript/frameworks/prisma/introduction.md#configuração)

2. Criação do banco de dados SQLite:

   ```shell
   $ npx prisma init --datasource-provider SQLite
   ```

   > Outros banco de dados suportados pelo Prisma: [clique aqui](https://www.prisma.io/docs/reference/database-reference/supported-databases)

3. Criação de uma [_schema_](#schema)

4. Criar uma [_migration_](#migrations) para criar a tabela

   ```shell
   $ npx prisma migrate dev
   ```

5. Abrir uma interface (**Prisma Studio**) para visualizar o banco de dados

   ```shell
   $ npx prisma studio
   ```

> ## **_Migrations_**

### **Definição**

Versionamento dos scripts SQL no bancos de dados.
