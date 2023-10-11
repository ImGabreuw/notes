# Salvar um classificador treinado

Salvar um modelo de machine learning após passar por avaliações e testes é uma prática importante para preservar os resultados obtidos e evitar ter que reexecutar todo o processo de treinamento e avaliação sempre que o modelo for necessário. A biblioteca `pickle` em Python é frequentemente utilizada para essa finalidade.

O módulo `pickle` permite serializar objetos Python, ou seja, transformá-los em uma sequência de bytes que podem ser gravados em um arquivo. Isso inclui modelos treinados, juntamente com todas as informações relevantes, como parâmetros, pesos, hiperparâmetros e tudo o que foi aprendido durante o treinamento.

Aqui está um exemplo de como salvar um modelo treinado usando o módulo `pickle`:

```python
import pickle
from sklearn.model_selection import train_test_split
from sklearn.neural_network import MLPClassifier

# Carregar o conjunto de dados
with open('../../assets/credit.pkl', 'rb') as file:
  X_credit_train, y_credit_train, X_credit_test, y_credit_test = pickle.load(file)

X_credit = np.concatenate((X_credit_train, X_credit_test), axis = 0)
y_credit = np.concatenate((y_credit_train, y_credit_test), axis = 0)

# Treinar um modelo (exemplo: Rede Neural)
reural_network_classifier = MLPClassifier(activation='relu', batch_size = 56, solver='adam')
reural_network_classifier.fit(X_credit, y_credit)

# Salvar o modelo em um arquivo .sav
pickle.dump(reural_network_classifier, open('final_neural_network.sav', 'wb'))
```

Neste exemplo, um modelo de rede neural é treinado usando o conjunto de dados de crédito, em seguida, é salvo em um arquivo chamado `final_neural_network.sav`. O arquivo é aberto em modo de gravação binária (`'wb'`) e a função `pickle.dump()` é usada para salvar o modelo no arquivo.

Quando você precisar usar o modelo novamente, poderá carregá-lo da seguinte maneira:

```python
import pickle

# Carregar o modelo treinado de um arquivo .sav
with open('final_neural_network.sav', 'rb') as file:
    loaded_model = pickle.load(file)

# Usar o modelo carregado para fazer previsões
predictions = loaded_model.predict(X_test)
```

Lembre-se de que ao usar a biblioteca `pickle`, você deve ter cuidado ao carregar modelos de fontes confiáveis, pois o processo de desserialização pode executar código malicioso incorporado no arquivo se ele não for proveniente de uma fonte confiável.