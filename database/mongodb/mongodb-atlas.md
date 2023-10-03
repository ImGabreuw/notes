# MongoDB Atlas

> ## **Configuração**

### **Criação do _cluster_**

1. Acessar: https://www.mongodb.com/atlas/database

2. Clicar em `Try Free` e realizar o cadastro na plataforma

3. Selecionar a opção com plano gratuito e então clicar em `Create a cluster`

4. Selecionar o _Cloud Provider_ (sugestão: `AWS`)

5. Selecionar a região do cluster (sugestão: opção recomendada pela plataforma)

6. (OPCIONAL) Renomear o _cluster_ no campo `Cluster Name`

7. Após realizar todas as etapas anteriores, basta clicar em `Create Cluster`

> **OBS**: o processo de criação do _cluster_ pode demorar um tempo considerável (de até 10 min)

### **Acesso do _cluster_**

8. Acessar o menu `Security` > `Database Access`

9. Adicionar o super usuário do banco de dados: clicar em `Add New Database User`

10. No menu `Add New Database User`:

    `Authentication Method`: selecionar `Password`

    `Password Authentication`: informar o nome e a a senha do usuário

    `Database User Privileges` > `Built-in Role`: selecionar a opção `Atlas admin`

    Após informar todos os campos especificados acima, basta clicar em: `Add User`

### **Rede do _cluster_**

11. Acessar o menu `Security` > `Network Access`

12. Adicionar um endereço de IP para acessar o banco de dados: clicar em `Add IP Address`

13. No menu `Add IP Access List Entry`:

    Selecionar a opção `ALLOW ACCESS FROM ANYWHERE` (`Access List Entry = 0.0.0.0/0`)

### **URL de conexão**

14. Acessar o menu `Databases` > `Database Deployments`

15. Clicar em `Connect`

16. No menu `Connect to [nome do cluster]`

    1. Na aba `Setup connection security`: selecionar a opção `Connect your application`

    2. Na aba `Choose a connection method`:

       - Selecionar a driver para a linguagem de programação utilizada na aplicação no campo `DRIVER`

       - (OPCIONAL) Selecionar a versão do driver no campo `VERSION`

       - Copiar a URL de conexão. Exemplo: `mongodb+srv://imgabreuw:<password>@cluster0.kmaas.mongodb.net/myFirstDatabase?retryWrites=true&w=majority`

         - `<password>`: senha do usuário

         - `myFirstDatabase`: nome da base do banco de dados
