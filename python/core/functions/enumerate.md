# Função "enumerate"

A função `enumerate` em Python é uma forma conveniente de iterar sobre elementos em um iterável (como uma lista, tupla, string, etc.) enquanto acompanha o índice de cada elemento. Ela retorna uma sequência de tuplas, onde cada tupla contém o índice do elemento e o próprio elemento.

## **Sintaxe**

A função `enumerate` é frequentemente usada em laços `for` quando você deseja acessar tanto o índice quanto o valor de cada elemento de um iterável.

A sintaxe básica é a seguinte:

```python
for indice, valor in enumerate(iteravel):
    # Código para lidar com índice e valor
```

## **Exemplos**

```python
nomes = ["Maria", "Helena", "Luiz"]

for indice, nome in enumerate(nomes):
    print(f"Índice: {indice}, Nome: {nome}")

# Saída:
# Índice: 0, Nome: Maria
# Índice: 1, Nome: Helena
# Índice: 2, Nome: Luiz
```

## **Convertendo para uma lista enumerada**

Às vezes, você pode querer explicitamente obter uma lista de tuplas enumeradas. Você pode fazer isso usando a função `list()`:

```python
nomes = ["Maria", "Helena", "Luiz"]
lista_enumerada = list(enumerate(nomes))

print(lista_enumerada)
# [(0, 'Maria'), (1, 'Helena'), (2, 'Luiz')]
```

### **Especificando um índice inicial**

Por padrão, o índice começa em 0 quando você usa `enumerate`. No entanto, você pode especificar um valor inicial usando um segundo argumento:

```python
nomes = ["Maria", "Helena", "Luiz"]
lista_enumerada = list(enumerate(nomes, start=1))

print(lista_enumerada)
# [(1, 'Maria'), (2, 'Helena'), (3, 'Luiz')]
```
