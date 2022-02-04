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

