# Função "heatmap"

A função `heatmap` do Seaborn é uma ferramenta poderosa para visualizar e explorar matrizes de dados bidimensionais, como uma matriz de correlação. Ela cria uma representação gráfica da matriz de dados, onde as células são codificadas por cores, permitindo que você identifique padrões, tendências e relacionamentos entre os elementos da matriz.

## Sintaxe

```python
seaborn.heatmap(data, annot=None, fmt=".2f", cmap="coolwarm", cbar=True, linewidths=0.5, square=True)
```

### Parâmetros

- `data`: A matriz de dados bidimensional que você deseja visualizar.

- `annot` (opcional): Um valor booleano ou uma matriz do mesmo tamanho de `data`. Se for `True`, os valores reais da matriz serão exibidos nas células do heatmap. Se for uma matriz, ela deve ter as mesmas dimensões de `data` e será usada para anotar as células do heatmap.

- `fmt` (opcional): O formato dos valores de anotação nas células. É uma string de formatação que segue a sintaxe do método `.format()` do Python. Por exemplo, `".2f"` exibirá os valores com duas casas decimais.

- `cmap` (opcional): A paleta de cores a ser usada no heatmap. O Seaborn oferece várias paletas pré-definidas, como "coolwarm", "viridis", "magma", entre outras.

- `cbar` (opcional): Um valor booleano que indica se você deseja incluir uma barra de cores (colorbar) à direita do heatmap.

- `linewidths` (opcional): A largura das linhas que dividem as células do heatmap.

- `square` (opcional): Um valor booleano que indica se você deseja que as células do heatmap sejam quadradas (True) ou retangulares (False).

## Exemplo

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Criando uma matriz de dados de exemplo (matriz de correlação)
data = [
    [1.0, 0.8, 0.3, 0.1],
    [0.8, 1.0, 0.6, 0.2],
    [0.3, 0.6, 1.0, 0.7],
    [0.1, 0.2, 0.7, 1.0]
]

# Criando um heatmap
sns.heatmap(data, annot=True, fmt=".2f", cmap="coolwarm", cbar=True, linewidths=0.5, square=True)

# Exibindo o gráfico
plt.show()
```

Neste exemplo, criamos um heatmap para visualizar uma matriz de correlação fictícia. As configurações usadas incluem a anotação das células com os valores reais (usando `annot=True`), o formato dos valores com duas casas decimais (usando `fmt=".2f"`), a paleta de cores "coolwarm" (usando `cmap="coolwarm"`), a inclusão de uma colorbar (usando `cbar=True`), a largura das linhas de divisão de células (usando `linewidths=0.5`), e células quadradas (usando `square=True`).

O heatmap resultante fornece uma representação visual clara das relações na matriz de dados, destacando áreas com alta ou baixa correlação. É uma ferramenta valiosa para explorar e comunicar insights em análises de dados e estudos estatísticos.
