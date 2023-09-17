# Regressão com vetores de suporte

_Support Vector Regression_ (SVR) compartilha muitas das características das Máquinas de Vetores de Suporte (SVM) usadas em classificação, mas sua aplicação se torna mais complexa quando tratamos de valores numéricos, devido à variedade de possibilidades.

Diferentemente de outros algoritmos como regressão linear, regressão com árvores de decisão e regressão com random forest, o SVR são sensíveis em relação a escala dos atributos, uma vez que ele não faz o escalonamento dos atributos automaticamente, é necessário realizar o tratamentos dos atributos antes de submeter o algoritmo na base de treinamento.

O epsilon é um parâmetro crítico no SVR que controla a largura da "faixa de aceitação" ao redor da função de regressão. Ele é usado para penalizar o modelo durante o treinamento e é calculado com base na diferença entre as previsões do modelo ($\hat{y}$) e os valores reais ($y$). A escolha adequada de epsilon afeta como o modelo lida com erros de previsão.

A ideia central por trás do SVR, semelhante à do SVM, é encontrar o melhor hiperplano de separação entre as classes. No entanto, quando lidamos com problemas que não podem ser linearmente separados, recorremos à técnica conhecida como "Kernel Tricks". Esta abordagem permite ao SVR modelar relações não lineares entre as variáveis, tornando-o versátil para lidar com uma ampla gama de problemas de regressão.

- **Kernel Tricks:** Quando os dados não podem ser separados por um hiperplano linear, recorremos aos "Kernel Tricks". Isso envolve a transformação dos dados em um espaço de características de maior dimensão usando funções de kernel (como o kernel RBF). Isso permite ao SVR modelar relações não lineares entre as variáveis, tornando-o flexível o suficiente para lidar com uma variedade de problemas de regressão.

- **Hiperplano de Separação:** O objetivo do SVR é encontrar o melhor hiperplano de separação entre os pontos de dados. Para problemas de regressão, esse hiperplano é utilizado para fazer previsões. A escolha adequada do kernel e dos parâmetros é fundamental para encontrar o hiperplano que melhor se ajusta aos dados de treinamento.

Em resumo, o SVR é uma técnica poderosa para resolver problemas de regressão, especialmente quando se lida com relações não lineares entre variáveis. O parâmetro epsilon ajuda a controlar a penalização do modelo, e os "Kernel Tricks" permitem que o SVR lide com problemas complexos. A escolha do kernel e dos parâmetros é crucial para obter um bom desempenho em problemas do mundo real.