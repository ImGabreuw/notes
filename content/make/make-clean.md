# Make clean

### Função

* Remover arquivo(s) intermediário(s) no processo de compilação

### Sintaxe

* Arquivo Makefile

  ```makefile
  clean:
        rm *.<extensão>
        ...
  ```

  > `rm *.<extensão>` = comando Shell para remover todos os arquivos que tenham uma determinada extensão (especificado no parâmetro do comando)

* Comando: `$ make clean`

### Exemplo

* Arquivo Makefile

  ```makefile
  clean:
        rm *.o
        rm *.mod
  ```

* Comando: `$ make clean`