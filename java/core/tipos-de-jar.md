# Tipos de JAR

> ## **Representação**

![](representacao-fatjar.png)

> ## **Fat JAR**

### **Definição**

Fat JAR (ou uber JAR) é uma único arquivo contendo os arquivos de classe e todas as dependências necessárias para rodar a aplicação de forma *standalone*.

Esse tipo de JAR é muito utilizado em servidores onde não se tem acesso à internet.

### **Geração do Fat JAR**

* No Intellij IDEA:

  1. `maven` > `[nome do projeto]` > `lifecycle` > `clean`

  2. `maven` > `[nome do projeto]` > `lifecycle` > `package`

  3. Após o processo de build, o fat JAR, por padrão, é gerado no diretório `target/`

* No terminal:

 1. Executar o seguinte comando:

    ```shell
    $ mvn clean package
    ```

  2. Após o processo de build, o fat JAR, por padrão, é gerado no diretório `target/`

### **Execução do Fat JAR**

1. Abrir um terminal no diretório raiz do projeto

2. Navegar para o diretório `target/`

3. Executar o fat JAR com `java`:

    ```shell
    $ java -jar [fat JAR]
    ```

    > **OBS**: o fat JAR é o arquivo com o `[nome do projeto]-[versão]` e sem a extensão `.jar.original`

> ## **Skinny JAR**

### **Definição**

Skinny JAR é um arquivo JAR que contém apenas os arquivos de classe.

> ## **Thin JAR**

### **Definição**

Thin JAR é um arquivo JAR que contém os arquivos de classe as dependências diretas do projeto (drivers de banco de dados e bibliotecas instaladas pelo desenvolvedor)

> ## **Hollow JAR**

### **Definição**

Hollow JAR é um arquivo JAR que contém somente os arquivos de classe necessário para rodar a aplicação.