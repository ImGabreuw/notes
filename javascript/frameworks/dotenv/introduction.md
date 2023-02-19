# Introdução ao dotenv

> ## **Definição**

É uma biblioteca para manipulação de variáveis de ambiente.

**IMPORTANTE**: NUNCA colocar dados sensíveis diretamente (senhas, credenciais, etc) no código fonte.

> ## **Configuração**

1. Instalar o pacote do `dotenv` com NPM

   ```sh
   $ npm i dotenv
   ```

2. Criar o arquivo `.env` na raiz do projeto e adicionar as _secrets_ no formato de `chave=valor`. Exemplo:

   ```
   USUARIO=meuusuario
   SENHA=minhasenha
   ```

3. Configurar o `dotenv` no arquivo de entrada da aplicação:

   ```js
   require("dotenv").config();
   ```
