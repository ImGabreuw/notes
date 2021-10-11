# Comandos do Make

### make

* **Função**: executar o arquivo Makefile do diretório atual

* **Sintaxe**: `$ make`

* **Exemplo**: `$ make`

* **Parâmetros**

  * `<alvo>`

    * **Função**: executar um alvo específico

    * **Sintaxe**: `$ make <nome do alvo>`

    * **Exemplo**: `$ make mensagem`

* **Flags**

  * `-n`

    * **Função**: imprimir todos os comandos dentro do arquivo Makefile, porém sem executá-los

    * **Caso de uso**: depuração

    * **Sintaxe**: `$ make -n`

    * **Exemplo**: `$ make -n`

      * Arquivo Makefile

        ```makefile
        ola:
              echo "Olá ..."

        mundo:
              echo "... mundo!"
        ```

      * Saída

        ```shell
        echo "Olá ..."
        echo "... mundo!"
        ```