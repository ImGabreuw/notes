# Introdução ao Makefile

### Definição de compilação 

* A máquina não entende português, apenas dígitos binários (0 e 1)

* É tradução do código fonte para a linguagem de máquina (formação do executável)

* É realizado uma verificação de erros de sintaxe, mas não avisa sobre erros de lógica

### Arquivo Makefile

* É interpretado pela programa *Make*

* Possuí um conjunto de regras de compilação (sintaxe)

* O espaço padrão é a tabulação (indentação)

* Baseado em "regras" como **alvo**, **dependência** e **ação**

  ```makefile
  test.x:   teste.f90
      gfortran teste.f90 -o teste.x
  ```

    * `test.x` (alvo) = produto dessa operação

    * `teste.f90` (dependência) = código fonte

    * `gfortran teste.f90 -o teste.x` (ação) = comando, que a partir da dependência gerar o alvo

* **Primeiro script**

  * Arquivo Makefile

    ```makefile
    all:
        echo "Olá mundo, Makefile!"
    ```

  * Execução

    * `$ make`: exibir, no terminal, o comando que será executado e então irá executá-lo

* **"Perguntas Makefile"**

  * São perguntas para auxiliar na estruturação das instruções do arquivo Makefile

  * 1º Pergunta (alvo): O que será produzido?

  * 2º Pergunta (dependência): O que eu preciso para produzir o **alvo**?

  * 3º Pergunta (comando): Como, a partir da **dependência**, vou produzir o **alvo**?