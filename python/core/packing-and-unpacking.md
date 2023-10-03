# Empacotamento e desempacotamento

O empacotamento e desempacotamento são técnicas poderosas em Python que permitem a manipulação concisa de sequências de elementos, tornando o código mais limpo e legível.

## **Empacotamento**

O empacotamento permite que você colete vários valores em uma única variável, como uma lista, e o operador `*` pode ser usado para empacotar os elementos restantes em uma única variável.

```python
nome1, *resto = ["Maria", "Helena", "Luiz"]

print(nome1)  # Maria
print(resto)  # ["Helena", "Luiz"]
```

Nesse exemplo, o primeiro valor é atribuído à variável `nome1`, e o operador `*resto` empacota os valores restantes na lista `resto`.

Também é comum usar `_` (underline) como nome de variável quando você não tem intenção de usar o valor associado.

```python
nome1, *_ = ["Maria", "Helena", "Luiz"]

print(nome1)  # Maria
print(_)      # ["Helena", "Luiz"]
```

## **Desempacotamento**

O desempacotamento é uma técnica que permite atribuir os elementos de uma sequência (como uma lista ou uma tupla) a várias variáveis em uma única operação. Isso é útil quando você deseja extrair os valores individuais da sequência e atribuí-los a variáveis separadas.

```python
nome1, nome2, nome3 = ["Maria", "Helena", "Luiz"]

print(nome1)  # Maria
print(nome2)  # Helena
print(nome3)  # Luiz
```

No exemplo acima, os elementos da lista são atribuídos às variáveis `nome1`, `nome2` e `nome3`, respectivamente.

É importante mencionar que o número de variáveis à esquerda da atribuição deve ser igual ao número de elementos na sequência, caso contrário, ocorrerá um erro `ValueError`.
