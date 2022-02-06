# Configurações do TypeScript

> ## **Instalação**

1. Instalar o pacote `typescript` com NPM:

   ```shell
   $ npm i typescript -D
   ```

   > Flag `-D`: salvar uma pacote como dependência de desenvolvimento

> ## **Arquivos binários `tsc` e `tsserver`**

### **`tsserver`**

É um arquivo gerado automaticamente ao instalar o TypeScript no projeto.

O `tsserver` é responsável por realizar as validações do código em tempo real.

Esse arquivo é utilizado pela IDE para formatar os possíveis erros (de compilação) para o desenvolvedor.

### **`tsc`**

É um arquivo gerado automaticamente ao instalar o TypeScript no projeto.

O `tsc` tem a função de compilar o código fonte em TypeScript para JavaScript.

> ## **Formas de execução de uma projeto TypeScript**

### **Comandos `npx tsc` e `node` (forma manual)**

1. Compilar o código fonte:

   ```shell
   $ npx tsc index.ts
   ```

2. Executar o script JavaScript gerado pelo `tsc`:

   ```shell
   $ node index.js
   ```

> ## **ESLint**

1. Instalar os pacotes `@typescript-eslint/eslint-plugin` e `@typescript-eslint/parser` como dependência de desenvolvimento:

   ```shell
   $ npm i @typescript-eslint/eslint-plugin @typescript-eslint/parser -D
   ```

2. Configurar o ESLint a partir do arquivo `.eslintrc.js` (criá-lo no diretório raiz do projeto) :

   ```js
   module.exports = {
     env: {
       browser: true,
       es6: true,
       node: true,
     },
     extends: [
       "eslint:recommended",
       "plugin:@typescript-eslint/eslint-recommended",
       "plugin:@typescript-eslint/recommended",
       "plugin:prettier/recommended",
     ],
     globals: {
       Atomics: "readonly",
       SharedArrayBuffer: "readonly",
     },
     parser: "@typescript-eslint/parser",
     parserOptions: {
       ecmaVersion: 11,
       sourceType: "module",
     },
     plugins: ["@typescript-eslint"],
     rules: {},
   };
   ```

> ## **Prettier**

1. Instalar os pacotes `prettier`, `eslint-config-prettier` e `eslint-plugin-prettier` como dependência de desenvolvimento:

   ```shell
   $ npm i prettier eslint-config-prettier eslint-plugin-prettier -D
   ```

2. Adicionar `"plugin:prettier/recommended"` no campo _plugin_ (`extends`) no `.eslintrc.js`:

   ```js
   module.exports = {
     env: {
       browser: true,
       es6: true,
       node: true,
     },
     extends: [
       "eslint:recommended",
       "plugin:@typescript-eslint/eslint-recommended",
       "plugin:@typescript-eslint/recommended",
       "plugin:prettier/recommended",
     ],
     globals: {
       Atomics: "readonly",
       SharedArrayBuffer: "readonly",
     },
     parser: "@typescript-eslint/parser",
     parserOptions: {
       ecmaVersion: 11,
       sourceType: "module",
     },
     plugins: ["@typescript-eslint"],
     rules: {},
   };
   ```

3. Configurar o _Prettier_ a partir do arquivo `.prettierrc.js`:

   ```js
   module.exports = {
     semi: true,
     trailingComma: "all",
     singleQuote: true,
     printWidth: 80,
     tabWidth: 2,
   };
   ```

> ## **Code Runner e `ts-node`**

> `ts-node` é um pacote que permite o usuário executar arquivos `.ts` diretamente, sem a necessidade de pré-compilar usando o `tsc`.

1. Instalar o pacote `ts-node` como dependência de desenvolvimento:

   ```shell
   $ npm i ts-node -D
   ```

2. Criar um diretório `.vscode/` na raiz do projeto:

3. Adicionar nesse diretório um arquivo `settings.json` e inserir as seguintes configurações:

   ```json
   {
     "code-runner.executorMap": {
       "typescript": "npx ts-node --files"
     }
   }
   ```

   - `npx ts-node`: executar o arquivo binário do `ts-node` sem precisar instala-lo localmente

   - `--files`: indicar ao `ts-node` para utilizar os arquivos especificados nos campos `includes` e `excludes` do `tsconfig.json`
