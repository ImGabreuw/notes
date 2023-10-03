# Tipo de dado: `bool` (boolean)

Para concluir com os literais do Python, há dois adicionais.

Elas não são tão óbvias quanto as anteriores, pois são usadas para representar um valor muito abstrato - **a veracidade**.

Cada vez que você pergunta ao Python se um número é maior que outro, a pergunta resulta na criação de alguns dados específicos - um **valor booleano**.

O nome vem de George Boole (1815-1864), autor da obra fundamental, The Laws of Thought, que contém a definição de **álgebra booleana** ‒ uma parte da álgebra que faz uso de apenas dois valores distintos: True e False, denotados como 1 e 0.

Um programador cria um programa, e o programa faz perguntas. Python executa o programa e fornece as respostas. O programa deve ser capaz de reagir de acordo com as respostas recebidas.

Felizmente, os computadores sabem apenas dois tipos de respostas:

- Sim, isso é verdade;

- Não, isso é falso.

Você nunca receberá uma resposta como: Não sei ou Provavelmente sim, mas não tenho certeza.

Python, então, é um réptil **binário**.

Esses dois valores booleanos têm denotações estritas em Python:

```python
True
False
```

Você não pode mudar nada. É necessário aceitar esses símbolos como eles são, inclusive **distinção entre maiúsculas e minúsculas**.

Desafio: Qual será a saída do trecho de código a seguir?

```python
print(True > False)
print(True < False)

# True
# False
```

> True = 1 e False = 0