# Função "fit"

A função `GaussianNB.fit()` faz parte do módulo `sklearn.naive_bayes` do scikit-learn e é usada para **ajustar um modelo de classificação Naive Bayes Gaussiano aos dados de treinamento**. O algoritmo Naive Bayes Gaussiano é apropriado para dados contínuos e **assume que as características seguem uma distribuição normal** (distribuição gaussiana).

### **Sintaxe**

```python
model.fit(X_train, y_train)
```

**Parâmetros:**

- `X_train`: Array-like ou matriz esparsa de formato (n_samples, n_features) que representa as características de treinamento.

- `y_train`: Array-like de formato (n_samples,) que representa os rótulos de classe de treinamento.

### **Exemplo**

```python
from sklearn.naive_bayes import GaussianNB
import numpy as np

# Dados de treinamento
X_train = np.array([[1.0, 2.0], [2.0, 3.0], [3.0, 4.0], [4.0, 5.0]])
y_train = np.array([0, 1, 0, 1])

# Criando e ajustando o modelo Naive Bayes Gaussiano
model = GaussianNB()
model.fit(X_train, y_train)
```

**Saída:**

Nenhum valor de saída é retornado explicitamente. O método `fit()` ajusta o modelo aos dados de treinamento para que ele esteja pronto para fazer previsões.

### **Conclusão**

Durante o processo de ajuste, o modelo estima as médias e os desvios padrão das distribuições normais para cada classe e cada atributo dos dados de treinamento. Essas estimativas são usadas posteriormente para calcular as probabilidades de classificação no momento da previsão. Após o ajuste, o modelo está pronto para ser usado para fazer previsões em novos dados não vistos.
