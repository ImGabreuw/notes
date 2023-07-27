# Tratamento de dados

> ## **Tratamento de valores inconsistentes**

O tratamento de dados em uma base de dados é uma etapa crucial na análise de dados, pois dados inconsistentes podem prejudicar a qualidade e a confiabilidade das análises e modelos construídos. Abaixo, estão listados as três principais abordagens:

1. **Apagar a coluna inteira, caso a maioria dos dados dessa coluna estejam inconsistentes:**

   Nesta abordagem, se a maioria dos valores em uma coluna estiver inconsistente, pode ser uma opção eliminar completamente essa coluna da base de dados, pois ela não fornecerá informações relevantes para a análise. No entanto, é importante avaliar o impacto dessa exclusão na análise geral, pois pode haver informações importantes em outras colunas associadas.

2. **Apagar apenas os registros com dados inconsistentes:**

   Nessa abordagem, os registros (linhas) que contêm valores inconsistentes são removidos da base de dados. Isso pode ser uma solução viável quando apenas uma pequena proporção de registros está com dados inconsistentes. A exclusão dos registros evita que os dados errôneos afetem a análise de outras observações.

3. **Substituir os valores inconsistentes pela média:**

   Essa abordagem é útil quando apenas alguns valores estão inconsistentes na coluna. Nesse caso, podemos calcular a média dos valores válidos da coluna e substituir os valores inconsistentes por essa média. Essa abordagem mantém a quantidade de dados e pode ser uma solução razoável para evitar perda de informações.

### **Exemplo**

Considere a seguinte base de dados com as colunas: 'clientid', 'income', 'age', 'loan' e 'default'. Suponha que a coluna 'age' contenha apenas valores negativos como dados inconsistentes.

| clientid | income | age | loan | default |
| -------- | ------ | --- | ---- | ------- |
| 1        | 50000  | -35 | 2000 | No      |
| 2        | 30000  | -27 | 1000 | Yes     |
| 3        | 25000  | 32  | 1500 | No      |
| 4        | 70000  | -20 | 3000 | Yes     |
| 5        | 40000  | -45 | 1000 | No      |

**Apagar a coluna inteira, caso a maioria dos dados dessa coluna estejam inconsistentes:**

Neste exemplo, se a coluna 'age' contém apenas valores negativos, podemos optar por apagar toda a coluna, já que não possui dados válidos para análise.

```python
treated_base_credit = base_credit.drop("age", axis=1) # axis = 1 <=> coluna
print(treated_base_credit)
```

| clientid | income | loan | default |
| -------- | ------ | ---- | ------- |
| 1        | 50000  | 2000 | No      |
| 2        | 30000  | 1000 | Yes     |
| 3        | 25000  | 1500 | No      |
| 4        | 70000  | 3000 | Yes     |
| 5        | 40000  | 1000 | No      |

**Apagar apenas os registros com dados inconsistentes:**

Nessa abordagem, removeríamos as linhas 1, 2 e 4, pois elas contêm valores negativos na coluna 'age'.

```python
treated_base_credit = base_credit.drop(base_credit[base_credit["age"] < 0].index)
print(treated_base_credit)
```

| clientid | income | age | loan | default |
| -------- | ------ | --- | ---- | ------- |
| 3        | 25000  | 32  | 1500 | No      |
| 5        | 40000  | -45 | 1000 | No      |

**Substituir os valores inconsistentes pela média:**

Nessa abordagem, calcularíamos a média dos valores válidos da coluna 'age' (32 anos) e substituiríamos os valores inconsistentes pela média.

```python
average = base_credit["age"][base_credit["age"] > 0].mean()
base_credit.loc[base_credit["age"] < 0, "age"] = average
```

| clientid | income | age | loan | default |
| -------- | ------ | --- | ---- | ------- |
| 1        | 50000  | 32  | 2000 | No      |
| 2        | 30000  | 32  | 1000 | Yes     |
| 3        | 25000  | 32  | 1500 | No      |
| 4        | 70000  | 32  | 3000 | Yes     |
| 5        | 40000  | 32  | 1000 | No      |

> ## **Tratamento de valores faltantes**

O tratamento de valores faltantes em uma base de dados é uma etapa crucial na análise de dados e construção de modelos de aprendizado de máquina. Valores faltantes podem ocorrer devido a várias razões, como erros de medição, falhas em sistemas de coleta de dados ou simplesmente porque certos atributos não foram preenchidos pelos usuários.

A seguir estão algumas abordagens comuns para tratar valores faltantes em uma base de dados:

1. **Remoção de registros**: Uma abordagem simples é remover os registros que contêm valores faltantes. Isso é adequado quando o número de registros com valores faltantes é pequeno em comparação com o tamanho total do conjunto de dados, e quando a exclusão desses registros não causa uma perda significativa de informações. No entanto, essa abordagem pode ser arriscada, pois pode levar à perda de informações valiosas.

2. **Preenchimento com valores padrão**: Em alguns casos, é possível preencher os valores faltantes com valores padrão, como zero, média, mediana ou moda dos dados existentes. Essa abordagem é apropriada para dados numéricos ou categóricos, mas deve ser usada com cuidado para não distorcer a distribuição dos dados.

