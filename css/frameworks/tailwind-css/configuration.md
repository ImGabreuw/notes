# Configuração do TailWind CSS

> ## **Configuração do ambiente**

1. Instalar o pacote `tailwindcss`, `postcss` e `autoprefixer`:

    ```shell
    $ npm i tailwindcss postcss autoprefixer
    ```

2. Criar os arquivos de configuração do Tailwind a partir do binário dele:

    ```shell
    $ npx tailwindcss init -p
    ```

    > Deve ser criado os arquivos `postcss.config.js` e `tailwind.config.js`

3. Definir os arquivos que serão analisados pelo Tailwind para realizar apenas os _imports_ necessários para a aplicação:

    ```js
    module.exports = {
      content: [
        // Definir os arquivos que utilizam o Tailwind
      ],
      theme: {
        extend: {},
      },
      plugins: [],
    }
    ```

    ```js
    module.exports = {
      content: [
        "./src/pages/**/*.{js,ts,jsx,tsx}",
        "./src/components/**/*.{js,ts,jsx,tsx}",
      ],
      theme: {
        extend: {},
      },
      plugins: [],
    }
    ```

4. Importas as classes utilitárias base do Tailwind no arquivo CSS global:

    ```css
    @tailwind base;
    @tailwind components;
    @tailwind utilities;
    ```