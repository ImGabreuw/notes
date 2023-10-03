# Função "predict"

A função `GaussianNB.predict()` faz parte do módulo `sklearn.naive_bayes` do scikit-learn e é usada para **fazer previsões de classe em novos dados** usando um modelo de classificação Naive Bayes Gaussiano previamente ajustado.

### **Sintaxe**

```python
y_pred = model.predict(X_new)
```

**Parâmetros:**

- `X_new`: Array-like ou matriz esparsa de formato (n_samples, n_features) que representa os novos dados de entrada para os quais queremos fazer as previsões.

**Retorno:**

- `y_pred`: Array de formato (n_samples,) contendo as previsões de classe para os dados de entrada fornecidos.

### **Exemplo:**

```python
from sklearn.naive_bayes import GaussianNB
import numpy as np

# Dados de treinamento
X_train = np.array([[1.0, 2.0], [2.0, 3.0], [3.0, 4.0], [4.0, 5.0]])
y_train = np.array([0, 1, 0, 1])

# Dados de teste
X_test = np.array([[1.5, 3.5], [3.5, 6.0]])

# Criando e ajustando o modelo Naive Bayes Gaussiano
model = GaussianNB()
model.fit(X_train, y_train)

# Fazendo previsões nos dados de teste
y_pred = model.predict(X_test)
print(y_pred)  # Saída: [0 1]
```

No exemplo acima, criamos um modelo Naive Bayes Gaussiano e o ajustamos aos dados de treinamento `X_train` e `y_train`. Em seguida, usamos o modelo ajustado para fazer previsões nas novas amostras `X_test`. A função `predict()` retorna um array contendo as previsões de classe para as amostras de teste fornecidas.

### **Conclusão**

O algoritmo Naive Bayes Gaussiano calcula as probabilidades de classificação para cada classe com base nas estimativas das médias e desvios padrão das distribuições normais ajustadas aos dados de treinamento. Em seguida, ele atribui a classe com a maior probabilidade como a previsão para cada amostra de teste.

Vale ressaltar que a implementação do algoritmo Naive Bayes Gaussiano no Python **não disponibiliza a visualização da tabela de probabilidade**, entretanto a linguagem R, por exemplo, têm suporte para isso.
