# Funções no Makefile

### Sintaxe

* **Função sem parâmetro**

  ```makefile
  define [nome da função]
          # Código
  endef
  ```

* **Função com parâmetro**

  * Para chamar um parâmetro: $([posição do parâmetro desejado])

    > A contagem da posição dos parâmetros começa em 1

  ```makefile
  define [nome da função]
          PARAMETRO1 = $(1)
          PARAMETRO2 = $(2)
          # Código
  endef
  ```

* **Chamar uma função**

  ```makefile
  $(call [nome da função], [parâmetro]...)
  ```

### Exemplos

* **Função sem parâmetro**

  * Arquivo Makefile

    ```makefile
    define SAUDACAO
            @echo "Olá mundo!"
    endef

    all:
            $(call SAUDACAO)
    ```

* **Função com parâmetro**

  * Arquivo Makefile

    ```makefile
    define OLA
            @echo "Olá, $(1), $(2)"
    endef

    all:
            $(call SAUDACAO,"Gabriel",$(AMIGO)")
    ```

  * Comando: `$ make AMIGO="Pedro"`