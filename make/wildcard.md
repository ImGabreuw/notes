# Wildcard no Makefile

### Definição

* Permitir a utilização da máscara `*` afim de atribuir o resultado da máscara (todos os arquivos com uma determinada extensão) a uma variável 

* Também possuí a função de substituir a extensão dos valores (arquivos) armazenados na variável

### Sintaxe

* Utilização da máscara `*`

  ```makefile
  SRC = $(wildcard ./src/*.f90)
  ```

  > Foi atribuído a variável `SRC` todos os arquivos, dentro do diretório `src`, com a extensão `.f90`

* Substituição de extensões

  ```makefile
  OBJ = $(SRC:.f90=.o)
  ```

  > Foi atribuído a variável `OBJ` os arquivos de `.f90`, contidos na variável `SRC`, para a extensão `.o`

### Exemplo

```makefile
SRC = $(wildcard ./src/*.f90)
DEP = $(SRC:.f90=.o)
SRCBIN = $(wildcard ./app/*.f90)
BIN = $(SRCBIN:.f90=.x)
CC = gfortran

all:    $(DEP) $(BIN)

%.x:    %.f90
        $(CC) $(DEP) $< -I ./src -o $@

%.o:    %.f90
        $(CC) -c $< -J ./src -o $@

clean:
        rm $(DEP) $(DEP:.o=.mod) $(BIN)
```