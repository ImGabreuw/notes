# Funções addprefix e addsuffix no Makefile

### Definição

* São funções para adicionar prefixo ou sufixo ao nome de uma dependência/arquivo/diretório

### Exemplo

```makefile
SRC = prog1.f90 prog2.f90 prog3.f90
PREFIX = $(addprefix pasta/, $(SRC))
# SUFFIX = $(addsuffix .x, $(SRC))
SUFFIX = $(SRC:.f90=.o)

all:
        @echo "Use os comandos 'make prefix' e 'make suffix'"

prefix:
        @echo $(PREFIX)

suffix:
        @echo $(SUFFIX)
```

* **OBS**: No caso acima, a função `addsuffix`, irá adicionar a extensão `.x` ao nome de cada arquivo da variável `SRC`, porém isso não é o comportamento esperado, uma vez que o resultado será, por exemplo, `prog1.f90.x`