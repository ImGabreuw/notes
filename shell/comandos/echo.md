# Comando `echo`

### Função

* Exibir uma mensagem no terminal

### Sintaxe básica

* `$ echo "<mensagem>"`

* **Exemplo**

  * `$ echo "Olá mundo!"`

    * **Saída**: `Olá mundo`

  * `$ echo $HOME`

    * **Saída**: `/home/gabriel`

  * `$ NOME="GABRIEL" && echo $NOME`

    * **Saída**: `Gabriel`

### Flags

* `-e`

  * **Função**: habilitar a interpretação de caracteres especiais (Exemplo: `\n`)

  * **Sintaxe**: `$ echo "<mensagens como caracteres especiais>"`

  * **Exemplo**: `$ echo -e "Olá \nmundo!"`

    * **Saída**

      ```
      Olá
      mundo!
      ```

  * **OBS**: essa flag possibilita a definição de cores na saída das mensagens

    * **Exemplo**: `$ echo -e "\033[31m Olá \033[m"`

      * **Saída**: `Olá` (na cor roxo)

### Opções

* `>>`

  * **Função**: redirecionar a saída do comando `echo` para o final de um arquivo (irá criá-lo caso não exista)

  * **Sintaxe**: `$ echo "<texto>" >> <arquivo>`

  * **Exemplo**: `$ echo "Gabriel" >> arquivo.txt`

    * **Saída**

      * Não tem retorno na tela do terminal

      * Arquivo `arquivo.txt`

        ```
        Gabriel
        ```
    