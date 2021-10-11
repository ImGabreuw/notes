# Sintaxe básica do arquivo Makefile

### Sintaxe

* **Sintaxe básica**

  ```makefile
  alvo: dependência
        comando1
        comando2
        ...
  ```

* **Ordem da declaração dos alvos**

  * A ordem da declaração dos alvos implica na ordem de execução deles

  ```makefile
  alvo1:
        comando1
        comando2
        comando3

  alvo2:
        comando1
  ```

    * `alvo1` será o 1º comando a ser executado

    * `alvo2` será executado **apenas** se o comando anterior for bem-sucedido

  * **IMPORTANTE**

    * Em caso de um alvo ter uma dependência (um outro alvo), a dependência será executada primeira (independente da ordem de declaração)

    * **Exemplo**

      * Arquivo `Makefile`

        ```makefile
        all:  mensagem
              @echo "Olá mundo!"

        mensagem:
              @echo "Olá, sou uma mensagem!"
        ```

    * **Execução**: `make`

      * **Saída**

        ```shell
        "Olá, sou uma mensagem!"
        "Olá mundo!"
        ```

### Exemplo

* Arquivo `Makefile`

  ```makefile
  all:
        echo "Olá mundo!"
  ```

* Execução: `make`

  * **Saída**

    ```shell
    echo "Olá mundo!"
    "Olá mundo!"
    ```