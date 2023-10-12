No algoritmo K-Means, o cálculo da distância é uma etapa crucial que determina a qual cluster (grupo) um ponto de dados deve ser atribuído. O cálculo da distância é usado para medir a proximidade entre um ponto de dados e os centroides dos clusters existentes. O ponto de dados é então associado ao cluster cujo centroide está mais próximo. A métrica de distância comumente usada no K-Means é a distância euclidiana, mas outras métricas de distância também podem ser usadas dependendo do contexto.

A fórmula da distância euclidiana entre dois pontos, $A(x_1, y_1)$ e $B(x_2, y_2)$, em um espaço bidimensional, é dada por:

$$
\text{Distância Euclidiana} = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}
$$

No contexto do K-Means, onde frequentemente trabalhamos com dados multidimensionais, a fórmula da distância euclidiana geral entre dois pontos, $A$ e $B$, em um espaço de $n$ dimensões é:

$$
\text{Distância Euclidiana} = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2 + \ldots + (x_n - x_{n-1})^2}
$$

Basicamente, o cálculo da distância envolve as seguintes etapas:

1. Para cada ponto de dados a ser atribuído a um cluster, calcule a distância entre esse ponto e os centroides de todos os clusters existentes.

2. Use a fórmula da distância euclidiana ou outra métrica de distância apropriada, dependendo do espaço de características em que você está trabalhando.

3. Atribua o ponto de dados ao cluster cujo centroide está mais próximo (ou seja, o cluster com a menor distância entre o ponto e seu centroide).

A seguir um exemplo simples com dois centroides em um espaço bidimensional para ilustrar o cálculo da distância:

Suponha que temos dois centroides: $C_1(2, 3)$ e $C_2(5, 5)$, e um ponto de dados $P(3, 4)$.

1. Calcule a distância entre $P$ e $C_1$ usando a fórmula da distância euclidiana:

   $$
   \text{Distância de P a } C_1 = \sqrt{(3 - 2)^2 + (4 - 3)^2} = \sqrt{1 + 1} = \sqrt{2}
   $$

2. Calcule a distância entre $P$ e $C_2$ usando a mesma fórmula:

   $$
   \text{Distância de P a } C_2 = \sqrt{(3 - 5)^2 + (4 - 5)^2} = \sqrt{4 + 1} = \sqrt{5}
   $$

3. Como a distância de $P$ a $C_1$ é menor que a distância de $P$ a $C_2$, o ponto $P$ é atribuído ao cluster representado por $C_1$.

Esse processo é repetido para todos os pontos de dados, e os clusters são atualizados iterativamente até que os centroides não se movam significativamente e a convergência seja alcançada.
