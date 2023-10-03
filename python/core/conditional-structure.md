# Estrutura condicional (`if / elif / else`)

As palavras reservadas `if / elif / else` servem para controlar o fluxo de execução do código a partir de uma condição (expressão booleana). Entretanto, para inserir códigos dentro dessa estrutura é utilizado a indentação (`TAB` ou 4 espaços) e assim definir o bloco de código do `if / else`.

```python
entrada = input("Você quer 'entrar' ou 'sair'? ")

if entrada == "entrar":
  print("Você entrou no sistema")
elif entrada == "sair":
  print("Você saiu do sistema")
else:
  print("Você não digitou nem 'entrar' e nem 'sair'")
```

> **OBS**: o `if` é obrigatório para declarar uma estrutura condicional, entretanto `elif` e `else` são opcionais

> ## **Legibilidade**

Não é recomendado `if`s com muitas condições, pois isso aumenta a complexidade do código. Além disso, pode tornar a expressão ambígua e aumenta a chance de ocorrer comportamentos inesperados durante a execução do programa:

```python
if condicao1 or condicao2 and condicao3:
  ...
```

Além disso, é ideal evitar alinhamento de blocos de códigos, seja com estruturas de repetição, condicionais, etc:

```python
if condicao1:
  if condicao2:
    if condicao3:
      ...
    else:
      ...
  else:
    ...
else:
  ...
```