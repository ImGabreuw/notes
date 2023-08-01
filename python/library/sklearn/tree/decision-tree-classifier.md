# Classe "DecisionTreeClassifier"

O `DecisionTreeClassifier` é uma classe do módulo `sklearn.tree` da biblioteca scikit-learn em Python, que implementa o algoritmo de árvore de decisão para classificação. Esse classificador constrói uma árvore de decisão a partir dos dados de treinamento e a utiliza para realizar previsões de classes para novos dados.

**Principais Parâmetros:**

- `criterion`: O critério usado para medir a qualidade da divisão na árvore. Pode ser "gini" para usar a impureza de Gini ou "entropy" para usar a entropia. O padrão é "gini".

- `max_depth`: A profundidade máxima da árvore. Se definido como `None`, os nós serão expandidos até que todas as folhas sejam puras ou contenham menos de `min_samples_split` amostras. O padrão é `None`.

- `min_samples_split`: O número mínimo de amostras necessárias para dividir um nó interno. O padrão é 2.

- `min_samples_leaf`: O número mínimo de amostras necessárias para serem consideradas como folhas. O padrão é 1.

**Métodos Principais:**

- `fit(X, y)`: Treina o classificador com os dados de treinamento `X` e os rótulos de classe `y`.

- `predict(X)`: Realiza previsões de classe para os dados de entrada `X` com base no modelo treinado.

**Exemplo:**

```python
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score

# Carrega o conjunto de dados Iris
data = load_iris()
X, y = data.data, data.target

# Divide o conjunto de dados em dados de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Cria o classificador da árvore de decisão
clf = DecisionTreeClassifier()

# Treina o classificador com os dados de treinamento
clf.fit(X_train, y_train)

# Faz previsões de classe para os dados de teste
y_pred = clf.predict(X_test)

# Avalia a acurácia das previsões
accuracy = accuracy_score(y_test, y_pred)
print(f'Acurácia: {accuracy:.2f}')
```

Neste exemplo, carregamos o conjunto de dados Iris, dividimos em dados de treinamento e teste, criamos e treinamos um classificador `DecisionTreeClassifier` com os dados de treinamento e, em seguida, realizamos previsões de classe para os dados de teste e calculamos a acurácia das previsões.
