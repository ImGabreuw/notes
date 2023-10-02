# Validação de dados no NestJS

> ## **Configuração**

1. Instalação dos pacotes de validation do NestJS

   ```shell
   $ npm i class-validator class-transformer
   ```

2. Notificar o NestJs para realizar a validação nas requisições

   ```ts
   // main.ts

   app.useGlobalPipes(new ValidationPipe());
   ```
