# Função "accuracy_score"

A função `accuracy_score` faz parte do módulo `sklearn.metrics` da biblioteca Scikit-learn. Essa função é usada para calcular a acurácia, ou seja, a **porcentagem de previsões corretas, de um modelo de classificação**, que é uma métrica comum para avaliar o desempenho de algoritmos de aprendizado de máquina em problemas de classificação.

### **Sintaxe**

```python
from sklearn.metrics import accuracy_score

accuracy = accuracy_score(y_true, y_pred)
```

**Parâmetros:**

- `y_true`: Array de formato (n_samples,) ou lista que contém as verdadeiras classes alvo (dados para teste) das amostras.

- `y_pred`: Array de formato (n_samples,) ou lista que contém as previsões de classe feitas pelo modelo para as amostras.

**Retorno:**

- `accuracy`: Um número entre 0 e 1, representando a acurácia do modelo. Quanto maior o valor, melhor o desempenho do modelo em fazer previsões corretas.

### **Exemplo**

```python
from sklearn.metrics import accuracy_score

# Dados verdadeiros (ground truth)
y_true = [0, 1, 0, 1, 0, 1]

# Previsões do modelo
y_pred = [0, 1, 0, 1, 1, 1]

# Calculando a acurácia do modelo
accuracy = accuracy_score(y_true, y_pred)

print("Acurácia:", accuracy)
```

**Saída:**

```
Acurácia: 0.8333333333333334
```

Neste exemplo, temos um conjunto de dados de verdadeiras classes alvo `y_true` e as previsões do modelo `y_pred`. Usando a função `accuracy_score`, calculamos a acurácia do modelo, que nos diz que o modelo acertou corretamente cerca de 83,33% das previsões feitas.

### **Conclusão**

A função `accuracy_score` é uma ferramenta útil para **avaliar o desempenho de modelos de classificação**. Ela fornece uma medida simples e intuitiva da precisão das previsões, o que ajuda a determinar quão bem o modelo está se saindo em relação aos dados verdadeiros. No entanto, é importante considerar outras métricas, especialmente quando há classes desbalanceadas ou quando erros de diferentes tipos têm custos diferentes.