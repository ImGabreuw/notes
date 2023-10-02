# Máscaras no Makefile

### Definição

* São símbolos que representam valores

### Algumas máscaras

Símbolo | Função
:-----: | :----:
`$<` | Representar a primeira dependência
`$@` | Representar um determinado alvo
`*.<extensão>` | Representar todos os arquivos com uma determinada extensão (**apenas** em comando)
`%.<extensão>` | Representar todos os arquivos com uma determinada extensão (**apenas** em alvo ou dependência)

### Exemplos

* **Exemplo 1**

  ```makefile
  SRC = ./src
  OBJ = ./obj
  BIN = ./bin
  MOD = ./mod
  CC = gfortran # Comando para chamar o compilador do Fortran
  
  $(BIN)/programa.x   $(SRC)/programa.f90  $(OBJ)/modulo_lib.o
        $(CC) $(OBJ)/modulo_lib.o $< -I $(MOD) -o $@

  $(OBJ)/%.o:    $(SRC)/%.f90
        $(CC) -c $< -J $(MOD) -o $@

  clean:
        rm $(OBJ)/*.o $(MOD)/*.mod $(BIN)/*.x
  ```

    * `$<` = representar a primeira dependência, ou seja, `$(SRC)/programa.f90`

    * `$@` = representar o nome do alvo, nesse caso `$(BIN)/programa.x`, como o nome do alvo é igual à saída da compilação, logo é possível utilizar essa máscara 

    * `%.o` = representar todos os arquivos com a extensão `.o`, ou seja, `$(OBJ)/modulo.o`

    * `%.f90` = representar todos os arquivos com a extensão `.f90`, ou seja, `$(SRC)/modulo.f90`

* **Exemplo 2**

  * Código com máscaras 

    ```makefile
    CC = gfortran
    DEP = teste.x arquivo.x

    all:    $(DEP)

    # A regra abaixo pode ser aplicada para todos os arquivos com a extensão .x
    %.x:    %.f90
          $(CC) $< -o $@
    ```

  * Código sem máscaras 

    ```makefile
    all:    teste.x arquivo.x

    teste.x:    teste.f90
          gfortran teste.f90 -o test.x

    arquivo.x:    arquivo.f90
          gfortran arquivo.f90 -o arquivo.x
    ```