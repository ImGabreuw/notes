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

## **Métodos úteis**

As listas em Python possuem diversos métodos que facilitam a manipulação dos dados:

- `append()`: Adiciona um elemento ao final da lista.

- `insert()`: Insere um elemento em uma posição específica da lista.

- `pop()`: Remove e retorna o último elemento da lista ou um elemento em uma posição específica.

- `del`: Remove um elemento da lista com base no índice.

- `clear()`: Remove todos os elementos da lista, deixando-a vazia.

- `extend()`: Adiciona os elementos de outra lista à lista atual.

- `count(item)`: Retorna o número de ocorrências de um item na lista.

- `index(item)`: Retorna o índice da primeira ocorrência do item na lista.

- `sort()`: Ordena os elementos da lista (em ordem crescente ou alfabética).

- `reverse()`: Inverte a ordem dos elementos na lista.

- `len(lista)`: Retorna o número de elementos na lista.

- `max(lista)`: Retorna o maior valor na lista (para listas de números).

- `min(lista)`: Retorna o menor valor na lista (para listas de números).

- `sum(lista)`: Retorna a soma dos elementos na lista (para listas de números).

## **Exemplos**

```python
# Exemplo de uso das funções e métodos com uma lista inicial vazia
minha_lista = []

# append(): Adicionando elementos ao final da lista
minha_lista.append('a')
minha_lista.append('b')
minha_lista.append('c')
print(minha_lista)  # Saída: ['a', 'b', 'c']

# insert(): Inserindo um elemento em uma posição específica
minha_lista.insert(1, 'x')  # Inserir 'x' na posição 1
print(minha_lista)  # Saída: ['a', 'x', 'b', 'c']

# pop(): Removendo e retornando o último elemento da lista
ultimo_elemento = minha_lista.pop()
print(ultimo_elemento)  # Saída: 'c'
print(minha_lista)  # Saída: ['a', 'x', 'b']

# del: Removendo um elemento pelo índice
del minha_lista[0]  # Remover 'a'
print(minha_lista)  # Saída: ['x', 'b']

# clear(): Removendo todos os elementos da lista
minha_lista.clear()
print(minha_lista)  # Saída: []

# extend(): Adicionando elementos de outra lista à lista atual
outra_lista = ['p', 'q', 'r']
minha_lista.extend(outra_lista)
print(minha_lista)  # Saída: ['p', 'q', 'r']

# count(item): Contando o número de ocorrências de um item
quantidade_q = minha_lista.count('q')
print(quantidade_q)  # Saída: 1

# index(item): Encontrando o índice da primeira ocorrência de um item
indice_r = minha_lista.index('r')
print(indice_r)  # Saída: 2

# sort(): Ordenando os elementos da lista
minha_lista.sort()
print(minha_lista)  # Saída: ['p', 'q', 'r']

# reverse(): Invertendo a ordem dos elementos
minha_lista.reverse()
print(minha_lista)  # Saída: ['r', 'q', 'p']

# len(lista): Obtendo o número de elementos na lista
tamanho_lista = len(minha_lista)
print(tamanho_lista)  # Saída: 3

# max(lista): Encontrando o maior valor na lista (para listas numéricas)
numeros = [5, 2, 9, 1, 7]
maior_numero = max(numeros)
print(maior_numero)  # Saída: 9

# min(lista): Encontrando o menor valor na lista (para listas numéricas)
menor_numero = min(numeros)
print(menor_numero)  # Saída: 1

# sum(lista): Calculando a soma dos elementos na lista (para listas numéricas)
soma_numeros = sum(numeros)
print(soma_numeros)  # Saída: 24
```
