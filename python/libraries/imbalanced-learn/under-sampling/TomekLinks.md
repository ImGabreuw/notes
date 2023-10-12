A classe `TomekLinks` no módulo `imblearn.under_sampling` da biblioteca `imbalanced-learn` implementa a técnica de subamostragem baseada em Tomek Links. Essa técnica é usada para lidar com problemas de desequilíbrio de classes em conjuntos de dados, onde uma classe é muito mais representada do que a outra. O objetivo é melhorar o desempenho do modelo, simplificando a fronteira de decisão entre as classes.

## Sintaxe

```python
from imblearn.under_sampling import TomekLinks

# Crie uma instância da classe TomekLinks
tomek = TomekLinks(sampling_strategy='auto', n_jobs=1)

# Ajuste o método aos dados para realizar a subamostragem
X_resampled, y_resampled = tomek.fit_resample(X, y)
```

### Principais parâmetros

- `sampling_strategy`: Este parâmetro controla a estratégia de subamostragem. Pode ser definido como uma string, um dicionário ou um float. Um valor float representa a proporção de amostras a serem mantidas, enquanto uma string ou dicionário permite estratégias mais avançadas, como "majority", "not minority", entre outras.

- `n_jobs`: Este parâmetro controla o número de trabalhadores a serem usados para o cálculo. Um valor maior pode acelerar o processo em conjuntos de dados grandes.

### Principais métodos

- `fit_resample(X, y)`: Este método é usado para ajustar o modelo `TomekLinks` aos dados de entrada `X` e rótulos `y` e, em seguida, realizar a subamostragem com base nos Tomek Links identificados. Ele retorna um novo conjunto de dados balanceado.

A classe `TomekLinks` é uma ferramenta útil para melhorar o desempenho do modelo em problemas de classificação desequilibrada, eliminando exemplos que estão próximos da fronteira de decisão e que podem causar confusão ao algoritmo de aprendizado.

## Exemplo

```python
import numpy as np
from sklearn.datasets import make_classification
from imblearn.under_sampling import TomekLinks

# Crie um conjunto de dados de exemplo desequilibrado
X, y = make_classification(
    n_classes=2, class_sep=2, weights=[0.1, 0.9], n_informative=3, n_redundant=1,
    flip_y=0, n_features=20, n_clusters_per_class=1, n_samples=1000, random_state=10
)

# Crie uma instância da classe TomekLinks
tomek = TomekLinks(sampling_strategy='auto', n_jobs=1)

# Ajuste o método aos dados para realizar a subamostragem
X_resampled, y_resampled = tomek.fit_resample(X, y)

# Verifique o número de amostras antes e depois da subamostragem
print("Número de amostras antes da subamostragem:", len(X))
print("Número de amostras após a subamostragem:", len(X_resampled))
```

Neste exemplo, primeiro criamos um conjunto de dados desequilibrado usando a função `make_classification` do Scikit-Learn. Em seguida, utilizamos a classe `TomekLinks` para realizar a subamostragem. A diferença entre o número de amostras antes e depois da subamostragem mostra como o método removeu amostras que estavam próximas da fronteira de decisão.