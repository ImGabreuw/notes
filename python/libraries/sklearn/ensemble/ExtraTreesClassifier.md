A classe `ExtraTreesClassifier` faz parte do módulo `sklearn.ensemble` da biblioteca scikit-learn e é usada para construir modelos de classificação com base no [[Seleção com Extra Trees|algoritmo "Extremely Randomized Trees" (Extra Trees)]]. O Extra Trees é uma extensão do algoritmo [[wiki/artificial-intelligence/machine-learning/algorithms/random-forest/introduction|Random Forest]] e cria árvores de decisão altamente aleatórias para resolver problemas de classificação. Aqui está uma explicação detalhada sobre a classe `ExtraTreesClassifier`:

## Sintaxe

```python
from sklearn.ensemble import ExtraTreesClassifier

selection = ExtraTreesClassifier()
```

### Principais parâmetros

- `n_estimators`: Este parâmetro define o número de árvores no conjunto. Quanto mais árvores, mais robusto e preciso o modelo, mas também mais demorado será o treinamento. Um valor típico é 100.

- `criterion`: Define a função para medir a qualidade de uma divisão em cada nó da árvore. As opções comuns são "gini" para o critério de Gini e "entropy" para o critério de entropia.

- `max_depth`: Controla a profundidade máxima das árvores. Limitar a profundidade pode ser útil para evitar over fitting.

- `min_samples_split`: Define o número mínimo de amostras necessárias para dividir um nó interno. Isso pode ajudar a controlar a complexidade das árvores.

- `min_samples_leaf`: Define o número mínimo de amostras em uma folha. Isso pode ser usado para evitar folhas com muito poucas amostras.

### Principais métodos

- `fit(X, y)`: Este método é usado para treinar o modelo `ExtraTreesClassifier` com os dados de treinamento `X` e os rótulos de classe correspondentes `y`.

- `predict(X)`: Após o treinamento, você pode usar este método para fazer previsões de classe para um conjunto de dados de entrada `X`.

- `predict_proba(X)`: Este método retorna as probabilidades estimadas para cada classe em vez de apenas as classes previstas. É útil quando você precisa de estimativas de probabilidade.

- `feature_importances_`: Este atributo contém as pontuações de importância atribuídas a cada recurso após o treinamento. Essas pontuações indicam a contribuição de cada recurso para a classificação.

## Exemplo

```python
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Carregando o conjunto de dados Iris como exemplo
data = load_iris()
X, y = data.data, data.target

# Dividindo o conjunto de dados em treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Criando e treinando o modelo ExtraTreesClassifier
model = ExtraTreesClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Fazendo previsões
y_pred = model.predict(X_test)

# Avaliando a precisão do modelo
accuracy = accuracy_score(y_test, y_pred)
print(f'Acurácia do modelo: {accuracy:.2f}')
```

Este exemplo cria um modelo `ExtraTreesClassifier`, treina-o no conjunto de dados Iris e faz previsões de classe. A pontuação de importância dos recursos também pode ser acessada através do atributo `feature_importances_`.
