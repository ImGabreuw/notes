# Classe "SVM"

A classe `SVR` no módulo `sklearn.svm` (Support Vector Regression) é uma implementação do algoritmo de Support Vector Machines (SVM) para tarefas de regressão. Ela é usada quando você deseja realizar tarefas de previsão ou regressão, onde a variável de destino é contínua. O objetivo é encontrar uma função que mapeie os recursos de entrada para os valores de destino de maneira eficaz, especialmente quando há uma relação complexa ou não linear entre os recursos e os valores de destino.

## Sintaxe

```python
from sklearn.svm import SVR

model = SVR(kernel='rbf', C=1.0, epsilon=0.1)
```

### Principais parâmetros

- `kernel`: Define o tipo de kernel a ser usado. Pode ser um dos kernels suportados, como 'linear', 'poly' (polinomial), 'rbf' (radial basis function), etc. O kernel escolhido determina a natureza da transformação dos dados.

- `C`: É um hiperparâmetro de regularização que controla a penalização dos erros de treinamento. Valores menores de C suavizam a função de decisão, enquanto valores maiores enfatizam a classificação correta dos pontos de treinamento.

- `epsilon`: É um hiperparâmetro que controla a largura da faixa de insensibilidade em torno da função de regressão. Isso permite que alguns pontos estejam dentro da faixa de insensibilidade sem afetar a função de decisão.

- `degree`: Apenas relevante para kernels polinomiais. Define o grau do polinômio usado na transformação dos dados.

- `gamma`: Um hiperparâmetro que afeta a forma da função de kernel RBF. Controla o quanto os pontos de treinamento influenciam na definição da função de decisão. Valores menores fazem com que os pontos distantes tenham menos influência.

### Principais métodos

- `fit(X, y)`: Este método é usado para treinar o modelo SVR com os dados de treinamento, onde `X` são os recursos de entrada e `y` são os valores de destino.

- `predict(X)`: Uma vez que o modelo é treinado, você pode usar este método para fazer previsões para novos dados de entrada `X`.

- `score(X, y)`: Este método retorna a pontuação R-squared da previsão. Quanto mais próximo de 1, melhor é o desempenho do modelo.

## Exemplo

```python
from sklearn.svm import SVR
import numpy as np

# Dados de exemplo
X = np.array([1, 2, 3, 4, 5]).reshape(-1, 1)
y = np.array([2, 4, 6, 8, 10])

# Criação do modelo SVR
svr = SVR(kernel='linear', C=1.0)

# Treinamento do modelo
svr.fit(X, y)

# Previsão
predicted = svr.predict([[6]])
print(predicted)  # Saída: [12.]
```

Neste exemplo, criamos um modelo SVR com um kernel linear, treinamos o modelo com dados de entrada `X` e valores de destino `y`, e então usamos o modelo treinado para prever o valor correspondente a `X = 6`, que é aproximadamente 12.

## Conclusão

A classe `SVR` do módulo `sklearn.svm` é uma ferramenta poderosa para problemas de regressão, especialmente quando a relação entre os recursos de entrada e os valores de destino é complexa ou não linear. A escolha do kernel e dos hiperparâmetros adequados é fundamental para o desempenho do modelo. Experimentar diferentes configurações é muitas vezes necessário para encontrar a melhor solução para um problema específico.
