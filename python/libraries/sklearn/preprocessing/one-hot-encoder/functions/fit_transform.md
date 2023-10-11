# Função `fit_transform`

O método `ColumnTransformer.fit_transform` é uma função do módulo `sklearn.compose` que permite realizar transformações específicas em colunas selecionadas de um conjunto de dados. Quando aplicado em conjunto com o _One Hot Encoder_, ele possibilita a **conversão de atributos categóricos em valores numéricos binários**.

### **Sintaxe**

```python
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder

ct = ColumnTransformer(
    transformers=[('encoder', OneHotEncoder(), lista_colunas_categoricas)],
    remainder='passthrough'
)

X_transformed = ct.fit_transform(X)
```

**Parâmetros:**

- `transformers`: Recebe uma lista de tuplas, onde cada tupla contém um nome para a transformação ('encoder' neste caso), o objeto do transformador (`OneHotEncoder`)e por fim a lista de colunas que devem passar pela transformação.

- `remainder`: Determina como as colunas não especificadas na transformação serão tratadas. Neste caso, `passthrough` significa que essas colunas não serão alteradas e serão mantidas no conjunto de dados resultante.

### **Exemplo**

```python
import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder

# Cria um DataFrame de exemplo
data = {
    'cor': ['vermelho', 'verde', 'azul', 'vermelho', 'azul'],
    'tamanho': ['grande', 'médio', 'médio', 'pequeno', 'grande'],
    'preco': [100, 50, 75, 30, 90]
}
df = pd.DataFrame(data)

# Seleciona as colunas categóricas para transformação
lista_colunas_categoricas = ['cor', 'tamanho']

# Cria o ColumnTransformer e aplica o One Hot Encoder nas colunas categóricas
ct = ColumnTransformer(
    transformers=[('encoder', OneHotEncoder(), lista_colunas_categoricas)],
    remainder='passthrough'
)

X_transformed = ct.fit_transform(df)

# Exibe o resultado
print(X_transformed)
```

**Saída:**

```
[[1. 0. 0. 1. 0. 0. 0. 0. 0. 0. 100]
 [0. 1. 0. 0. 1. 0. 0. 0. 0. 0. 50]
 [0. 0. 1. 0. 1. 0. 1. 0. 0. 0. 75]
 [1. 0. 0. 0. 0. 1. 0. 0. 1. 0. 30]
 [0. 0. 1. 0. 0. 0. 0. 1. 0. 1. 90]]
```

No exemplo acima, temos um DataFrame com três colunas: 'cor', 'tamanho' e 'preco'. Utilizamos o `ColumnTransformer` em conjunto com o One Hot Encoder para transformar as colunas categóricas 'cor' e 'tamanho' em valores numéricos binários, enquanto mantemos a coluna 'preco' sem alterações.

O One Hot Encoder criou novas colunas binárias para cada categoria única nas colunas 'cor' e 'tamanho', resultando em uma matriz numérica com a representação das categorias em formato binário. Essa abordagem é útil para que modelos de aprendizado de máquina possam trabalhar com atributos categóricos de forma adequada.