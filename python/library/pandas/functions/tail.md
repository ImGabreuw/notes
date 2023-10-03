# Função `tail`

A função `tail()` é usada para exibir as últimas linhas de um DataFrame. Assim como `head()`, por padrão, ela mostra as últimas 5 linhas do DataFrame, mas você pode especificar o número de linhas que deseja visualizar passando um argumento inteiro para a função. Por exemplo, `df.tail(10)` exibirá as 10 últimas linhas do DataFrame `df`.

**Exemplo:**

```python
import pandas as pd

# Criando um DataFrame de exemplo
data = {'Nome': ['Alice', 'Bob', 'Carol', 'David', 'Eva'],
        'Idade': [25, 30, 22, 28, 35],
        'Cidade': ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Brasília', 'Curitiba']}

df = pd.DataFrame(data)

# Exibindo as últimas 2 linhas do DataFrame
print(df.tail(2))
```

**Saída:**

```
   Nome  Idade    Cidade
3 David     28  Brasília
4   Eva     35  Curitiba
```
