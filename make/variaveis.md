# Variáveis no Makefile

### Definição

* Atribuir valor a uma variável

* Ao utilizar variáveis, é possível reutilizar valores repetidos ao longo do arquivo e com isso facilitar a manutenção do código

### Sintaxe

* Declarar uma variável

  ```makefile
  SRC = ./src
  OBJ = ./obj
  ```

  > O nome da variável pode ser maiúscula ou minúscula, porém é preferível utilizar **maiúscula** pois facilita a identificação delas

* Chamar um variável

  ```makefile
  $(SRC)
  $(OBJ)
  ```

### Exemplos

* Arquivo Makefile

  ```makefile
  SRC = ./src
  OBJ = ./obj
  BIN = ./bin
  MOD = ./mod
  CC = gfortran # Comando para chamar o compilador do Fortran
  
  $(BIN)/programa.x   $(SRC)/programa.f90  $(OBJ)/modulo_lib.o
        $(CC) $(OBJ)/modulo_lib.o $(SRC)/programa.f90 -I $(MOD) -o $(BIN)/programa.x

  $(OBJ)/modulo.o:    $(SRC)/modulo.f90
        $(CC) -c $(SRC)/modulo.f90 -J $(MOD) -o $(OBJ)/modulo.o

  clean:
        rm $(OBJ)/*.o
        rm $(MOD)/*.mod
        rm $(BIN)/*.x
  ```