# Classe "RandomForestRegressor"

A classe `RandomForestRegressor` do módulo `sklearn.ensemble` da biblioteca scikit-learn é uma implementação da técnica de regressão com Random Forest, que utiliza um conjunto de árvores de decisão para resolver problemas de regressão. Durante o treinamento, é combinado as previsões de cada árvore da "floresta" para produzir uma previsão final mais robusta e precisa.

## Sintaxe

```python
from sklearn.ensemble import RandomForestRegressor

model = RandomForestRegressor(n_estimators=10, criterion="squared_error", random_state=0)
```

### Principais parâmetros

- `n_estimators`: O número de árvores na floresta (um hiperparâmetro crucial).
- `criterion`: A função para medir a qualidade de uma divisão
- `random_state`: Semente aleatória para garantir a reprodutibilidade dos resultados.

### Principais atributos

- `estimators_`: Uma lista das árvores de decisão individuais na floresta.
- `feature_importances_`: Uma matriz que indica a importância relativa de cada característica no modelo treinado.

### Principais métodos

- `fit(X, y)`: Treina o modelo com os dados de treinamento, onde `X` são as características e `y` são os rótulos de saída.
- `predict(X)`: Realiza previsões com base nas características de entrada `X`.
- `score(X, y)`: Calcula o coeficiente de determinação $R^2$ das previsões em relação aos rótulos verdadeiros.

## Exemplo

```python
from sklearn.ensemble import RandomForestRegressor
from sklearn.datasets import load_boston
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score

# Carregar o conjunto de dados de exemplo (Boston Housing)
data = load_boston()
X = data.data
y = data.target

# Dividir os dados em conjunto de treinamento e conjunto de teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Criar uma instância do modelo RandomForestRegressor
model = RandomForestRegressor(n_estimators=100, random_state=42)

# Treinar o modelo
model.fit(X_train, y_train)

# Realizar previsões
y_pred = model.predict(X_test)

# Avaliar o desempenho do modelo
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f"Mean Squared Error (MSE): {mse}")
print(f"R-squared (R^2): {r2}")
```

## Conclusão

O `RandomForestRegressor` é uma ferramenta poderosa para resolver problemas de regressão em que as relações entre as características de entrada e a variável de saída podem ser complexas e não lineares. Ao criar um conjunto de árvores de decisão, ele lida bem com sobreajuste e fornece medidas de importância de recursos, permitindo que os usuários entendam quais características são mais influentes em suas previsões. Portanto, é uma escolha popular em muitas aplicações de aprendizado de máquina e ciência de dados.
