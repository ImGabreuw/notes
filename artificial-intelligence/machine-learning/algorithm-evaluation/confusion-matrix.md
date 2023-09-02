# Matrix de confusão

A matriz de confusão é uma métrica de avaliação de algoritmos que mostra a confusão cometida por esse algoritmo. Como o nome sugere a visualização desse indicador se dá por meio de uma matriz onde cada linha representa a classe (valores reais) e os valores das colunas de cada linha representa as previsão do algoritmo para cada valor da classe.

A diagonal principal da matriz de confusão representam os acertos do algoritmo. Logo para calcular o número de erros basta realizar o somatório dos valos que não pertencem a diagonal principal.

Considere a seguinte matriz de confusão para as análises posteriores:

|          | Alto | Moderado | Baixo |
| :------: | :--: | :------: | :---: |
|   Alto   |  28  |    7     |   3   |
| Moderado |  6   |    32    |   2   |
|  Baixo   |  5   |    8     |  25   |

Primeiramente é interessante calcular o número de acertos e erros do algoritmo:

$\text{Acertos} = 85$

$\text{Erros} = 31$

E então calcular o número total de de registro no conjunto de testes:

$\text{Total} = \text{Acertos} + \text{Erros} = 85 + 31 = 116$

Com o total, pode-se calcular a porcentagem de acertos e erros:

$\text{Acertos percentual} = \frac{\text{Acertos}}{\text{Total}} \cdot 100 = \frac{85}{116} \cdot 100 = 73,27\%$

$\text{Erros percentual} = \frac{\text{Erros}}{\text{Total}} \cdot 100 = \frac{31}{116} \cdot 100 = 26,73\%$

> Lembrando que a criação da matriz de confusão é feita com base no conjunto de testes.

Além disso é possível de ser feita com base na matriz de confusão é calcular a porcentagem de acertos para cada valor categórico da classe:

$\text{Alto} = \frac{28}{38} = 73,68\%$

$\text{Moderado} = \frac{32}{40} = 80\%$

$\text{Alto} = \frac{25}{38} = 65,78\%$

Por fim, para analisar se o algoritmo performou bem é necessário levar em cota 3 fatores:

1. Cenário / Contexto do problemas que o algoritmo busca resolver

2. Número de classes: o algoritmo deve ter uma porcentagem de acerto superior a probabilidade base, ou seja, $\text{acerto percentual} > P$, sendo $P$ a probabilidade de ocorrer uma das classes e descrito pela fórmula: $P = \frac{1}{\text{Número de classes}} \cdot 100$

3. Acerto percentual deve ser superior ao algoritmo Zero R (Zero rules)