# Classe "GridSearchCV"

A classe `GridSearchCV` faz parte do módulo `sklearn.model_selection` e é uma ferramenta poderosa para realizar a busca exaustiva por combinações ótimas de hiperparâmetros para um modelo de aprendizado de máquina. O "CV" em `GridSearchCV` se refere à validação cruzada, que é uma técnica utilizada para avaliar o desempenho do modelo de forma mais robusta.

**Funcionamento do GridSearchCV:**

1. Você especifica um modelo que deseja ajustar e os hiperparâmetros que deseja sintonizar.
2. Define uma grade de combinações possíveis de hiperparâmetros que deseja testar.
3. O `GridSearchCV` realiza uma busca exaustiva por todas as combinações da grade, treinando e avaliando o modelo para cada uma delas.
4. Utiliza validação cruzada para avaliar o desempenho de cada combinação.
5. Retorna os melhores hiperparâmetros com base na métrica de avaliação especificada.

**Principais parâmetros:**

- `estimator`: O modelo de aprendizado de máquina que você deseja ajustar.
- `param_grid`: Dicionário contendo os hiperparâmetros que você deseja ajustar e suas possíveis combinações.
- `scoring`: A métrica de avaliação que você deseja otimizar (por exemplo, 'accuracy', 'f1', 'roc_auc', etc.).
- `cv`: Número de dobras da validação cruzada a serem usadas durante a avaliação.

**Exemplo:**

```python
from sklearn.model_selection import GridSearchCV
from sklearn.ensemble import RandomForestClassifier

# Definindo o modelo e os hiperparâmetros a serem ajustados
model = RandomForestClassifier()
param_grid = {
    'n_estimators': [50, 100, 200],
    'max_depth': [None, 10, 20],
    'min_samples_split': [2, 5, 10]
}

# Criando o objeto GridSearchCV
grid_search = GridSearchCV(model, param_grid, scoring='accuracy', cv=5)

# Realizando a busca exaustiva
grid_search.fit(X_train, y_train)

# Obtendo os melhores hiperparâmetros e o melhor resultado
best_params = grid_search.best_params_
best_score = grid_search.best_score_
```

O `GridSearchCV` é uma abordagem eficiente para encontrar a combinação ideal de hiperparâmetros para um modelo, melhorando seu desempenho e evitando o ajuste excessivo (overfitting).
