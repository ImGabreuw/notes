# Função `isnull`

A função `isnull()` é um método da biblioteca Pandas em Python, utilizado para verificar se há valores nulos (faltantes) em um DataFrame ou em uma Series. Ela retorna um DataFrame ou Series booleano, onde cada elemento é `True` se o valor for nulo (`NaN`) e `False` se o valor for não nulo.

**Sintaxe:**

```python
DataFrame.isnull()
```

**Principais características:**

- Retorna `True` para cada elemento que é nulo (NaN) e `False` para cada elemento que não é nulo.

- Pode ser aplicado tanto em um DataFrame completo quanto em colunas individuais (Series).

- Os valores nulos são frequentemente representados por `NaN` em conjuntos de dados do Pandas.

**Exemplo:**

```python
import pandas as pd

# Exemplo do DataFrame com valores nulos (NaN) na coluna 'age'
data = {'clientid': [28, 30, 31],
        'income': [59417.805406, 48528.852796, 23526.302555],
        'age': [None, None, None],
        'loan': [2082.625938, 6155.784670, 2862.010139],
        'default': [0, 0, 0]}

df = pd.DataFrame(data)

# Verificando quais valores da coluna 'age' são nulos (faltantes)
valores_nulos_age = df['age'].isnull()
print(valores_nulos_age)
```

**Saída:**

```
0    True
1    True
2    True
Name: age, dtype: bool
```

Neste exemplo, a função `isnull()` foi aplicada à coluna 'age' do DataFrame, retornando uma Series booleana indicando quais valores da coluna 'age' são nulos (True) e quais não são (False). Note que os valores nulos são representados por `True`.
