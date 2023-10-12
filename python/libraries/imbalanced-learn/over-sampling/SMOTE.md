A classe `SMOTE` (Synthetic Minority Over-sampling Technique) no módulo `imblearn.under_sampling` da biblioteca `imbalanced-learn` é usada para realizar a sobreamostragem de classes minoritárias em conjuntos de dados desequilibrados. O objetivo da sobreamostragem é criar novas amostras sintéticas da classe minoritária para equilibrar a distribuição de classes no conjunto de dados.

## Sintaxe

```python
from imblearn.over_sampling import SMOTE

smote = SMOTE(
    sampling_strategy='auto',  # ou um valor float ou dict personalizado
    random_state=None,
    k_neighbors=5,
    n_jobs=1
)
X_resampled, y_resampled = smote.fit_resample(X, y)
```

### Principais parâmetros

- `sampling_strategy`: Controla a estratégia de sobreamostragem. Pode ser definido como `'auto'` para equilibrar as classes automaticamente, um valor float para especificar a proporção desejada da classe minoritária em relação à classe majoritária, ou um dicionário personalizado para controlar a sobreamostragem de cada classe individualmente.

- `random_state`: Controla a semente aleatória para garantir reprodutibilidade.

- `k_neighbors`: Especifica o número de vizinhos próximos a serem usados para gerar amostras sintéticas.

- `n_jobs`: Número de núcleos de CPU a serem usados para paralelizar o processo de sobreamostragem.

### Principais métodos

- `fit_resample(X, y)`: Ajusta o método SMOTE aos dados de entrada `X` e `y` e gera novas amostras sintéticas para a classe minoritária.

## Exemplo

```python
from imblearn.over_sampling import SMOTE
from sklearn.datasets import make_classification

# Crie um conjunto de dados de exemplo desequilibrado
X, y = make_classification(
    n_classes=2, class_sep=2, weights=[0.1, 0.9], n_informative=3, n_redundant=1,
    flip_y=0, n_features=20, n_clusters_per_class=1, n_samples=1000, random_state=10
)

# Crie uma instância da classe SMOTE
smote = SMOTE(sampling_strategy='auto', random_state=42)

# Ajuste o método aos dados para realizar a sobreamostragem
X_resampled, y_resampled = smote.fit_resample(X, y)

# Verifique o número de amostras antes e depois da sobreamostragem
print("Número de amostras antes da sobreamostragem:", len(X))
print("Número de amostras após a sobreamostragem:", len(X_resampled))
```

Neste exemplo, primeiro criamos um conjunto de dados desequilibrado usando a função `make_classification` do Scikit-Learn. Em seguida, utilizamos a classe `SMOTE` para realizar a sobreamostragem da classe minoritária. O número de amostras após a sobreamostragem será maior do que o número de amostras antes, pois estamos gerando amostras sintéticas para equilibrar as classes.
