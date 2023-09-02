# Função "cross_val_score"

As funções `cross_val_score` são parte do módulo `sklearn.model_selection` do scikit-learn e oferecem uma maneira conveniente de realizar a validação cruzada e obter as métricas de desempenho de um modelo de aprendizado de máquina. A validação cruzada é uma técnica importante para avaliar o desempenho do modelo de forma mais robusta, especialmente quando se lida com conjuntos de dados limitados.

**Funcionamento do `cross_val_score`:**

1. Você especifica o modelo que deseja avaliar e os dados de entrada (`X`) e saída (`y`).
2. Define a métrica de avaliação que deseja usar (por exemplo, 'accuracy', 'f1', 'roc_auc', etc.).
3. Especifica o número de partes (fold) da validação cruzada a serem usadas.
4. A função divide os dados em subconjuntos de treinamento e teste de acordo com o número de partes definido.
5. O modelo é treinado em cada subconjunto de treinamento e avaliado na parte de teste usando a métrica especificada.
6. As pontuações de desempenho são retornadas como uma lista.

**Principais parâmetros:**

- `estimator`: O modelo que você deseja avaliar.
- `X`: Os dados de entrada.
- `y`: Os rótulos de saída.
- `scoring`: A métrica de avaliação a ser usada (por exemplo, 'accuracy', 'f1', 'roc_auc', etc.).
- `cv`: Número de partes da validação cruzada.

**Exemplo:**

```python
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import RandomForestClassifier

# Definindo o modelo
model = RandomForestClassifier(criterion='entropy', min_samples_leaf=1, min_samples_split=5, n_estimators=10)

# Calculando as pontuações de validação cruzada para a métrica 'accuracy'
scores = cross_val_score(model, X_data, y_data, scoring='accuracy', cv=10)

# Obtendo a média das pontuações de validação cruzada
average_score = scores.mean()
```

O `cross_val_score` é uma ferramenta útil para obter uma estimativa mais precisa do desempenho do modelo e é especialmente útil quando você quer comparar diferentes modelos ou ajustar hiperparâmetros para encontrar a melhor configuração.