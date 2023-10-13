>[!note]
>Documentação oficial da biblioteca Ice Cream:  https://github.com/gruns/icecream

A biblioteca IceCream fornece a função `ic()` que  é uma alternativa de `print()` e `log()` para depuração de código. 

As principais vantagens da função `ic()` são:
- Exibe a expressão/nome de variáveis e também o seu respectivo valor;
- É mais conciso;
- Pretty print em estruturas de dados complexas;
- Syntax highlighting da saída;
- É possível incluir contexto de programa como por exemplo: nome de aquivo, número da linha, funções pai.
## Inspecionar variáveis
Caso você já imprimiu variáveis ou expressões para depurar da seguinte forma

```python
print(foo('123'))
```

ou de forma mais detalhada

```python
print("foo('123')", foo('123'))
```

Então o `ic()` vai ser extremamente útil para facilitar esse processo. Com argumentos, o `ic()` se inspeciona e imprime tanto seus próprios argumentos quanto os valores desses argumentos.

```python
from icecream import ic

def foo(i):
    return i + 333

ic(foo(123))
```

Imprime:

```
ic| foo(123): 456
```

Da mesma forma,

```python
d = {'key': {1: 'one'}}
ic(d['key'][1])

class klass():
    attr = 'sim'
ic(klass.attr)
```

Imprime

```python
ic| d['key'][1]: 'one'
ic| klass.attr: 'sim'
```

Basta fornecer ao `ic()` uma variável ou expressão e todo o trabalho de depuração é feito de forma fácil e rápido.