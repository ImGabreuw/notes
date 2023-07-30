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

> ## **Função: `format`**

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

> ## **Interpolação de strings com "%"**

A interpolação de string com o operador `%` em Python é uma das formas mais antigas de formatar strings. Ela permite inserir valores em uma string usando _placeholders_ `%` que serão substituídos pelos valores fornecidos posteriormente.

A sintaxe da interpolação de string com `%` é a seguinte:

```python
"<placeholder 1> <placeholder 2>" % (<valor 1>, <valor 2>)
```

Aqui está uma explicação dos _placeholders_ mais comuns:

- `%s`: É usado para substituir uma string.

- `%d` ou `%i`: São usados para substituir números inteiros.

- `%.<número de casas decimais>f`: É usado para substituir números de ponto flutuante com o número especificado de casas decimais.

- `%<número de dígitos>x`: É usado para substituir valores inteiros em formato hexadecimal, com letras minúsculas (`abcdef0123456789`).

- `%<número de dígitos>X`: É usado para substituir valores inteiros em formato hexadecimal, com letras maiúsculas (`ABCDEF0123456789`).

**Exemplos**:

```python
nome = "Luiz"
preco = 1000.95897643

print("%s, o preço é R$%.2f" % (nome, preco))
# Saída: Luiz, o preço é R$1000.96
```

Neste exemplo, a string `"%s, o preço é R$%.2f"` contém dois _placeholders_: `%s` para a string `nome` e `%.2f` para o valor de ponto flutuante `preco`. O valor `%s` é substituído por "Luiz" e o valor `%.2f` é substituído por "1000.96" (o número formatado com duas casas decimais).

```python
num = 15

print("O hexadecimal de %d é %04x" % (num, num))
# Saída: O hexadecimal de 15 é 000f
```

Neste exemplo, temos dois _placeholders_ na string: `%d` para o número inteiro `num` e `%04x` para a representação hexadecimal do número inteiro `num`. O valor `%d` é substituído por "15" e o valor `%04x` é substituído por "000f" (formato hexadecimal com 4 dígitos, preenchido com zeros à esquerda).

Apesar de funcional, a interpolação com `%` tem algumas limitações e desvantagens. Ela não é tão legível quanto outras formas de formatação de strings, como as f-strings ou o método `.format()`. Portanto, é recomendado utilizar as f-strings ou `.format()` para formatar strings, pois elas oferecem mais recursos e são mais fáceis de ler e manter. A interpolação com `%` ainda é suportada por questões de compatibilidade com versões anteriores do Python, mas seu uso está sendo gradualmente substituído pelas f-strings e `.format()`.
