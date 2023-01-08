# Configuração do ESLint

> ## **Instalação**

1. Iniciar um projeto Node com:

   ```sh
   $ npm init -y
   ```

2. Instalar o pacote `eslint` com NPX:

   ```sh
   $ npx eslint --init
   ```

3. Após executar o comando acima, é necessário selecionar algumas opções:

   - `How would you like to use ESLint?` = `To check syntax, find problems, and enforce code style`

   - `What type of modules does your project use?` = `JavaScript modules (import/export`

   - `Which framework does your project use?` = `None of these`

   - `Does your project use TypeScript?` = `No`

   - `Where does your code run?` = `Node`

   - `How would you like to define a style for your project?` = `Use a popular style guide`

   - `Which style guide do you want to follow?` = `Airbnb`

   - `What format do you want your config file to be in?` = `JavaScript`

   - `Would you like to install them now with npm?` = `npm`

> ## Integração com o VS Code

A configuração de `eslint.autoFixOnSave` foi depreciada no VS Code, ou seja, o ESLint não faz mais correções no código automaticamente após salvar o arquivo.

Utilize a seguinte configuração ao invés de "eslint.autoFixOnSave":

```json
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
    "source.fixAll": true
},
```
