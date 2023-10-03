# Poda em árvores de decisão

A poda, também conhecida como "pruning" em inglês, é uma técnica utilizada para evitar o sobreajuste (overfitting) em árvores de decisão. O sobreajuste ocorre quando a árvore é muito complexa e se ajusta em excesso aos dados de treinamento, capturando ruídos e detalhes irrelevantes, o que pode prejudicar sua capacidade de generalização para novos dados.

O processo de poda envolve a remoção de ramos ou subárvores da árvore que não contribuem significativamente para a melhoria da precisão das previsões em dados de teste. Isso é feito através de uma técnica chamada "validação cruzada" ou "cross-validation", em que uma parte do conjunto de treinamento é reservada como conjunto de validação para avaliar o desempenho da árvore em dados não vistos.

O procedimento básico de poda é o seguinte:

1. Treina-se inicialmente a árvore de decisão usando todo o conjunto de treinamento.

2. Em seguida, para cada nó da árvore, calcula-se a acurácia da subárvore resultante caso aquele nó e seus descendentes sejam removidos. Essa acurácia é avaliada usando o conjunto de validação.

3. Com base nos resultados da validação cruzada, decide-se se o nó deve ser podado (removido) ou não. A poda é realizada quando a remoção do nó não prejudica significativamente a precisão da árvore em dados de validação.

4. O processo de poda é repetido para outros nós da árvore até que não haja mais nós a serem podados ou a remoção de nós não melhore mais a acurácia da árvore.

A poda é uma estratégia eficaz para evitar o sobreajuste em árvores de decisão e melhorar sua capacidade de generalização. Ela ajuda a criar árvores mais simples e interpretáveis, que ainda conseguem fazer previsões precisas em novos dados. Ao equilibrar a complexidade da árvore e sua precisão, a poda aumenta a confiabilidade do modelo em aplicações do mundo real.

### **Bias (Viés) e Variância**

Em termos gerais, o bias (viés) e a variância são dois componentes do erro de previsão em modelos de aprendizado de máquina.

**Bias (Viés):** Representa o erro sistemático do modelo, ou seja, a diferença média entre as previsões do modelo e os valores reais do conjunto de dados. Um modelo com alto viés tende a simplificar demais o problema e não consegue capturar a complexidade dos dados. Isso pode levar a um modelo subajustado (underfitting), que não se ajusta bem aos dados de treinamento.

**Variância:** Representa a sensibilidade do modelo a variações nos dados de treinamento. Um modelo com alta variância é muito sensível aos dados de treinamento e pode se ajustar muito bem a eles, mas não consegue generalizar para novos dados. Isso pode levar a um modelo sobreajustado (overfitting), que se ajusta muito bem aos dados de treinamento, mas tem um desempenho ruim em dados não vistos.

O objetivo é encontrar um equilíbrio entre bias e variância para obter um modelo que generalize bem para novos dados. A poda é uma técnica que ajuda a reduzir a variância, permitindo que a árvore se ajuste melhor aos dados de validação e evite o sobreajuste. Ao controlar a complexidade da árvore, é possível obter um modelo com menor variância e, ao mesmo tempo, evitar um viés muito alto, resultando em um modelo mais equilibrado e melhor desempenho geral.
