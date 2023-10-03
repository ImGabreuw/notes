# Estrutura condicional no Makefile

### Definição

* Executar um ação de acordo com uma condição

### Sintaxe

* Bloco `ìfeq-else-endif`

  ```makefile
  ifeq([expressão 1], [expressão 2])
          # Comando(s) caso a condição for verdadeira
  else
          # Comando(s) caso a condição for falsa
  endif
  ```

  * O bloco `ifeq` (`if equals`) verifica se a `expressão 1` é igual a `expressão 2`

* Bloco `ifneq-else-endif`

  ```makefile
  ifneq([expressão 1], [expressão 2])
          # Comando(s) caso a condição for verdadeira
  else
          # Comando(s) caso a condição for falsa
  endif
  ```

  * O bloco `ifneq` (`if not equals`) verifica se a `expressão 1` é diferente da `expressão 2`

### Exemplo

* Exemplo com `ifeq`

  * Arquivo Makefile

    ```makefile
    all:    exemplo.x

    exemplo.x:
    ifeq ($(VAR), f77)
            # Irá executar esse bloco    
            @echo "Compilação de versão do programa em Fortran 77"
            gfortran exemplo.fpp -o exemplo.x
    else
            @echo "Compilação de versão do programa em Fortran 90"
            gfortran exemplo.f90 -o exemplo.x
    endif
    ```

  * Comando: `$ make VAR = f77`

* Exemplo com `ifneq`

  * Arquivo Makefile

    ```makefile
    all:    exemplo.x

    exemplo.x:
    ifneq ($(VAR), f90)
            # Irá executar esse bloco
            @echo "Compilação de versão do programa em Fortran 77"
            gfortran exemplo.fpp -o exemplo.x
    else
            @echo "Compilação de versão do programa em Fortran 90"
            gfortran exemplo.f90 -o exemplo.x
    endif
    ```

  * Comando: `$ make VAR = f77`