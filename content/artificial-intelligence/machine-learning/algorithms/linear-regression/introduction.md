# Introdução ao algoritmo de regressão linear

A regressão linear é uma técnica estatística usada para modelar a relação entre uma variável dependente (também chamada de variável de resposta) e uma ou mais variáveis independentes (também chamadas de variáveis explicativas ou preditoras). A principal ideia por trás da regressão linear é **encontrar a melhor linha reta** (ou hiperplano, em casos de múltiplas variáveis independentes) que representa a **relação entre essas variáveis**, de modo a fazer previsões ou inferências.

A regressão linear é frequentemente utilizada para os seguintes propósitos:

1. **Previsão:** Ela pode ser usada para prever o valor de uma variável dependente com base nos valores das variáveis independentes. Por exemplo, você pode usar a regressão linear para prever o preço de uma casa com base em características como tamanho, número de quartos, localização, etc.

2. **Análise de relações:** Ela ajuda a entender a relação entre as variáveis independentes e dependentes. Por exemplo, você pode investigar como a renda está relacionada com a idade dos indivíduos em um conjunto de dados.

3. **Identificação de variáveis importantes:** A regressão linear pode ser usada para determinar quais variáveis independentes têm o maior impacto na variável dependente. Isso pode ser útil em estudos de pesquisa e modelagem.

A forma mais simples de regressão linear é a "regressão linear simples", que envolve apenas duas variáveis: uma variável independente e uma variável dependente. A relação entre essas variáveis é modelada como uma linha reta, representada pela equação:

$$
Y = \beta_0 + \beta_1 X + \epsilon
$$

Onde:

- $Y$ é a variável dependente que estamos tentando prever.
- $X$ é a variável independente.
- $\beta_0$ é o intercepto da linha, que representa o valor de $Y$ quando $X$ é igual a zero.
- $\beta_1$ é o coeficiente de inclinação, que representa a mudança em $Y$ para uma mudança unitária em $X$.
- $\epsilon$ é o erro aleatório, que representa a variabilidade não explicada pelo modelo.

A tarefa na regressão linear é encontrar os valores de $\beta_0$ e $\beta_1$ que melhor se ajustam aos dados, ou seja, minimizam o erro quadrático médio ou Mean Square Error (MSE) $\epsilon$ definido pela fórmula:

$$
MSE = \frac{1}{N} \sum_{i=1}^{N}{(f_i - y_i)^2}
$$

Onde:

- $N$ é o número de observações.
- $f_i$ é o valor real da variável dependente para a observação $i$.
- $y_i$ é a previsão do modelo para a observação $i$.

MSE é a abordagem mais comum para o cálculo do erro nas tarefas de regressão linear, mas existem outras técnicas com a mesma finalidade como por exemplo o Absolute Mean Error.

Os ajustes dos parâmetros é feito até que o erro seja o mínimo possível e para isso são utilizados algumas técnicas já vistas anteriormente como o gradiente descente e matriz de design (_design matrix_). Em geral é adotado o algoritmo de gradiente descente por apresentar o melhor desempenho em amostras com muitos atributos. Já o _design matrix_ é recomendado para bases de dados com poucos atributos, pois a inversão de matrizes tem um alto custo computacional.

Além da regressão linear simples, há também a "regressão linear múltipla", que envolve mais de uma variável independente. A equação para a regressão linear múltipla é uma extensão da regressão simples:

$$
Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \ldots + \beta_p X_p + \epsilon
$$

Onde:

- $X_1, X_2, \ldots, X_p$ são as variáveis independentes.
- $\beta_0, \beta_1, \beta_2, \ldots, \beta_p$ são os coeficientes que representam o impacto das variáveis independentes em $Y$.

A regressão linear é uma técnica poderosa, mas também tem suas limitações. Ela assume que a relação entre as variáveis é linear, o que nem sempre é o caso na prática. Além disso, é sensível a valores atípicos (outliers) e pressupõe que os erros sejam independentes e normalmente distribuídos. Portanto, é importante avaliar se a regressão linear é apropriada para um conjunto de dados específico antes de aplicá-la. Existem também variantes da regressão linear, como a regressão linear robusta e a regressão linear generalizada, que lidam com algumas dessas limitações.