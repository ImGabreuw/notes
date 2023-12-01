# Matriz de Design (Design Matrix):

Na regressão linear, é comum representar os dados de entrada (variáveis independentes) em uma matriz chamada "matriz de design" (design matrix). Nessa matriz, cada linha corresponde a uma observação (amostra) e cada coluna corresponde a uma variável independente. Isso permite que a equação da regressão linear seja escrita de forma mais compacta na forma matricial:

$$
Y = X\beta + \epsilon
$$

Onde:

- $Y$ é o vetor das variáveis dependentes.
- $X$ é a matriz de design que contém as variáveis independentes.
- $\beta$ é o vetor de coeficientes (incluindo o intercepto $\beta_0$ e os coeficientes para as variáveis independentes).
- $\epsilon$ é o vetor de erros aleatórios.

Por exemplo ao calcular a matriz de design em uma regressão linear simples, ela seguir feita da seguinte forma:

![](design-matrix-regressao-simples.svg)

Já para no caso de uma regressão linear múltipla, o cálculo da matriz de design seria:

![](design-matrix-regressao-multipla.svg.svg)

A matriz de design facilita o ajuste de parâmetros, pois permite que você reescreva a equação da regressão linear de forma mais eficiente usando álgebra linear. O objetivo é encontrar os valores de $\beta$ que minimizam a soma dos quadrados dos erros, como mencionado anteriormente.
