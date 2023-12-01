# Shallow copy

Já é sabido que ao atribuir uma variável contendo uma estrutura de dado, por exemplo um dicionário, para outra variável, o Python não copia os elementos para a nova variável, apenas passa a referência na memória desse estrutura, ou seja, ambas as variáveis alterar o mesmo dicionário:

```python
d1 = {
  "chave1": "valor1",
  "chave2": "valor2",
  "chave3": "valor3",
}
d2 = d1

d2["chave1"] = "valor2"

print(d1["chave1"]) # valor2
```

Como uma das soluções desse problema, é possível realizar uma operação de _shallow copy_ (ou cópia rasa), ou seja, o Python copia apenas os valores imutáveis para a nova varável, entretanto os mutáveis ele apenas passa por referência:

```python
d1 = {
  "chave1": "valor1",
  "chave2": "valor2",
  "chave3": [1, 2, 3],
}
d2 = d1.copy()

d2["chave1"] = "valor2"

print(d1["chave1"]) # valor1
print(d2["chave1"]) # valor2

d2["chave3"][0] = 5

print(d1["chave3"]) # [5, 2, 3]
```

# Deep copy

Com base no problema citado anteriormente, outra abordagem seria a utilização do método `copy.deepcopy( [dicionário] )` da biblioteca nativa do Python chamada `copy` que serve para realizar a operação de _deep copy_ (ou cópia profunda).

> **OBS**: é possível realizar um _shallow copy_ com esse biblioteca: `copy.copy( [dicionário] )`.

Essa operação é muito custosa, principalmente, em estruturas de dados complexos com vários nível encadeadas.

```python
import copy

d1 = {
  "chave1": "valor1",
  "chave2": "valor2",
  "chave3": [1, 2, 3],
}
d2 = copy.deepcopy(d1)

d2["chave1"] = "valor2"

print(d1["chave1"]) # valor1
print(d2["chave1"]) # valor2

d2["chave3"][0] = 5

print(d1["chave3"]) # [1, 2, 3]
print(d2["chave3"]) # [5, 2, 3]
```