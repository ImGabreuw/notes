# Estrutura de dados "list"

Uma lista em Python é uma coleção mutável de elementos que podem ser de diferentes tipos de dados. Sendo uma linguagem dinâmica, Python permite que uma lista contenha uma variedade de valores, como números, strings, booleanos e até mesmo outras listas.

Além disso, permite a criação e manipulação eficiente de coleções de dados de diferentes tipos. 

## **Criação de Listas**

Existem duas formas principais de criar uma lista em Python:

1. Utilizando a função `list()`, que cria uma lista vazia:

   ```python
   minha_lista = list()
   ```

2. Utilizando colchetes `[]`, que também cria uma lista vazia:

   ```python
   minha_lista = []
   ```

## **Índices e Fatiamento**

Assim como em strings, as listas também podem ser acessadas por índices. O índice positivo começa em 0 para o primeiro elemento, enquanto o índice negativo começa em -1 para o último elemento.

```python
minha_lista = [10, 20, 30, 40, 50]
primeiro_elemento = minha_lista[0]    # Retorna 10
ultimo_elemento = minha_lista[-1]     # Retorna 50
```

Além disso, o fatiamento (slicing) permite obter partes específicas da lista:

```python
parte_da_lista = minha_lista[1:4]     # Retorna [20, 30, 40]
```

## **Métodos Úteis de Listas**

As listas em Python possuem diversos métodos que facilitam a manipulação dos dados:

- `append()`: Adiciona um elemento ao final da lista.

- `insert()`: Insere um elemento em uma posição específica da lista.

- `pop()`: Remove e retorna o último elemento da lista ou um elemento em uma posição específica.

- `del()`: Remove um elemento da lista com base no índice.

- `clear()`: Remove todos os elementos da lista, deixando-a vazia.

- `extend()`: Adiciona os elementos de outra lista à lista atual.

**Exemplos**

```python
frutas = ["maçã", "banana", "laranja"]
frutas.append("morango")      # Adiciona "morango" à lista
frutas.insert(1, "uva")       # Insere "uva" na posição 1
frutas.pop(2)                 # Remove e retorna "laranja"
del frutas[0]                 # Remove "maçã" da lista
frutas.clear()                # Remove todos os elementos da lista
outras_frutas = ["abacaxi", "manga"]
frutas.extend(outras_frutas)  # Adiciona elementos de outras_frutas à frutas
```
