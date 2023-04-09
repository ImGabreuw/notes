# formatação de strings

> ## **f-strings**

A `f-string` é uma string que tem um `f` antes dela. Com isso é possível adicionar o valor de variáveis dentro da string a partir da notação `{}`.

```python
nome = "Luiz Otávio"
altura = 1.8

print(f"{nome} tem {altura} metros de altura.")
# Luiz Otávio tem 1.8 metros de altura
```

Além disso, é possível formatar números flutuantes utilizando `:` seguido do número de casas decimais desejados na formatação `.<casas decimais>f`.

```python
nome = "Luiz Otávio"
altura = 1.8

print(f"{nome} tem {altura:.2f} metros de altura.")
# Luiz Otávio tem 1.80 metros de altura
```

> `.2f` = número formatado com 2 casas decimais

**OBS**: é possível formatar um números com separador de milhar (`,`) ao inserir uma `,` antes da formatação de casas decimais:

```python
nome = "Luiz Otávio"
salario = 10_000.0

print(f"{nome} tem {altura:,.2f} metros de altura.")
# Luiz Otávio tem um salário de R$ 10,000.0.
```

Há um atalho do Python para inserir o nome da variável e o seu valor utilizando o `f-strings`:

```python
nome = input("Qual é o seu nome? ")
print(f"O seu nome é {nome=}")
```

Ao invés de utilizar:

```python
nome = input("Qual é o seu nome? ")
print(f"O seu nome é nome={nome}")
```

```bash
$ Qual é o seu nome? João
> O seu nome é nome=João
```

> ## **Método: `format()`**

A string é um objeto no Python, logo ela possui atributos e métodos, como por exemplo o método `format()`.

O método `format()` é responsável por substituir a expressão `{}` por um valor passado no argumento dele. Em caso de ter vários argumentos, a substituição é feito na ordem que os os argumentos são definidos.

```python
a = "A"
b = "B"
c = "C"

formato = "a={} b={} c={}".format(a, b, c)

print(formato) # a=A b=B c=C
```

É possível formatar casas decimais de um número com esse método a partir da seguinte notação:

```python
n = 3.1415

formato = "número={:.2f}".format(n)

print(formato)
# número=3.14
```

> **OBS**: `2` indica o número de casas decimais desejadas na formatação e `f` representa a formatação de um `float`

Há outras formas de referenciar os valores na formatação, além da ordem dos argumentos:

- **Índices**: por padrão a contagem dos índices no Python é iniciada no 0

  ```python
  a = "A"
  b = "B"
  c = "C"

  formato = "a={0} b={1} c={2}".format(a, b, c)

  print(formato) # a=A b=B c=C
  ```

- **Parâmetro nomeado**: atribuir um rótulo para cada valor definido no argumento do método

  ```python
  a = "A"
  b = "B"
  c = "C"

  formato = "a={0} b={valor2} c={valor3}".format(
    a,
    valor2=b,
    valor3=c
    )

  print(formato) # a=A b=B c=C
  ```

  **OBS**: na utilização de parâmetros nomeados, é obrigatório utilizar esse padrão para os parâmetros posteriores

  ```python
  a = "A"
  b = "B"
  c = "C"

  formato = "a={valor1} b={valor2} c={2}".format(
    valor1=a,
    valor2=b,
    c
    )

  print(formato) # Error
  ```
