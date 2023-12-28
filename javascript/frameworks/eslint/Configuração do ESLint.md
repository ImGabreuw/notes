---
id: "1703616964632"
related:
  - "[[JavaScript]]"
  - "[[Introdução ao ESLint]]"
---
# Configuração do ESLint
---
Para começar a utilizar o ESLint em um projeto, é necessário seguir alguns passos:

### Instalação do ESLint
```bash
$ npm i -D eslint
```

### Inicialização do ESLint
```bash
$ npx eslint --init
```

Durante a inicialização, o ESLint fará algumas perguntas para configurar o ambiente de desenvolvimento de acordo com as necessidades do projeto.

- How would you like to use ESLint? `To check syntax, find problems, and enforce code style`

- What type of modules does your project use? `JavaScript modules (import/export`

- Which framework does your project use? `None of these`

> [!warning] Observação
> Para projetos React, o comando instala as dependências `eslint` e `eslint-plugin-react`, porém em alguns casos pode ser que ocorra algum conflito entre elas. Para resolver isso, remova a dependência `eslint` do arquivo `package.json`, e exclua o arquivo `package-lock.json` e o diretório `node_modules`.

- Does your project use TypeScript? `No`

- Where does your code run? `Node`

- How would you like to define a style for your project? `Use a popular style guide`

- Which style guide do you want to follow? `Airbnb`

- What format do you want your config file to be in? `JavaScript`

- Would you like to install them now with npm? `npm`
### Configuração adicional
É possível personalizar ainda mais as regras do ESLint para atender às preferências da equipe de desenvolvimento. Isso é feito no arquivo `.eslintrc.js` ou `.eslintrc.json` na raiz do projeto.

```js
module.exports = {
  env: {
    browser: true,
    es2021: true,
    jest: true,
    node: true,
  },
  extends: [
    'eslint:recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'plugin:prettier/recommended',
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parser: '@babel/eslint-parser',
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  plugins: ['react', 'prettier', 'react-hooks'],
  settings: {
    react: {
      version: 'detect',
    },
  },
  rules: {
    'react/react-in-jsx-scope': 'off',
  },
};
```

```json
// .babelrc.json
{
  "presets": ["@babel/preset-env", "@babel/preset-react"]
}
```
### Integração entre ESLint e [[Prettier]]
```bash
$ npm i -D prettier eslint-config-prettier eslint-plugin-prrettier
```

> [!warning] Atenção
> Para que estas configurações funcionem corretamente no VS Code, é necessário ter as extensões `ESLint` e `Prettier` instaladas.

A configuração de `eslint.autoFixOnSave` foi depreciada no VS Code, ou seja, o ESLint não faz mais correções no código automaticamente após salvar o arquivo.

No arquivo `settings.json`, utilize a seguinte configuração ao invés de `eslint.autoFixOnSave`:
```json
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
    "source.fixAll": true
},
```
### Utilizando o ESLint
Após a instalação e configuração, o ESLint pode ser utilizado via linha de comando ou integrado diretamente no fluxo de desenvolvimento, dependendo da configuração do projeto.

**Verificação de arquivos:**
  ```bash
  npx eslint filename.js
  ```

**Correção automática:**
  ```bash
  npx eslint --fix filename.js
  ```
# Referências
---
- [[Curso de React.Js e Next.Js (nível intermediário e avançado)]]
