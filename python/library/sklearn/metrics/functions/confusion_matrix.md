# Função "confusion_matrix"

A função `confusion_matrix` faz parte do módulo `sklearn.metrics` da biblioteca Scikit-learn. Essa função é usada para **calcular a matriz de confusão de um modelo de classificação**, que é uma tabela que mostra a contagem de verdadeiros positivos (TP), falsos positivos (FP), verdadeiros negativos (TN) e falsos negativos (FN) em um problema de classificação.

### **Sintaxe**

```python
from sklearn.metrics import confusion_matrix

conf_matrix = confusion_matrix(y_true, y_pred)
```

**Parâmetros:**

- `y_true`: Array de formato (n_samples,) ou lista que contém as verdadeiras classes alvo (dados de teste) das amostras.

- `y_pred`: Array de formato (n_samples,) ou lista que contém as previsões de classe feitas pelo modelo para as amostras.

**Retorno:**

- `conf_matrix`: Matriz de formato (n_classes, n_classes) que representa a matriz de confusão do modelo. A matriz é organizada da seguinte forma:

  |                      | Classe Prevista Negativa | Classe Prevista Positiva |
  | -------------------- | ------------------------ | ------------------------ |
  | Classe Real Negativa | Verdadeiro Negativo (TN) | Falso Positivo (FP)      |
  | Classe Real Positiva | Falso Negativo (FN)      | Verdadeiro Positivo (TP) |

### **Exemplo**

```python
from sklearn.metrics import confusion_matrix

# Dados verdadeiros (ground truth)
y_true = [1, 0, 1, 0, 1, 1, 0, 1]

# Previsões do modelo
y_pred = [1, 0, 1, 1, 0, 1, 0, 0]

# Calculando a matriz de confusão do modelo
conf_matrix = confusion_matrix(y_true, y_pred)

print("Matriz de Confusão:")
print(conf_matrix)
```

Saída:

```
Matriz de Confusão:
[[2 2]
 [1 3]]
```

Neste exemplo, temos um conjunto de dados de verdadeiras classes alvo `y_true` e as previsões do modelo `y_pred`. Usando a função `confusion_matrix`, calculamos a matriz de confusão do modelo, que nos mostra que:

- Há 2 verdadeiros positivos (TP), ou seja, o modelo acertou 2 amostras da classe positiva.

- Há 3 verdadeiros negativos (TN), ou seja, o modelo acertou 3 amostras da classe negativa.

- Há 2 falsos positivos (FP), ou seja, o modelo errou 2 amostras prevendo a classe positiva incorretamente.

- Há 1 falso negativo (FN), ou seja, o modelo errou 1 amostra prevendo a classe negativa incorretamente.

### **Conclusão**

A matriz de confusão é uma ferramenta importante para **avaliar o desempenho de um modelo de classificação**, pois fornece uma visão detalhada das previsões corretas e incorretas feitas pelo modelo para cada classe. **Essa informação é útil para calcular várias métricas de avaliaçã**o, como precisão, recall, F1-score, entre outras, que ajudam a entender melhor o desempenho do modelo em diferentes cenários de classificação.
