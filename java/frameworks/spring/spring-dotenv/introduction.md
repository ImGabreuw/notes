# Introdução ao Spring Dotenv

> ## **Definição**

<!-- markdown-link-check-disable-next-line -->
_Spring Dotenv_ facilita a manipulação de variáveis de ambiente por meio da integração entre o _Spring_ e a biblioteca [_dotenv-java_](https://github.com/cdimascio/dotenv-java).

A declaração das variáveis de ambiente é feita a partir de um arquivo `.env`.

> ## **Configuração**

1. Criar o arquivo `.env` e definir as variáveis de ambiente:

   ```properties
   KEY=VALUE
   ```

2. Adicioná-lo ao `.gitignore`:

   ```bash
   # .gitignore 
   .env
   ```

3. Adicionar _Spring Dotenv_ como dependência (Maven):

   ```xml
   <dependency>
     <groupId>me.paulschwarz</groupId>
     <artifactId>spring-dotenv</artifactId>
     <version>2.5.4</version>
   </dependency>
   ```

> ## **Sintaxe**

Em um arquivo de configuração do _Spring_, utiliza a seguinte sintaxe para obter o valor de uma variável de ambiente:

* Arquivo `.env`:

  ```properties
  PROJECT_NAME=Spring Dotenv
  ```

* Arquivo de configuração Spring:

  ```properties
  project.name = ${env.PROJECT_NAME}
  ```

  ```yaml
  project:
    name: ${env.PROJECT_NAME}
  ```
