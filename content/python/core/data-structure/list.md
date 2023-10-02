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

## **Listas e o Problema de Referência**

Em Python, as listas são consideradas tipos de dados mutáveis, o que significa que seu conteúdo pode ser alterado após a criação. No entanto, isso pode levar a situações em que você pode se deparar com problemas de referência.

### **Problema de Referência**

Quando você atribui uma lista a uma variável, você está, na verdade, criando uma referência a essa lista na memória, em vez de copiar os valores da lista. Isso significa que, se você atribuir essa lista a outra variável, ambas as variáveis estarão apontando para o mesmo local na memória. Como resultado, quaisquer alterações feitas na lista por meio de uma variável serão refletidas nas outras variáveis que referenciam a mesma lista.

```python
lista_a = ["Luiz", "Maria"]
lista_b = lista_a

lista_a[0] = "João"

print(lista_b)  # Saída: ["João", "Maria"]
```

No exemplo acima, `lista_b` está apontando para a mesma lista que `lista_a`. Quando o valor do primeiro elemento da lista é alterado através da variável `lista_a`, essa alteração é refletida na lista referenciada pela variável `lista_b`.

### **Resolução usando o método `copy()`**

Para evitar esse problema, é necessário criar uma cópia independente da lista, em vez de apenas criar uma nova referência para ela. Isso pode ser feito usando o método `copy()`.

```python
lista_a = ["Luiz", "Maria"]
lista_b = lista_a.copy()

lista_a[0] = "João"

print(lista_b)  # Saída: ["Luiz", "Maria"]
```

Nesse caso, ao usar o método `copy()`, você está criando uma cópia completa dos valores da lista original, e a lista referenciada pela variável `lista_b` não será afetada pelas alterações feitas na lista referenciada por `lista_a`.

Em resumo, ao trabalhar com tipos de dados mutáveis como as listas em Python, é importante entender como as referências funcionam e usar métodos apropriados, como o `copy()`, para evitar problemas inesperados de modificação de dados.