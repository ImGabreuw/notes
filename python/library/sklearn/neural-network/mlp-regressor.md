# Classe "MLPRegressor"

A classe `MLPRegressor` no módulo `sklearn.neural_network` é uma implementação de uma rede neural artificial (RNA) para tarefas de regressão. Esta classe é usada quando você deseja realizar tarefas de previsão ou regressão em que a variável de destino é contínua, ou seja, quando você está tentando prever um valor numérico com base em um conjunto de características de entrada.

A sigla "MLP" significa "Multi-Layer Perceptron", que é um tipo de arquitetura de rede neural feedforward. Esta rede neural é chamada de "perceptron" porque é composta por unidades de processamento simples chamadas de "neurônios" ou "perceptrons", organizadas em camadas interconectadas.

## Sintaxe

```python
from sklearn.neural_network import MLPRegressor

model = MLPRegressor(hidden_layer_sizes=(100, ), activation='relu', solver='adam', alpha=0.0001, max_iter=200)
```

### Principais parâmetros

- `hidden_layer_sizes`: Uma tupla que especifica o número de neurônios em cada camada oculta da rede. Por exemplo, `(100, 50)` cria uma rede com duas camadas ocultas, uma com 100 neurônios e outra com 50 neurônios.

- `activation`: Define a função de ativação usada nos neurônios. Pode ser 'identity', 'logistic', 'tanh' ou 'relu', entre outros.

- `solver`: Define o algoritmo de otimização usado para ajustar os pesos da rede. Pode ser 'lbfgs', 'sgd' (descida de gradiente estocástica) ou 'adam'.

- `alpha`: É um hiperparâmetro de regularização que controla a penalização dos pesos da rede para evitar o overfitting.

- `max_iter`: Especifica o número máximo de iterações que o algoritmo de treinamento deve realizar. Se o algoritmo atingir o número máximo de iterações antes de convergir, o treinamento será interrompido.

### Principais métodos

- `fit(X, y)`: Este método é usado para treinar o modelo MLPRegressor com os dados de treinamento, onde `X` são os recursos de entrada e `y` são os valores de destino.

- `predict(X)`: Uma vez que o modelo é treinado, você pode usar este método para fazer previsões para novos dados de entrada `X`.

- `score(X, y)`: Este método retorna o coeficiente de determinação R-squared da previsão. Quanto mais próximo de 1, melhor é o desempenho do modelo.

## Exemplo

```python
from sklearn.neural_network import MLPRegressor
import numpy as np

# Dados de exemplo
X = np.array([1, 2, 3, 4, 5]).reshape(-1, 1)
y = np.array([2, 4, 6, 8, 10])

# Criação do modelo MLPRegressor
mlp_regressor = MLPRegressor(hidden_layer_sizes=(100,), activation='relu', solver='adam', alpha=0.0001, , max_iter=200)

# Treinamento do modelo
mlp_regressor.fit(X, y)

# Previsão
predicted = mlp_regressor.predict([[6]])
print(predicted)  # Saída: [11.966...]
```

Neste exemplo, criamos um modelo MLPRegressor com uma camada oculta de 100 neurônios e treinamos o modelo com dados de entrada `X` e valores de destino `y`. Usamos o modelo treinado para prever o valor correspondente a `X = 6`.

## Conclusão

Em resumo, a classe `MLPRegressor` do módulo `sklearn.neural_network` é uma ferramenta poderosa para problemas de regressão, permitindo a modelagem de relações complexas entre variáveis de entrada e saída. A escolha adequada dos hiperparâmetros, como o número de camadas ocultas e neurônios, é crucial para obter um bom desempenho em problemas do mundo real.