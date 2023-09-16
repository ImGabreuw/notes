# Classe "LinearRegressor"

A classe `LinearRegression` do módulo `sklearn.linear_model` é uma das implementações mais simples e amplamente usadas da regressão linear em Python. Ela permite criar modelos de regressão linear para tarefas de regressão simples e múltipla. A regressão linear é um método estatístico que modela a relação linear entre uma variável dependente (a ser prevista) e uma ou mais variáveis independentes (usadas para fazer a previsão).

## Sintaxe

```python
from sklearn.linear_model import LinearRegression

modelo = LinearRegression()
```

### Principais atributos

- **`coef_`:** Este atributo retorna os coeficientes (ou pesos) estimados para cada variável dependente no modelo. Se você tiver várias características, haverá um coeficiente para cada uma delas.

  ```python
  coeficientes = modelo.coef_
  ```

- **`intercept_`:** Este atributo retorna o valor do intercepto do modelo, ou seja, o valor estimado da variável independente quando todas as variáveis dependentes são iguais a zero.

  ```python
  intercepto = modelo.intercept_
  ```

### Principais métodos

- **`fit(X, y)`:** Este método é usado para treinar o modelo de regressão linear. Ele espera duas entradas:

  - `X`: Uma matriz (ou DataFrame) de forma (n_samples, n_features) que representa as variáveis independentes (também chamadas de atributos ou características).
  - `y`: Um vetor (ou série) de forma (n_samples,) que representa a variável dependente que você deseja prever.

  ```python
  modelo.fit(X, y)
  ```

- **`predict(X)`:** Após treinar o modelo, você pode usá-lo para fazer previsões em novos dados. O método `predict` aceita um conjunto de dados de teste (matriz) como entrada e retorna as previsões correspondentes para a variável dependente.

  ```python
  y_pred = modelo.predict(X_test)
  ```

- **`score(X, y)`**: Este método é usado para calcular o coeficiente de determinação ($R^2$) do modelo.

  - `X`: é uma matriz (ou DataFrame) contendo as variáveis independentes (características).
  - `y`: é um vetor (ou série) contendo a variável dependente (alvo).

  ```python
  modelo.score(X_test, y_test)
  ```

## Exemplo

```python
from sklearn.linear_model import LinearRegression

# Dados de exemplo
X = [[1], [2], [3], [4]]
y = [2, 4, 5, 4]

# Criação do modelo
modelo = LinearRegression()

# Treinamento do modelo
modelo.fit(X, y)

# Fazendo previsões
X_test = [[5], [6]]
y_pred = modelo.predict(X_test)

# Coeficientes e intercepto
coeficientes = modelo.coef_
intercepto = modelo.intercept_
```

A classe `LinearRegression` do Scikit-Learn oferece uma maneira simples e eficaz de realizar análises de regressão linear em Python, tanto para problemas simples quanto para problemas mais complexos com várias variáveis independentes. É amplamente utilizada em tarefas de previsão e análise de dados.
