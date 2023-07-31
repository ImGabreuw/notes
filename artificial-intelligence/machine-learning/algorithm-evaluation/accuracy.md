# Acurácia

A acurácia é uma das métricas mais simples e amplamente utilizadas para avaliar a qualidade de modelos de classificação. Ela mede a taxa de acertos do modelo, ou seja, a **proporção de instâncias corretamente classificadas em relação ao total** de instâncias no conjunto de dados de teste.

A fórmula para calcular a acurácia é a seguinte:

$$
\text{Acurácia} = \frac{\text{Número de previsões corretas}}{\text{Total de instâncias}}
$$

Essa métrica é especialmente útil quando as **classes estão balanceadas**, ou seja, o número de instâncias em cada classe é mais ou menos igual. Por exemplo, se um modelo tem uma acurácia de 90%, isso significa que ele acerta 9 em cada 10 previsões.

No entanto, a acurácia pode ser enganosa quando as classes estão desbalanceadas, ou seja, uma classe possui muito mais instâncias do que a outra. Nesses casos, um modelo pode ter uma alta acurácia simplesmente prevendo a classe majoritária em quase todas as instâncias, mas falhando em prever corretamente a classe minoritária. Isso pode levar a uma avaliação inadequada do desempenho do modelo.

Portanto, é importante considerar outras métricas além da acurácia quando as classes estão desbalanceadas. Algumas métricas úteis nesses casos são a precisão, o recall (sensibilidade) e o F1-score, que levam em conta tanto os verdadeiros positivos quanto os falsos positivos e falsos negativos.

Em resumo, a acurácia é uma métrica simples e fácil de interpretar, mas deve ser usada com cuidado, especialmente em problemas de classificação com classes desbalanceadas. É fundamental considerar outras métricas e análises para ter uma visão mais completa do desempenho do modelo em diferentes cenários.
