A função `dendrogram` do módulo `scipy.cluster.hierarchy` é usada para criar um dendrograma a partir de uma matriz de ligação (linkage matrix) calculada após a realização de um algoritmo de agrupamento hierárquico. Um dendrograma é um tipo de representação gráfica de uma hierarquia de agrupamentos, onde os objetos são aninhados em grupos com base em sua similaridade.

**Parâmetros principais:**

- **Z (array-like)**: A matriz de ligação gerada pelo algoritmo de agrupamento hierárquico, que conecta grupos de observações em uma estrutura hierárquica.

- **truncate_mode (str, opcional)**: Este parâmetro permite que você especifique como deseja cortar o dendrograma se ele for muito longo para caber na tela. Os valores possíveis incluem "lastp" (mantém apenas os últimos `p` níveis de clusters), "level" (corta o dendrograma em uma altura especificada) e "mtica" (mantém o maior nível de clusters possível).

- **p (int, opcional)**: Se o `truncate_mode` for definido como "lastp", este parâmetro especifica quantos níveis de clusters a serem mantidos. Por exemplo, `p=3` manterá apenas os últimos três níveis de clusters.

- **level (float, opcional)**: Se o `truncate_mode` for definido como "level", este parâmetro especifica a altura na qual o dendrograma deve ser cortado. A altura é geralmente uma distância euclidiana entre clusters.

- **above_threshold_color (str, opcional)**: A cor dos clusters acima do nível de corte especificado quando `truncate_mode` é usado.

- **below_threshold_color (str, opcional)**: A cor dos clusters abaixo do nível de corte especificado quando `truncate_mode` é usado.

**Retorno:**

A função `dendrogram` retorna um objeto de dicionário que contém várias informações sobre o dendrograma gerado, incluindo as posições x e y dos nós (clusters) e informações sobre quais pontos de dados pertencem a cada cluster.

**Exemplo:**

```python
import numpy as np
from scipy.cluster.hierarchy import dendrogram, linkage
import matplotlib.pyplot as plt

# Base de dados
x = [20,  27,  21,  37,  46, 53, 55,  47,  52,  32,  39,  41,  39,  48,  48]
y = [1000, 1200, 2900, 1850, 900, 950, 2000, 2100, 3000, 5900, 4100, 5100, 7000, 5000, 6500]

base_salary = np.array([
  [age, salary]
  for age, salary in zip(x, y)
])

# Calcule a matriz de ligação
linkage_matrix = linkage(base_salary, method='ward')

# Crie o dendrograma
dendrogram_ = dendrogram(linkage_matrix)
plt.title("Dendrograma")
plt.xlabel("Pessoas")
plt.ylabel("Distância")
plt.axhline(y=3.5, color='r', linestyle='--');
```

Saída:

![](exemplo-dendrograma.png)

> [!note]
> A linha representa o número ideal de cluster, que no caso é 3, pois a reta da direita não cruza com nenhum ponto na horizontal, com base isso essa reta seria um bom ponto de análise.

Neste exemplo, geramos dados aleatórios, calculamos a matriz de ligação usando o método de ligação "ward", criamos o dendrograma e o exibimos usando Matplotlib. O dendrograma mostrará como os dados foram agrupados hierarquicamente com base em sua similaridade. Você pode ajustar a aparência do dendrograma e personalizá-lo de acordo com suas necessidades.
