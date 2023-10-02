# Função `drop`

A função `drop()` é uma importante função da biblioteca Pandas em Python, utilizada para remover linhas ou colunas de um _DataFrame_. Essa função permite que você exclua dados indesejados ou realiza modificações em um _DataFrame_ sem a necessidade de criar um novo objeto.

**Sintaxe:**

```python
dataframe.drop(labels, axis=0, inplace=False)
```

**Principais parâmetros:**

- **labels:** Obrigatório. Pode ser um rótulo único ou uma lista de rótulos, representando as linhas ou colunas que você deseja remover.

- **axis:** Opcional. Especifica o eixo ao longo do qual a remoção deve ocorrer. Pode ser 0 para remover linhas (registros) ou 1 para remover colunas. Deve-se passar os índices das linhas que deseja remover, e para isso você pode utilizar o atributo `index` do _DataFrame_.

- **inplace:** Opcional. Se True, a modificação é realizada no próprio _DataFrame_, e a função não retorna nada (None). Se False (padrão), a função retorna um novo _DataFrame_ sem as linhas ou colunas especificadas.

**Exemplos:**

1. Remover linhas de um _DataFrame_:

   ```python
   import pandas as pd

   data = {'Nome': ['João', 'Maria', 'Pedro'],
           'Idade': [25, 30, 22],
           'Cidade': ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte']}

   df = pd._DataFrame_(data)

   # Remover a linha de índice 1
   df_sem_linha = df.drop(1)
   print(df_sem_linha)

   # Saída:
   #    Nome  Idade        Cidade
   # 0  João     25     São Paulo
   # 2 Pedro     22  Belo Horizonte
   ```

2. Remover colunas de um _DataFrame_:

   ```python
   # Remover a coluna 'Cidade'
   df_sem_coluna = df.drop('Cidade', axis=1)
   print(df_sem_coluna)

   # Saída:
   #     Nome  Idade
   # 0   João     25
   # 1  Maria     30
   # 2  Pedro     22
   ```

3. Remover linhas e colunas ao mesmo tempo:

   ```python
   # Remover a linha de índice 1 e a coluna 'Cidade'
   df_sem_linha_coluna = df.drop(df[df["Idade"] >= 30].index).drop('Cidade', axis=1)
   print(df_sem_linha_coluna)
   # Saída:
   #    Nome  Idade
   # 0  João     25
   # 2 Pedro     22
   ```

A função `drop()` é uma ferramenta útil para manipulação e limpeza de dados em DataFrames, permitindo que você realize operações de exclusão de forma eficiente. É importante observar que a função por padrão retorna um novo _DataFrame_ com as modificações, preservando o _DataFrame_ original. Caso você queira modificar o _DataFrame_ original, você pode usar o parâmetro `inplace=True`.
