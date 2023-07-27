# Função `iloc`

A função `iloc` é um método da biblioteca Pandas em Python, utilizado para acessar e manipular dados em um DataFrame usando índices baseados em suas posições numéricas. O nome "iloc" vem de _"index location"_ (localização de índice).

**Sintaxe:**

```python
DataFrame.iloc[linhas, colunas]
```

**Principais características:**

- Permite acessar e manipular dados em um DataFrame usando índices numéricos baseados em suas posições.

- Os índices de linhas e colunas são inteiros e começam a partir de 0, seguindo a ordem das linhas e colunas do DataFrame.

- Pode ser usado para acessar células específicas, fatias de linhas ou colunas e combinações de ambas.

**Exemplo:**

```python
import pandas as pd

# Exemplo do DataFrame
data = {'clientid': [28, 30, 31],
        'income': [59417.805406, 48528.852796, 23526.302555],
        'age': [0.0, 0.0, 0.0],
        'loan': [2082.625938, 6155.784670, 2862.010139],
        'default': [0, 0, 0]}

data_credit = pd.DataFrame(data)

# Separando os previsores
X_credit = data_credit.iloc[:, 1:4]  # Todas as linhas e colunas as "income", "age" e "loan"
print(X_credit)

# Separando as classes
Y_credit = data_credit.iloc[:, 4] # Todas as linhas e apenas a coluna "default"
print(Y_credit)
```

> **OBS**: é uma boa prática utilizar o prefixo `X` na nomenclatura de variáveis que armazenam os valores destinados à serem os atributos previsores. Já o prefixo `Y` naquelas que guardam os valores considerados atributos de classe.

**Saída:**

Colunas "income", "age" e "loan" (previsores):

|       income | age |        loan |
| -----------: | --: | ----------: |
| 59417.805406 | 0.0 | 2082.625938 |
| 48528.852796 | 0.0 | 6155.784670 |
| 23526.302555 | 0.0 | 2862.010139 |

Coluna "default" (classe):

| default |
| ------: |
|       0 |
|       0 |
|       0 |

No exemplo, usamos a função `iloc` para obter os valores das colunas "income", "age" e "loan" que serão utilizados como atributos previsores. Além disso, ela também foi utilizada para obter os valores da coluna "default" que exerce a função de atributo de classe.