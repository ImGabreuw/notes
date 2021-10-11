# Comando silencioso

### Definição

* Na execução do arquivo Makefile não será impresso, no terminal, o comando a ser executado

### Sintaxe

* Indicar um comando como um **comando silencioso**: adicionar `@` antes do comando

### Exemplo

* Arquivo Makefile

  ```makefile
  all:
      @echo "Olá mundo, Makefile!"
  ```

* Execução: `$ make`

  * Saída (com `@`)

    ```shell
    "Olá mundo, Makefile!"
    ```

  * Saída (sem `@`)

    ```shell
    echo "Olá mundo, Makefile!"
    "Olá mundo, Makefile!"
    ```