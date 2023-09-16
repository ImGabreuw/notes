# Métricas de erro

As métricas de erro desempenham um papel crucial na avaliação de algoritmos de regressão linear. Elas permitem quantificar quão bem um modelo de regressão se ajusta aos dados e avaliar a qualidade das previsões.

1. **Mean Absolute Error (MAE)**:

   O MAE é uma métrica simples que calcula a média das diferenças absolutas entre os valores previstos pelo modelo e os valores reais. Em outras palavras, ele mede o erro médio absoluto nas previsões do modelo. A fórmula do MAE é:

   $$
   MAE = \frac{1}{n} \sum_{i=1}^{n}{|y_i - \hat{y}_i|}
   $$

   Onde:

   - $n$ é o número de observações.
   - $y_i$ são os valores reais.
   - $\hat{y}_i$ são os valores previstos pelo modelo.

   O MAE é fácil de entender e fornece uma medida direta do erro médio das previsões. Valores mais baixos do MAE indicam um melhor desempenho do modelo.

2. **Mean Squared Error (MSE)**:

   O MSE é uma métrica que calcula a média dos quadrados das diferenças entre os valores previstos e os valores reais. Isso significa que o MSE penaliza erros maiores de forma mais significativa, pois os valores são elevados ao quadrado. A fórmula do MSE é:

   $$
   MSE = \frac{1}{n} \sum_{i=1}^{n}{(y_i - \hat{y}_i)^2}
   $$

   O MSE é frequentemente usado em problemas onde erros maiores são considerados mais graves, como em aplicações financeiras.

3. **Root Mean Squared Error (RMSE)**:

   O RMSE é uma métrica derivada do MSE. Ele é calculado tomando a raiz quadrada do MSE. A fórmula do RMSE é:

   $$
   RMSE = \sqrt{MSE}
   $$

   O RMSE fornece uma medida do erro médio em unidades da variável de destino (ou seja, nas mesmas unidades que os dados reais). Isso facilita a interpretação em termos de escala. Assim como o MSE, o RMSE penaliza erros maiores de forma mais significativa.

Em resumo, o MAE, MSE e RMSE são métricas essenciais para avaliar a qualidade das previsões em algoritmos de regressão linear. A escolha entre essas métricas depende do contexto do problema e das preferências do analista. O MAE é útil quando erros maiores e menores têm a mesma importância, o MSE é mais apropriado quando erros maiores são mais críticos, e o RMSE fornece uma medida do erro em uma escala mais compreensível.
