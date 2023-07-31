# Função "classification_report"

A função `classification_report` do módulo `sklearn.metrics` do scikit-learn é uma ferramenta útil para avaliar o desempenho de um modelo de classificação. Ela fornece um **relatório detalhado contendo várias métricas de avaliação** para cada classe presente no conjunto de dados.

**Sintaxe:**

```python
from sklearn.metrics import classification_report

report = classification_report(y_true, y_pred)
```

**Parâmetros:**

- `y_true`: Array-like ou lista contendo as classes verdadeiras (dados de teste) das amostras de teste.

- `y_pred`: Array-like ou lista contendo as classes previstas pelo modelo para as amostras de teste.

**Retorno:**

A função retorna uma string contendo o relatório de avaliação com as seguintes métricas para cada classe:

- **Precision (Precisão)**: A proporção de verdadeiros positivos em relação a todos os positivos previstos. Representa a precisão do modelo em identificar corretamente os verdadeiros positivos.

- **Recall (Sensibilidade ou Revocação)**: A proporção de verdadeiros positivos em relação a todos os verdadeiros positivos reais. Representa a capacidade do modelo de encontrar corretamente os verdadeiros positivos.

- **F1-score**: A média harmônica entre a precisão e o recall. É uma medida balanceada que leva em consideração tanto a precisão quanto o recall.

- **Support (Suporte)**: O número de ocorrências de cada classe no conjunto de teste.

- **Accuracy (Acurácia)**: A proporção de previsões corretas em relação a todas as previsões. Representa a taxa geral de acerto do modelo.

### **Exemplo**

```python
from sklearn.metrics import classification_report
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB

# Carregar o conjunto de dados
with open("credit.pkl", "rb") as file:
    X_credit_train, y_credit_train, X_credit_test, y_credit_test = pickle.load(file)

# Criar o modelo Naive Bayes Gaussiano
naive_credit_data = GaussianNB()
naive_credit_data.fit(X_credit_train, y_credit_train)

# Fazer previsões no conjunto de teste
predict = naive_credit_data.predict(X_credit_test)

# Gerar o relatório de avaliação
report = classification_report(y_credit_test, predict)
print(report)
```

**Saída:**

|              | precision   | recall   | f1-score   | support   |
| ------------ | ----------- | -------- | ---------- | --------- |
| 0            | 0.95        | 0.98     | 0.97       | 436       |
| 1            | 0.84        | 0.64     | 0.73       | 64        |
| -----------  | ----------- | -------- | ---------- | --------- |
| accuracy     |             |          | 0.94       | 500       |
| macro avg    | 0.89        | 0.81     | 0.85       | 500       |
| weighted avg | 0.93        | 0.94     | 0.93       | 500       |

Neste exemplo, estamos usando o conjunto de dados de risco de crédito e um modelo de Naive Bayes Gaussiano para classificação. Após ajustar o modelo e fazer previsões no conjunto de teste, geramos o relatório de avaliação usando a função `classification_report` para analisar o desempenho do modelo em cada classe.

Um ponto de atenção em relação aos informações presentes no relatório é os valores relativamente baixos de precisão e sensibilidade para a previsão de classificação como "não pagadores" (1), que no cenário da utilização desse algoritmo por um banco não serio o ideal, uma vez que há grande chances da instituição perder dinheiro com calote.

### **Conclusão**

A função `classification_report` é uma ferramenta útil para avaliar o desempenho de um modelo de classificação, fornecendo informações detalhadas sobre as métricas de avaliação para cada classe presente nos dados de teste. Ela ajuda a **compreender a qualidade das previsões** e a **identificar áreas de melhoria** para o modelo.
