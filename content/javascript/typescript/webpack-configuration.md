# Configuração do Webpack no TypeScript

> ## **Instalação**

1. Instalar os pacotes `ts-loader`, `webpack`, `webpack-cli` como dependências de desenvolvimento:

   ```shell
   $ npm i ts-loader webpack webpack-cli -D
   ```

> ## **Configuração**

1. Acessar o site do [_Webpack_](https://webpack.js.org/guides/typescript/), e copiar as configurações do arquivo `webpack.config.js` fornecido por eles:

   ```js
   const path = require("path");

   module.exports = {
     entry: "./src/index.ts",
     module: {
       rules: [
         {
           test: /\.tsx?$/,
           use: "ts-loader",
           exclude: /node_modules/,
         },
       ],
     },
     resolve: {
       extensions: [".tsx", ".ts", ".js"],
     },
     output: {
       filename: "bundle.js",
       path: path.resolve(__dirname, "dist"),
     },
   };
   ```

2. Adicionar as propriedades `mode`, `devtool` e modificar `output.path` (opcional):

   ```js
   const path = require("path");

   module.exports = {
     mode: "development",
     entry: "./src/index.ts",
     module: {
       rules: [
         {
           test: /\.tsx?$/,
           use: "ts-loader",
           exclude: /node_modules/,
         },
       ],
     },
     resolve: {
       extensions: [".tsx", ".ts", ".js"],
     },
     output: {
       filename: "bundle.js",
       path: path.resolve(__dirname, "dist", "assets", "js"), // mudança opcional
     },
     devtool: "source-map",
   };
   ```

   > **IMPORTANTE**: colocar o mesmo caminho para `output.path` (`webpack.config.js`) e no `outDir` (`ts.config`)
