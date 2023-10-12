A classe `KNN` do módulo `pyod.models.knn` é uma implementação do algoritmo K-Nearest Neighbors (KNN) para detecção de [[Outliers|outliers]]. O KNN é um algoritmo de aprendizado de máquina amplamente utilizado para classificação e regressão, mas também pode ser aplicado para detecção de anomalias, que é o foco principal desta classe em particular.

A detecção de outliers com KNN baseia-se no princípio de que os outliers são pontos que estão distantes dos seus vizinhos em um espaço multidimensional. O algoritmo KNN calcula a distância entre um ponto de dados e seus vizinhos mais próximos para determinar o quão "anômalo" ele é. O ponto é considerado um outlier se estiver significativamente distante de seus vizinhos.

## Sintaxe

```python
from pyod.models.knn import KNN

model = KNN(n_neighbors=7, method="distance")
```

### Principais parâmetros

- `n_neighbors`: Especifica o número de vizinhos mais próximos a serem considerados ao calcular a distância entre pontos. Um valor típico é definido em torno de 5 a 10, mas pode variar dependendo do conjunto de dados.

- `method`: Define a métrica de distância a ser usada para calcular as distâncias entre pontos. Pode ser uma das seguintes opções: 'largest', 'mean', 'median', ou 'distance'. A opção 'largest' considera a maior distância, 'mean' calcula a média das distâncias, 'median' calcula a mediana e 'distance' usa todas as distâncias individuais.
### Principais métodos

- `fit(X)`: Este método é usado para ajustar o modelo KNN aos dados de entrada `X`. Os dados de entrada devem ser uma matriz NumPy ou DataFrame do pandas.

- `predict(X)`: Uma vez ajustado o modelo, você pode usar este método para prever os rótulos das instâncias de entrada `X`. Em detecção de outliers, os rótulos são 1 para instâncias normais e -1 para outliers.
### Principais atributos

- `labels_`: Este atributo armazena as etiquetas de cluster atribuídas a cada ponto de dados durante a detecção de anomalias.
  Ele contém duas etiquetas principais:

  - `0`: Normalmente, este rótulo é atribuído aos pontos de dados que o modelo considera normais com base na distância em relação aos vizinhos mais próximos. Esses pontos não são considerados anomalias.

  - `1`: Este rótulo é geralmente atribuído aos pontos de dados que o modelo considera anomalias. São pontos que estão além de um limite de distância predefinido em relação aos vizinhos mais próximos e, portanto, são considerados diferentes da maioria dos dados normais.

- `decision_scores_`: Este atributo contém as pontuações de decisão para cada ponto de dados no conjunto de dados de entrada. Quanto menor o valor, mais provável é que o ponto seja um outlier.

## Exemplo

```python
from pyod.models.knn import KNN
from pyod.utils.data import generate_data

# Gerar dados de exemplo
X_train, X_test, y_train, y_test = generate_data(n_train=200, n_test=100)

# Criar um modelo KNN
model = KNN()

# Ajustar o modelo aos dados de treinamento
model.fit(X_train)

# Prever rótulos de outliers no conjunto de teste
predictions = model.labels_
print(predictions)

# Pontuações de decisão para cada ponto de dados no conjunto de teste
decision_scores = model.decision_scores_
print(decision_scores)
```

**Saída:**

```
[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]
 
[0.54452441 0.25597702 0.48033319 0.4410637  0.29997416 0.45840698
 0.24612947 0.27999055 0.17117156 0.22811341 0.4410637  0.43034469
 0.29607565 0.30698566 0.26308698 0.55036123 0.19818154 0.27010997
 1.08661452 0.33458492 0.7620169  0.38264288 0.2754105  0.56315288
 0.34324506 0.27200667 0.43369504 0.35074307 0.20859646 0.32600875
 0.21868242 0.5594374  1.07316406 0.33551502 0.24801974 0.26285433
 0.70254172 0.34324506 0.51758329 1.89815741 0.37881043 0.42067291
 0.8819252  0.68770557 0.48798906 0.50013342 0.3462842  0.65449709
 0.28695631 0.40887376 0.88581358 0.2395187  0.17868787 0.38637533
 0.25473861 0.4280266  0.69908458 0.31991008 0.91007441 0.20121563
 0.21865367 0.28075376 0.4176332  0.43936416 0.4806615  0.33092767
 0.21868242 0.31802956 0.76836086 0.61822041 2.1067536  0.44071307
 1.21763474 0.18796399 0.31859749 0.33092576 0.39959205 0.22980305
 0.31966527 0.43676307 0.19890776 0.45530558 0.45025377 0.42078918
 0.23299371 0.27010997 0.31802956 0.22186995 0.20990345 0.25735423
 0.2231273  0.17726846 0.21359827 0.20829259 1.71375043 0.23874178
 0.4176332  0.2993073  1.20862381 0.49812363 0.23000256 1.26747614
 0.20829259 0.34954826 0.4932181  0.37083687 0.34063288 0.30133427
 0.60426025 0.49429935 0.52055189 0.39923345 0.34118598 1.84737906
...
 5.41619866 4.10735429 5.97670397 6.26095261 3.32730748 5.28673456
 3.94316266 2.94779425 4.34427125 4.34427125 2.82790218 5.30588832
 3.71916088 4.11990862 4.11990862 5.22662171 4.30689655 4.51034039
 6.39267163 4.42070291]
```

O `KNN` da biblioteca `pyod` é uma ferramenta útil para detecção de outliers, especialmente quando se suspeita que os outliers estão distantes dos pontos normais em um espaço multidimensional. A escolha apropriada do número de vizinhos (`n_neighbors`) e da métrica de distância (`method`) é importante para o desempenho do modelo.
