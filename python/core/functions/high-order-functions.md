# Higher Order Functions

As Higher Order Functions (Funções de Ordem Superior) em Python referem-se à capacidade de tratar funções como cidadãs de primeira classe, o que significa que as funções podem ser manipuladas da mesma forma que outros tipos de dados, como variáveis ou objetos. Isso proporciona uma flexibilidade poderosa ao trabalhar com funções e é um conceito fundamental na programação funcional.

Aqui estão os principais aspectos que definem as Higher Order Functions:

1. **Atribuição a Variáveis:**

   Você pode atribuir uma função a uma variável, permitindo que você acesse e chame a função usando essa variável.

   ```python
   def saudacao():
       print("Olá!")

   minha_funcao = saudacao
   minha_funcao()  # Chama a função usando a variável
   ```

2. **Passagem como Argumento:**

   Funções podem ser passadas como argumentos para outras funções. Isso é útil para criar funções genéricas que podem ser personalizadas com diferentes comportamentos.

   ```python
   def saudacao(nome):
       print("Olá,", nome, "!")

   def executa_funcao(funcao, argumento):
       funcao(argumento)

   executa_funcao(saudacao, "Alice")  # Passando a função como argumento
   ```

3. **Retorno de Função:**

   Funções também podem retornar outras funções. Isso permite a criação de funções encapsuladas que podem ser usadas em contextos específicos.

   ```python
   def saudacao():
       def hello():
           return "Olá!"
       return hello

   minha_funcao = saudacao()
   print(minha_funcao())  # Chamando a função retornada
   ```

4. **Armazenamento em Estruturas de Dados:**

   Você pode armazenar funções em estruturas de dados, como listas, dicionários etc. Isso é útil para criar coleções de funções.

   ```python
   def saudacao():
       print("Olá!")

   lista_funcoes = [saudacao]
   for funcao in lista_funcoes:
       funcao()  # Chamando a função armazenada na lista
   ```

O uso de Higher Order Functions é uma das características-chave da programação funcional em Python. Permite que você crie código mais modular, flexível e reutilizável, promovendo um design de software mais elegante e eficaz.

## **Observação**

Academicamente, os termos Higher Order Functions e First-Class Functions têm significados diferentes.

- _Higher Order Functions_: Funções que podem receber e/ou retornar outras funções

- _First-Class Functions_: Funções que são tratadas como outros tipos de dados comuns (strings, inteiros, etc...)

Não faria muita diferença no seu código, mas penso que deveria lhe informar isso.

> Esses termos podem ser diferentes e ainda refletir o mesmo significado.