# formatação de strings (f-strings)

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
