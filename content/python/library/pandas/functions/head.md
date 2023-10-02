# Função `head`

A função `head()` é usada para exibir as primeiras linhas de um DataFrame. Por padrão, ela mostra as primeiras 5 linhas do DataFrame, mas você pode especificar o número de linhas que deseja visualizar passando um argumento inteiro para a função. Por exemplo, `df.head(10)` exibirá as 10 primeiras linhas do DataFrame `df`.

**Exemplo:**

```python
import pandas as pd

# Criando um DataFrame de exemplo
data = {'Nome': ['Alice', 'Bob', 'Carol', 'David', 'Eva'],
        'Idade': [25, 30, 22, 28, 35],
        'Cidade': ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Brasília', 'Curitiba']}

df = pd.DataFrame(data)

# Exibindo as primeiras 3 linhas do DataFrame
print(df.head(3))
```

**Saída**:

```
    Nome  Idade       Cidade
0  Alice     25    São Paulo
1    Bob     30  Rio de Janeiro
2  Carol     22  Belo Horizonte
```