A classe `DBSCAN` (Density-Based Spatial Clustering of Applications with Noise) no módulo `sklearn.cluster` implementa o [[Introdução ao algoritmo DBSCAN|algoritmo de agrupamento DBSCAN]], que é uma técnica de agrupamento baseada em densidade. O DBSCAN é amplamente utilizado para identificar grupos de pontos de dados em um espaço multidimensional com base na densidade espacial, sem a necessidade de especificar o número de clusters antecipadamente. Essa classe permite a aplicação do DBSCAN a conjuntos de dados em Python.

## Sintaxe

```python
from sklearn.cluster import DBSCAN

dbscan = DBSCAN(eps=1.0, min_samples=2)
```
### Principais parâmetros

- `eps`: O parâmetro `eps` (epsilon) define a distância máxima entre dois pontos de dados para que eles sejam considerados vizinhos. É a principal métrica que determina a densidade dos pontos. Pontos dentro dessa distância uns dos outros serão considerados parte do mesmo cluster. Escolher o valor adequado de `eps` é crítico e depende da natureza do conjunto de dados.

- `min_samples`: O parâmetro `min_samples` define o número mínimo de pontos que devem estar dentro do raio `eps` para que um ponto seja considerado um "ponto central". Pontos centrais são usados para formar clusters. É importante ajustar esse valor de acordo com a densidade esperada dos clusters.

### Principais métodos

- `fit(X)`: Este método é usado para ajustar o modelo DBSCAN aos dados de entrada `X`. Os dados devem ser fornecidos como uma matriz, onde cada linha representa um ponto de dados e cada coluna representa uma característica.

- `fit_predict(X)`: Este método ajusta o modelo DBSCAN aos dados de entrada `X` e retorna as etiquetas de cluster para cada ponto de dados. Os pontos que não pertencem a nenhum cluster são rotulados como -1, indicando ruído.

- `labels_`: Atributo que armazena as etiquetas de cluster atribuídas a cada ponto de dados após o ajuste do modelo.

- `core_sample_indices_`: Atributo que fornece os índices dos pontos centrais no conjunto de dados.

- `components_`: Atributo que retorna os pontos de dados que fazem parte dos clusters, excluindo os pontos de ruído.

**Exemplo:**

```python
from sklearn.cluster import DBSCAN
import numpy as np

# Criar um conjunto de dados de exemplo (array NumPy)
X = np.array([[1, 2], [1, 4], [1, 0], [4, 2], [4, 4], [4, 0]])

# Criar um objeto DBSCAN com parâmetros personalizados
dbscan = DBSCAN(eps=1.0, min_samples=2)

# Ajustar o modelo aos dados e obter as etiquetas de cluster
labels = dbscan.fit_predict(X)

# Exibir as etiquetas de cluster atribuídas a cada ponto
print(labels)
```

Neste exemplo, o DBSCAN é aplicado a um conjunto de dados simples, onde `eps` é a distância máxima entre pontos para formar um cluster e `min_samples` é o número mínimo de pontos em um cluster. O método `fit_predict` é usado para atribuir etiquetas de cluster a cada ponto de dados com base nas configurações definidas.

O DBSCAN é uma ferramenta útil para identificar grupos em conjuntos de dados onde o número de clusters não é conhecido antecipadamente e onde os clusters podem ter formas complexas e densidades variáveis.