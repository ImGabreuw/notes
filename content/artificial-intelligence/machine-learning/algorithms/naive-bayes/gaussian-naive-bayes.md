# Gaussian Naive Bayes (GaussianNB)

**GaussianNB** é um **algoritmo de classificação baseado no teorema de Bayes com a suposição de que os atributos (features) seguem uma distribuição normal (gaussiana)**. O "NB" em GaussianNB representa "Naive Bayes", indicando que o algoritmo faz uso da abordagem ingênua (naive) de supor independência condicional entre os atributos.

O algoritmo GaussianNB é uma variante do algoritmo Naive Bayes, que é amplamente utilizado em tarefas de classificação em aprendizado de máquina. Ele é particularmente **eficaz em cenários com poucos dados** disponíveis para treinamento e também é computacionalmente eficiente.

### **Funcionamento**

O GaussianNB estima as probabilidades condicionais para cada classe, assumindo que os valores dos atributos para cada classe seguem uma distribuição normal. Ele calcula as médias e os desvios padrão dos atributos para cada classe durante a fase de treinamento.

Para fazer a classificação, o algoritmo utiliza o teorema de Bayes para calcular as probabilidades de pertencer a cada classe dada a observação dos atributos. É importante destacar que a suposição de normalidade dos atributos pode ser uma simplificação exagerada em alguns casos, mas, na prática, o GaussianNB pode apresentar bons resultados em muitos problemas.

### **Vantagens**

- **Simplicidade**: É fácil de implementar e entender, especialmente quando se trabalha com um grande número de atributos.

- **Eficiência computacional**: O algoritmo é rápido e requer poucos recursos computacionais para treinamento e classificação.

- **Boa performance com poucos dados**: O GaussianNB pode funcionar bem mesmo com poucos exemplos de treinamento, tornando-o útil em cenários de dados limitados.

- **Lida com atributos numéricos e categóricos**: O algoritmo pode lidar tanto com atributos numéricos quanto categóricos, embora o GaussianNB seja mais adequado para atributos numéricos devido à suposição de normalidade.

### **Desvantagens**

- **Suposição de normalidade**: A suposição de que os atributos seguem uma distribuição normal pode não ser verdadeira para todos os conjuntos de dados, o que pode levar a resultados imprecisos em alguns casos.

- **Independência condicional**: A suposição de independência condicional entre os atributos pode não ser válida para alguns problemas, resultando em previsões menos precisas.

- **Dados desbalanceados**: O GaussianNB pode ser afetado por desequilíbrios na distribuição de classes, resultando em viés na previsão das classes minoritárias.

### **Conclusão**

Apesar de suas suposições simplificadas, o GaussianNB é um algoritmo de classificação útil e amplamente utilizado em várias aplicações, especialmente quando as suposições de normalidade e independência condicional são razoavelmente atendidas no conjunto de dados.