3. **Interpolação**: Para dados sequenciais ou temporais, a interpolação pode ser usada para preencher os valores faltantes com base em valores adjacentes. Isso é especialmente útil quando há uma tendência ou padrão claro nos dados.

4. **Modelos de aprendizado**: Em alguns casos, é possível usar algoritmos de aprendizado de máquina para prever os valores faltantes com base nos dados existentes. Essa abordagem pode ser mais sofisticada, mas pode ser útil quando os valores faltantes estão relacionados a outros atributos do conjunto de dados.

5. **Exclusão seletiva de colunas**: Se uma coluna tiver uma grande quantidade de valores faltantes e não for crítica para a análise ou modelo, pode ser prudente excluí-la completamente da base de dados.

O método escolhido para tratar valores faltantes dependerá da natureza dos dados, da quantidade de valores faltantes e do impacto que a escolha terá nas análises ou modelos a serem construídos. É importante lembrar que o tratamento adequado de valores faltantes pode melhorar a qualidade dos resultados obtidos a partir dos dados e garantir que as análises e modelos sejam mais robustos e precisos. O Pandas oferece várias funções e métodos úteis para lidar com valores faltantes, como `isnull()`, `fillna()`, `dropna()` e outros.

### **Exemplo**

Vamos usar um exemplo hipotético de uma base de dados com as colunas 'clientid', 'income', 'age', 'loan', e 'default', que contém alguns valores faltantes na coluna 'age':

```python
import pandas as pd
import numpy as np

# Exemplo de base de dados com valores faltantes
data = {
    'clientid': [1, 2, 3, 4, 5],
    'income': [50000, 60000, np.nan, 45000, 55000],
    'age': [30, np.nan, 25, np.nan, 35],
    'loan': [1000, 2000, 1500, np.nan, 3000],
    'default': [0, 1, 0, 1, 0]
}

df = pd.DataFrame(data)

print(df)
```

Saída:

|     | clientid |  income |  age |   loan | default |
| --- | -------: | ------: | ---: | -----: | ------: |
| 0   |        1 | 50000.0 | 30.0 | 1000.0 |       0 |
| 1   |        2 | 60000.0 |  NaN | 2000.0 |       1 |
| 2   |        3 |     NaN | 25.0 | 1500.0 |       0 |
| 3   |        4 | 45000.0 |  NaN |    NaN |       1 |
| 4   |        5 | 55000.0 | 35.0 | 3000.0 |       0 |

Agora, vamos realizar as três abordagens para tratar os valores faltantes:

1.  Remoção de registros com valores faltantes:

    ```python
    # Removendo registros com valores faltantes
    df_dropna = df.dropna()

    print(df_dropna)
    ```

    Saída:

    |     | clientid |  income |  age |   loan | default |
    | --: | -------: | ------: | ---: | -----: | ------: |
    |   0 |        1 | 50000.0 | 30.0 | 1000.0 |       0 |
    |   4 |        5 | 55000.0 | 35.0 | 3000.0 |       0 |

2.  Preenchimento com valores padrão (preenchendo 'age' com a média):

    ```python
    # Preenchendo valores faltantes na coluna 'age' com a média
    mean_age = df['age'].mean()
    df_fillna_mean = df.fillna({'age': mean_age})

    print(df_fillna_mean)
    ```

    Saída:

    |     | clientid |  income |  age |   loan | default |
    | --: | -------: | ------: | ---: | -----: | ------: |
    |   0 |        1 | 50000.0 | 30.0 | 1000.0 |       0 |
    |   1 |        2 | 60000.0 | 30.0 | 2000.0 |       1 |
    |   2 |        3 |     NaN | 25.0 | 1500.0 |       0 |
    |   3 |        4 | 45000.0 | 30.0 |    NaN |       1 |
    |   4 |        5 | 55000.0 | 35.0 | 3000.0 |       0 |

3.  Interpolação para preencher valores faltantes na coluna 'age':

    ```python
    # Preenchendo valores faltantes na coluna 'age' com interpolação linear
    df_interpolate = df.interpolate()

    print(df_interpolate)
    ```

    Saída:

    |     | clientid |  income |  age |   loan | default |
    | --: | -------: | ------: | ---: | -----: | ------: |
    |   0 |        1 | 50000.0 | 30.0 | 1000.0 |       0 |
    |   1 |        2 | 60000.0 | 27.5 | 2000.0 |       1 |
    |   2 |        3 |     NaN | 25.0 | 1500.0 |       0 |
    |   3 |        4 | 45000.0 | 30.0 | 2250.0 |       1 |
    |   4 |        5 | 55000.0 | 35.0 | 3000.0 |       0 |

Essas são algumas das abordagens mais comuns para tratar valores faltantes em uma base de dados usando o Pandas. O método escolhido dependerá do contexto e da natureza dos dados. Lembrando que a escolha adequada do tratamento de valores faltantes é fundamental para manter a integridade e confiabilidade dos resultados das análises e modelos construídos com os dados.
