# Introdução a regressão polinomial

A regressão polinomial é uma extensão da regressão linear simples que permite modelar relações mais complexas entre uma variável de entrada e uma variável de saída. Enquanto a regressão linear simples assume uma relação linear entre as variáveis, ideal para problemas linearmente separados, a regressão polinomial permite que a relação seja modelada como uma função polinomial.

A forma geral de um modelo de regressão polinomial é expressa pela seguinte equação:

$$
Y = \beta_0 + \beta_1X + \beta_2X^2 + \beta_3X^3 + \ldots + \beta_nX^n + \epsilon
$$

Nesta equação:

- $Y$ representa a variável de saída que queremos prever.
- $X$ é a variável de entrada.
- $\beta_0, \beta_1, \beta_2, \ldots, \beta_n$ são os coeficientes do modelo, onde $\beta_0$ é o intercepto, e os demais são coeficientes para os termos de grau superior.
- $X^2, X^3, \ldots, X^n$ são termos polinomiais de graus superiores.
- $\epsilon$ é o erro ou resíduo, que representa a variação não explicada pelo modelo.

A principal ideia da regressão polinomial é ajustar os coeficientes do modelo de modo a minimizar a soma dos quadrados dos resíduos, de maneira semelhante à regressão linear simples.

A seguir a diferença da reta que descreve a regressão linear e polinomial respectivamente:

![](./assets/regressao-linear-vs-polinomial.png~)

Alguns pontos importantes sobre a regressão polinomial:

1. **Grau do polinômio (n)**: O grau do polinômio determina o número de termos polinomiais incluídos no modelo. Quanto maior o grau, mais complexo o modelo pode se tornar, e também pode ser mais suscetível ao _overfitting_.

2. **Overfitting**: A regressão polinomial de grau elevado pode se ajustar muito bem aos dados de treinamento, mas pode não generalizar bem para novos dados (_overfitting_). Portanto, é importante escolher um grau adequado para evitar _overfitting_.

3. **Validação cruzada**: A validação cruzada é uma técnica comum usada para escolher o grau ideal do polinômio, avaliando o desempenho do modelo em conjuntos de treinamento e teste separados.

4. **Regularização**: Às vezes, é necessário adicionar termos de regularização ao modelo de regressão polinomial para evitar _overfitting_. A regressão polinomial regularizada é chamada de regressão polinomial regularizada.

A regressão polinomial é uma ferramenta poderosa para modelar relações não lineares entre variáveis, mas é importante usá-la com cautela, escolhendo um grau de polinômio apropriado e aplicando técnicas de validação cruzada e regularização, quando necessário, para garantir a generalização adequada do modelo.
