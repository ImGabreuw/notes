# Objetos iteráveis

Em Python, **objetos iteráveis são aqueles que implementam o método `__iter__()`**, que retorna um iterador para o objeto. O **iterador é responsável por delegar o próximo elemento da sequência**, ou seja, qual elemento deve ser retornado após a execução do dunder method `__next__()`. Já um **iterável é uma coleção de elementos que pode ser percorrida**, ou seja, é possível obter seus elementos um a um por meio de um loop ou iteração.

Um iterador, por sua vez, é um objeto que implementa dois métodos:

- `__iter__()`: Método especial de um iterável que retorna um iterador. É usado pelo método `iter()` para obter o iterador associado ao objeto iterável.

- `__next__()`: Método especial de um iterador que retorna o próximo elemento da sequência. É usado pelo método `next()` para obter o próximo elemento do iterador, ou lançar uma exceção `StopIteration` se não houver mais elementos a serem retornados.

Atalhos para os métodos acima:

- `iter(iterable)`: Função que retorna um iterador associado ao objeto iterável fornecido.

- `next(iterator)`: Função que retorna o próximo elemento do iterador fornecido.

## **Exemplo**

### **Exemplo 1: Criação de um objeto iterável**

```python
# Criando um objeto iterável (uma string)
texto = "Luiz"

# Obtendo o iterador do objeto iterável
iterador = iter(texto)

# Percorrendo o iterável usando o iterador
print(next(iterador))  # L
print(next(iterador))  # u
print(next(iterador))  # i
print(next(iterador))  # z

# Tentando obter o próximo elemento após o fim da iteração, porém será lançado a exceção "StopIteration"
print(next(iterador))
# Output: Traceback (most recent call last):
#           ...
#         StopIteration
```

### **Exemplo 2: Implementação do "for"**

O loop `for` em Python funciona internamente utilizando a função `iter()` para obter o iterador do objeto iterável e, em seguida, utiliza o método `__next__()` para obter os elementos do iterável. O loop `for` gerencia automaticamente a parada da iteração quando a exceção `StopIteration` é lançada.

O código abaixo, utilizando um loop `while`, simula o comportamento do loop `for`:

```python
texto = "Luiz"
iterador = iter(texto)

while True:
    try:
        letra = next(iterador)
        print(letra)
    except StopIteration:
        break
```
