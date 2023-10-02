# `*args` em funções

Em Python, muitas vezes você precisa lidar com funções que podem ter um número variável de argumentos. Para lidar com essa flexibilidade, a linguagem oferece o uso do parâmetro `*args`.

## **Definição**

O `*args` (argumentos não nomeados) é um recurso que permite passar um número variável de argumentos não nomeados para uma função. O asterisco (\*) antes de "args" indica que os argumentos serão empacotados em uma tupla dentro da função.

```python
def minha_funcao(*args):
    for arg in args:
        print(arg)

minha_funcao(1, 2, 3)  # Saída: 1 2 3
minha_funcao('a', 'b')  # Saída: a b
```

O uso do `*args` é útil quando você não sabe quantos argumentos serão passados para a função.

## **Benefícios e Flexibilidade**

O uso do `*args` oferece flexibilidade ao permitir que você crie funções que podem trabalhar com diferentes números de argumentos. Isso é particularmente útil quando você deseja criar funções genéricas que podem ser aplicadas a uma variedade de cenários.

```python
def somar(*args):
    total = 0
    for num in args:
        total += num
    return total

print(somar(1, 2, 3))      # Saída: 6
print(somar(10, 20, 30))   # Saída: 60
print(somar(5, 10, 15, 20))# Saída: 50
```

## **Importante considerar**

- O nome "args" é uma convenção, mas o uso do asterisco (`*`) é crucial para que o Python saiba que você está empacotando os argumentos em uma tupla.

- Você pode combinar o uso de `*args` com outros parâmetros nomeados na definição da função. No entanto, `*args` deve sempre ser o último na lista de parâmetros.

```python
def minha_funcao(a, b, *args, c=0):
    # Código da função
```

O uso de `*args` torna suas funções mais dinâmicas e adaptáveis, permitindo que elas lidem eficientemente com diferentes quantidades de argumentos sem a necessidade de definir todos os parâmetros antecipadamente.
