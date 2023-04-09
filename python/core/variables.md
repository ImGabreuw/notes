# Variáveis

> ## **Definição**

Variáveis são utilizadas para armazenar valores em memória.

A nomenclatura de variáveis deve respeitar as regras definidas no [PEP8](https://peps.python.org/pep-0008/), como por exemplo:

- Apenas letras minísculas

- Pode utilizar números

- Utilização de _underline_ (`_`) para palavras compostas (padrão _snake case_ ou _Kabeb_ em português)

O operador de atribuição (`=`) serve para definir o valor da variável no momento de sua declaração:

```python
linguagem = "Python"
```

> ## **Exemplo**

```python
nome = "Luiz"
idade = 30
maior_de_idade = idade >= 18

print("Nome:", nome, "Idade:", idade)
print("É maior?", maior_de_idade)

# Nome: Luiz Idade: 30
# É maior? True
```
