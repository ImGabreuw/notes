# formatação de strings

> ## **f-strings**

A formatação de strings com f-strings em Python é uma maneira moderna e poderosa de criar strings formatadas. As f-strings permitem que você insira valores de variáveis diretamente em uma string, facilitando a leitura e a manutenção do código.

Para criar uma f-string, coloque um `f` ou `F` antes das aspas de abertura da string. Em seguida, coloque as variáveis desejadas entre chaves `{}` dentro da string. As variáveis serão substituídas pelos seus valores correspondentes durante a execução.

**Padding em strings**:
O _padding_ em strings permite adicionar espaços em branco ou caracteres específicos para manter a string com um tamanho fixo.

- `>`: Adiciona espaços à esquerda.
- `<`: Adiciona espaços à direita.
- `^`: Adiciona espaços ao centro.

Exemplo:

```python
var = "ABC"

print(f"{var}")       # "ABC"
print(f"{var: >10}")  # "       ABC"
print(f"{var: <10}")  # "ABC       "
print(f"{var: ^10}")  # "   ABC    "
```

**Formatação de números**:
Para formatar números com f-strings, você pode especificar o número de casas decimais para números de ponto flutuante usando `:.nf`, onde `n` é o número de casas decimais desejado.

Exemplo:

```python
print(f"{3.1415:.2f}") # 3.14
```

Além disso, você pode usar o separador de milhar em números inteiros adicionando `,` após o `:`.

Exemplo:

```python
print(f"{100_000_000:,}") # 100,000,000
```

**Mostrar o sinal de números**:
Você pode forçar o sinal de números a ser exibido usando `:+` antes do `f`.

Exemplo:

```python
print(f"{10:+}") # +10
```

**Conversão de decimal para hexadecimal**:
Você pode converter números decimais para hexadecimal usando `:x` ou `:X` após o `f`. `:x` produzirá letras minúsculas em hexadecimal e `:X` produzirá letras maiúsculas.

Exemplo:

```python
print(f"1500 em hexadecimal é {1500:08x}") # 1500 em hexadecimal é 000005dc
print(f"1500 em hexadecimal é {1500:08X}") # 1500 em hexadecimal é 000005DC
```

**Conversion flags**:
Você pode usar os _conversion flags_ para invocar métodos especiais para formatar os valores:

- `!r`: Utiliza o método `__repr__()` para obter a representação do objeto.
- `!s`: Utiliza o método `__str__()` para obter a representação do objeto em formato de string.
- `!a`: Utiliza o método `ascii()` para obter a representação do objeto com escape de caracteres não ASCII.

Exemplo:

```python
valor = "Olá mundo"

print(f"{valor!r}") # 'Olá mundo'
print(f"{valor!s}") # Olá mundo
print(f"{valor!a}") # 'Ol\\xe1 mundo'
```

As f-strings são uma maneira poderosa de formatar strings de forma mais legível e flexível em Python, e geralmente são preferíveis em relação à interpolação com `%` ou ao método `.format()`. Elas tornam a escrita de strings formatadas mais eficiente e menos propensa a erros.

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
