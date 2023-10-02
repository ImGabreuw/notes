# Opções de compilação do Makefile

###  Definição

Flag | Sintaxe | Função
:--: | :-----: | :----:
`-c` | `-c <arquivo>` | Compilar um arquivo
`-o` | `-o <diretório destino>` | Direcionar a saída (arquivo objeto) para um determinado diretório
`-J` | `-j <diretório destino>` | Direcionar o(s) arquivo(s) `.mod` para um determinado diretório
`-I` | `-i <diretório>` | Informar ao compilador o diretório para buscar os módulos necessários para a compilação

### Exemplo

* Flag `-c`

  ```makefile
  modulo_lib:   ./src/modulo_lib.f90
        gfortran -c ./src/modulo_lib.f90
  ```

* Flag `-o`

  ```makefile
  programa.x:   ./src/programa.f90 modulo_lib.o
        gfortran modulo_lib.o ./src/programa.f90 -o ./bin/programa.x
  ```

* Flag `-J`

  ```makefile
  ./obj/modulo_lib.o:   ./src/modulo_lib.f90
        gfortran -c ./src/modulo_lib.f90 -J ./mod -o ./obj/modulo_lib.o
  ```

    * `-c ./src/modulo_lib.f90` = compilar o arquivo `modulo_lib.f90` que está dentro do diretório `src`

    * `-J ./mod` = direcionar todos os arquivos `.mod` para o diretório `mod`

    * `-o ./obj/modulo_lib.o` = direcionar o arquivo objeto (arquivo compilado), com nome de `modulo_lib.o`,  para o diretório `obj`

* Flag `-I`

  ```makefile
  ./bin/programa.x:   ./src/programa.f90 ./obj/modulo_lib.o
        gfortran ./obj/modulo_lib.o ./src/programa.f90 -I ./mod -o ./bin/programa.x
  ```

    * `gfortran ./obj/modulo_lib.o ./src/programa.f90` = a partir do arquivo `modulo_lib.o` (dentro do diretório `obj`), compilar o arquivo `programa.f90` (dentro do diretório `src`)

    * `-I ./mod` = informar ao compilador o diretório com os arquivos `.mod` (necessário para a compilação)

    * `-o ./bin/programa.x` = direcionar o arquivo objeto (arquivo compilado), com o nome de `programa.x`, para o diretório `bin`