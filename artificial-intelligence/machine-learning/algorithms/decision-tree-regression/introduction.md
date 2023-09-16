# Regressão com árvores de decisão

A regressão com árvores de decisão é uma técnica de aprendizado de máquina que é usada para prever um valor numérico (variável de resposta) com base em várias variáveis de entrada (variáveis explicativas) usando uma estrutura de árvore de decisão. Essa técnica é uma extensão das árvores de decisão, que normalmente são usadas para problemas de classificação.

Uma árvore de decisão é uma estrutura hierárquica que consiste em nós (ou pontos de decisão) e arestas (ou ramificações). Cada nó representa uma decisão ou teste sobre uma variável de entrada, e cada ramificação representa o resultado desse teste. As folhas da árvore contêm os valores de saída ou previsões.

## Funcionamento

1. **Algoritmo de construção da árvore:** O algoritmo de construção de árvore para regressão começa com um nó raiz que representa todo o conjunto de dados de treinamento. Em cada etapa, ele seleciona a melhor variável de entrada e um ponto de divisão que minimiza o erro da previsão. O processo continua recursivamente até que uma condição de parada seja atingida, como um limite de profundidade da árvore ou um número mínimo de observações em um nó.

2. **Critério de divisão:** Para árvores de regressão, o critério de divisão mais comum é a minimização do erro quadrado médio (MSE). Isso significa que, em cada nó, a árvore procura dividir os dados de maneira a minimizar a variação dos valores de saída nas folhas da subárvore.

3. **Previsões:** Para fazer previsões com a árvore de regressão, um novo exemplo é passado pela árvore, seguindo os testes nas bifurcações até chegar a uma folha. O valor médio das observações na folha é usado como a previsão para o exemplo.

## Vantagens

- **Interpretabilidade:** As árvores de decisão são fáceis de interpretar, pois refletem uma série de decisões lógicas baseadas nas variáveis de entrada.

- **Lida com Não Linearidades:** As árvores de decisão podem capturar relacionamentos não lineares entre variáveis, tornando-as adequadas para uma variedade de problemas de regressão.

- **Robustez:** São robustas a outliers e podem lidar com dados mistos (variáveis categóricas e numéricas).

- **Requer Menos Pré-processamento:** Geralmente, requerem menos pré-processamento de dados em comparação com alguns outros algoritmos de regressão.

## Desvantagens

No entanto, árvores de decisão também têm desvantagens, como a tendência de superajustar (overfitting) os dados, especialmente quando não são controladas adequadamente. Isso pode ser tratado por meio de técnicas como a poda da árvore.
