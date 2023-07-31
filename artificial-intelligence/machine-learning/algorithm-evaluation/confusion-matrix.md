# Matrix de confusão

A matriz de confusão é uma tabela que mostra as **previsões feitas** por um modelo de classificação em relação às classes reais das amostras de teste**. Ela é usada para avaliar o desempenho do modelo e entender melhor os erros e acertos em cada classe.

A visualização de matriz de confusão pode ser feita a partir de bibliotecas como Sklearn e Yellowbrick no qual a partir tabela colorida que **mostra os valores verdadeiros e previstos para cada classe**. As células na diagonal representam as previsões corretas, enquanto as células fora da diagonal representam os erros de classificação.

- Verdadeiro Positivo (TP): Os casos em que o modelo previu corretamente a classe positiva.

- Verdadeiro Negativo (TN): Os casos em que o modelo previu corretamente a classe negativa.

- Falso Positivo (FP): Os casos em que o modelo previu incorretamente a classe positiva.

- Falso Negativo (FN): Os casos em que o modelo previu incorretamente a classe negativa.

A matriz de confusão é uma ferramenta visual poderosa para avaliar a precisão, recall, F1-score e outras métricas de desempenho de um modelo de classificação.