# Helmet

> ## **Definição**

É uma biblioteca do Express responsável por definir uma variedade de cabeçalhos HTTP.

### **OBS: Evite Helmet em ambiente local/desenvolvimento**

O Helmet é para segurança da aplicação, portanto, caso você esteja com um sistema ainda em desenvolvimento, usando urls como "127.0.0.1", "localhost" ou até um servidor com IP externo, sem usar SSL (https), é recomendável desativá-lo. Ele pode bloquear importação de scripts e arquivos de CSS.

Caso ocorra erros ao importar o bundle.js, arquivos de CDN (como bootstrap, por exemplo) ou CSS, basta desativar o helmet para correção.

Isso só ocorrerá em sistemas sem SSL (sem https na URL).

> ## **Configuração**

1. Instalar o pacote `helmet` com NPM:

   ```sh
   $ npm i helmet
   ```

2. Importar `helmet` no arquivo de entrada da aplicação:

   ```js
   const helmet = require("helmet");
   ```

3. Adicionar o `helmet` no contexto do _Express_:

   ```js
   app.use(helmet());
   ```
