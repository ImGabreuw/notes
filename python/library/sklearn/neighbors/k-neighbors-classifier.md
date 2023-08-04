# Classe "KNeighborsClassifier"

A classe `KNeighborsClassifier` é uma implementação do algoritmo k-Nearest Neighbors (kNN) para classificação de dados em Python, fornecida pelo módulo `sklearn.neighbors` da biblioteca Scikit-learn.

O algoritmo k-Nearest Neighbors é um método de aprendizado supervisionado utilizado para classificação e regressão. No contexto da classificação, o objetivo é prever a classe de um novo exemplo com base nas classes dos "k" vizinhos mais próximos no conjunto de treinamento.

A classe `KNeighborsClassifier` do Scikit-learn permite criar um modelo de classificação kNN facilmente. Para isso, é necessário especificar o valor de `k`, que representa o número de vizinhos a serem considerados na classificação. Além disso, existem outras opções configuráveis para controlar o comportamento do classificador, como a métrica de distância a ser utilizada (padrão é a distância euclidiana) e a estratégia de votação (por maioria ou ponderada).

### **Principais parâmetros**

- `n_neighbors`: Número de vizinhos a serem considerados (valor de `k`).

- `weights`: Estratégia de votação. Pode ser 'uniform' para votos iguais ou 'distance' para votos ponderados pela inversa da distância.

- `metric`: Métrica de distância a ser utilizada para calcular a proximidade entre os exemplos. A métrica padrão é a distância euclidiana ('minkowski' com `p=2`).

- `p`: Parâmetro `p` para a métrica _Minkowski_. Quando `p=1`, corresponde à distância de Manhattan, e quando `p=2`, corresponde à distância euclidiana.

- `algorithm`: Algoritmo utilizado para calcular os vizinhos mais próximos. Pode ser 'auto', 'ball_tree', 'kd_tree' ou 'brute'.

### **Principais métodos**

- `fit(X, y)`: Treina o modelo com o conjunto de treinamento `X` e as classes alvo `y`.

- `predict(X)`: Realiza as previsões das classes para o conjunto de dados `X` com base nos vizinhos mais próximos.

- `kneighbors(X, n_neighbors)`: Retorna as distâncias e índices dos `n_neighbors` vizinhos mais próximos para cada exemplo em `X`.

### **Exemplo**

```python
from sklearn.neighbors import KNeighborsClassifier

# Conjunto de treinamento e classes alvo
X_train = [[0, 0], [1, 1], [2, 2], [3, 3]]
y_train = [0, 0, 1, 1]

# Criando o classificador kNN com k=3 e distância euclidiana
knn_classifier = KNeighborsClassifier(n_neighbors=3)

# Treinando o modelo
knn_classifier.fit(X_train, y_train)

# Realizando previsões para novos exemplos
X_new = [[1.5, 1.5], [2.5, 2.5]]
predictions = knn_classifier.predict(X_new)
print(predictions)  # Saída: [0, 1]
```

Em resumo, a classe `KNeighborsClassifier` é uma ferramenta poderosa e flexível para a implementação do algoritmo k-Nearest Neighbors em tarefas de classificação, permitindo que você ajuste facilmente o valor de `k` e outras opções de configuração para melhor se adequar ao seu conjunto de dados e problema específico.

Lembrando que para que o algoritmo kNN tenha um bom desempenho, é imprescindível realizar um bom pré-processamento dos dados do conjunto, caso contrário pode haver uma redução de 15% a 20% na precisão desse algoritmo.
