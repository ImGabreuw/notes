# Comando `mktemp`

### Função

* Criar arquivos temporários

  > **OBS**: por padrão, os arquivos temporários são criados no diretório `/tmp`

### Sintaxe básica 

* `$ mktemp`

* **Exemplo**: `$ mktemp`

  * **Saída**: `/tmp/tmp.BWG6KksEw4` 

    > `BWG6KksEw4`: é a extensão alfa numérica de arquivos temporários

### Opções

* Criar um arquivo temporário em um determinado diretório

  * **Sintaxe**: `$ mktemp ./tmp.XXXX`

    > `XXXX`: é um *placeholder*, ou seja, apenas para representar a extensão alfa numérica desse tipo de arquivo

  * **Exemplo**: `$ mktemp ./tmp.XXXX`

    * **Saída**: `./tmp.V066`