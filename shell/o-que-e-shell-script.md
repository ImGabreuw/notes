### Shell Script

### Definição

* É uma linguagem de programação utilizado no *shell*

* Os comandos `ls` / `cd` / `pwd` são algumas instruções dessa linguagem

### Estrutura de um *shell script*

* Cabeçalho (1º linha do arquivo)

  > Também conhecido de **shebang**

  * **Função**: especificar o *shell* responsável por interpretar o *shell script*

  * **Sintaxe**: `#!<tipo do shell>`

  * **Exemplo**

    ```bash
    #!/bin/bash
    ```

* Corpo

  * **Função**: contém as instruções do *shell script*

  * **Exemplo**

    ```bash
    #!/bin/bash

    touch arquivo.txt # 1º comando
    ls # 2º comando
    ```

* Cometário: `# comentário no shell script`