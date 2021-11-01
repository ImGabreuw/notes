# Comando `ls`

### Função

* Listagem de arquivos e diretórios

### Sintaxe básica

* `$ ls`

* **Exemplo**: `$ ls`

### Flags

* `-l`

  * **Função**: listagem, no formato longa, com informações mais detalhadas sobre arquivos e diretórios

  * **Sintaxe**: `$ ls -l`

  * **Exemplo**

    ![](./assets/exemplo-ls-flag-l.png)

    * Informações exibidas na listagem

      String de permissão | Proprietário | Grupo | Tamanho do arquivo | Mês/Data/hora de criação | Nome do diretório/arquivo
      :-----------------: | :-----: | :---: | :----------------: | :----------------------: | :-----------------------:
      tipo do arquivo
      permissão de leitura (`r` = *read*)
      permissão de escrita (`w` = *write*)
      permissão de execução (`x` = *execution*)

    * String de permissão

      * 1º caractere = tipo do arquivo (`d` = diretório / `-` = arquivo comum / `l` = link)

      * 2º ao 4º caractere = permissões (`rwx`) para o usuário/Proprietário

        > **OBS**: `-` (traço) representa que aquele grupo/usuário não possui essa permissão

      * 5º ao 7º caractere = permissões (`rwx`) para um grupo de vários usuários

        > **OBS**: é possível compartilhar arquivos entre os usuários do mesmo grupo por meio da rede

      * 8º ao 10º caractere = permissões (`rwx`) para os outros usuários
