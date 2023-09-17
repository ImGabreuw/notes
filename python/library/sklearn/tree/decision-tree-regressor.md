# Classe "DecisionTreeRegressor"

A classe `DecisionTreeRegressor` faz parte do módulo `sklearn.tree` da biblioteca Scikit-Learn (ou sklearn) e é usada para construir modelos de regressão baseados em árvores de decisão. Ela cria uma árvore de decisão na qual cada nó representa uma decisão baseada em uma característica (ou atributo) dos dados de entrada. As folhas da árvore contêm valores numéricos que representam as previsões para a variável alvo (ou resposta) que está sendo prevista.

## Sintaxe

```python
from sklearn.tree import DecisionTreeRegressor

regressor = DecisionTreeRegressor()
```

## Principais atributos

- `criterion`: O critério usado para medir a qualidade de uma divisão. Pode ser "mse" para Erro Quadrado Médio (MSE) ou "mae" para Erro Absoluto Médio (MAE).
- `splitter`: O método usado para dividir os nós. Pode ser "best" para escolher a melhor divisão ou "random" para escolher uma divisão aleatória.
- `max_depth`: A profundidade máxima da árvore. Controla o número máximo de níveis na árvore.
- `min_samples_split`: O número mínimo de amostras necessárias para dividir um nó interno.
- `min_samples_leaf`: O número mínimo de amostras necessárias para formar uma folha (nó terminal).
- `max_features`: O número máximo de características a serem consideradas ao procurar pela melhor divisão.

## Principais métodos

- `fit(X, y)`: Treina o modelo usando os dados de treinamento `X` e as variáveis de destino `y`.
- `predict(X)`: Realiza previsões para novos dados `X`.
- `score(X, y)`: Calcula o coeficiente de determinação $R^2$ da previsão. Quanto mais próximo de 1, melhor a previsão.
- `get_depth()`: Retorna a profundidade da árvore.
- `get_n_leaves()`: Retorna o número de folhas na árvore.

## Exemplo

```python
from sklearn.tree import DecisionTreeRegressor

# Criando um regressor de árvore de decisão
regressor = DecisionTreeRegressor(max_depth=3)

# Treinando o modelo com dados de treinamento
regressor.fit(X_train, y_train)

# Realizando previsões
y_pred = regressor.predict(X_test)

# Calculando o coeficiente de determinação R^2
r_squared = regressor.score(X_test, y_test)

print("Coeficiente de Determinação (R^2):", r_squared)
```

## Conclusão

`DecisionTreeRegressor` é uma classe importante para a construção de modelos de regressão baseados em árvores de decisão. Ela permite criar modelos que podem ser usados para fazer previsões numéricas com base em características de entrada. No entanto, é importante ajustar seus parâmetros, como profundidade máxima da árvore, para evitar o overfitting (sobreajuste) ou o underfitting (subajuste) do modelo.