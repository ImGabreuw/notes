# Etapas de aprendizagem do algoritmo de Regressão Logística

O aprendizado do algoritmo de regressão logística envolve a definição dos coeficientes do modelo para que ele possa fazer previsões de probabilidade de pertencimento a uma classe específica. Isso é feito por meio da função sigmoid e da transformação "logit".

### **Função Sigmoid**

A regressão logística utiliza a função sigmoid para modelar a relação entre as variáveis de entrada (recursos) e a probabilidade de pertencer a uma classe específica. A função sigmoid é uma curva em forma de "S" que transforma qualquer valor real em um intervalo entre 0 e 1. Ela é definida pela fórmula:

$$
\sigma(z) = \frac{1}{1 + e^{-z}}
$$

Nessa fórmula, $z$ é a combinação linear das características ponderadas pelos coeficientes da regressão:

$$
z = \beta_0 + \beta_1X_1 + \beta_2X_2 + \ldots + \beta_pX_p
$$

A função sigmoid mapeia $z$ para uma probabilidade no intervalo [0, 1]. Quando $z$ é grande e positivo, $\sigma(z)$ se aproxima de 1, indicando alta probabilidade de pertencer à classe positiva. Quando $z$ é grande e negativo, $\sigma(z)$ se aproxima de 0, indicando alta probabilidade de pertencer à classe negativa.

### **Transformação "Logit"**

A transformação "logit" é o processo inverso da função sigmoid e é usada para obter a equação linear que relaciona as características ($X$) aos coeficientes ($\beta$) na regressão logística. A transformação "logit" é aplicada à função sigmoid e nos dá uma equação linear em termos dos log-odds da probabilidade de classe positiva:

$$
\text{logit}(\sigma(z)) = \ln\left(\frac{\sigma(z)}{1 - \sigma(z)}\right) = z = \beta_0 + \beta_1X_1 + \beta_2X_2 + \ldots + \beta_pX_p
$$

A equação transformada "logit" permite que trabalhemos com uma forma linear da relação entre os atributos e os log-odds da classe positiva. Isso é essencial para otimizar os coeficientes $\beta$ durante o processo de treinamento.

### **Aprendizado**

O aprendizado da regressão logística envolve a otimização dos coeficientes $\beta$ para minimizar a diferença entre as probabilidades calculadas e as classes reais observadas nos dados de treinamento. Isso é feito ajustando os coeficientes usando um algoritmo de otimização, como a descida de gradiente (_gradient descent_).

O objetivo é encontrar os coeficientes que maximizem a verossimilhança dos dados observados, ou seja, que tornem as observações reais mais prováveis de acordo com o modelo sigmoid. O processo de otimização ajusta os coeficientes iterativamente até que um ponto de convergência seja alcançado, onde os coeficientes produzem as melhores estimativas possíveis para as probabilidades das classes.

Uma vez que os coeficientes são ajustados, a regressão logística pode ser usada para prever a probabilidade de pertencer à classe positiva para novos exemplos, bem como para classificar esses exemplos com base em um limite (threshold).

Em resumo, a regressão logística aprende os coeficientes que maximizam a probabilidade de observar os dados de treinamento, modelando a relação entre os atributos e as probabilidades de classe positiva. A função sigmoid e a transformação "logit" são peças fundamentais nesse processo, permitindo que o modelo seja interpretado e otimizado usando técnicas de otimização.

## **_Gradient descent_**

**Descida de Gradiente:**

A descida de gradiente é um algoritmo de otimização usado para ajustar os parâmetros de um modelo de machine learning, como os coeficientes $\beta$ em um modelo de regressão logística. O objetivo é minimizar uma função de custo, que mede o quão bem o modelo se ajusta aos dados de treinamento. A descida de gradiente funciona ajustando iterativamente os coeficientes em direção ao mínimo da função de custo, seguindo a direção oposta do gradiente.

**Custo Mínimo dos Coeficientes:**

O custo mínimo dos coeficientes é o valor mais baixo da função de custo, representando o melhor ajuste possível do modelo aos dados. A função de custo na regressão logística é frequentemente a função de log-verossimilhança negativa, que mede o quão prováveis são as classes observadas em comparação com as probabilidades previstas pelo modelo. Encontrar o custo mínimo significa encontrar os valores ideais dos coeficientes $\beta$ que melhor descrevem os dados de treinamento.

**Mínimo Local e Global e Cálculo do Declive da Curva:**

Ao visualizar a função de custo em um gráfico tridimensional com os coeficientes como eixos, a ideia de mínimo local e global fica clara:

- **Mínimo Global:** É o ponto mais baixo da superfície da função de custo em todo o espaço de parâmetros. Encontrar o mínimo global é o objetivo, pois corresponde ao melhor ajuste do modelo. No entanto, em funções complexas, pode ser difícil determinar onde está localizado o mínimo global.

- **Mínimo Local:** São pontos onde a função de custo é menor do que nas vizinhanças, mas não necessariamente é o menor valor global. A descida de gradiente pode convergir para um mínimo local, pensando erroneamente que é o mínimo global.

O cálculo do declive da curva (gradiente) envolve derivadas parciais em relação a cada coeficiente. O gradiente indica a direção em que a função de custo está aumentando mais rapidamente. Na descida de gradiente, multiplicamos o gradiente pelo valor de uma taxa de aprendizado $\alpha$ para determinar o tamanho do passo que damos na direção oposta ao gradiente.

Em cada iteração, a descida de gradiente calcula o gradiente da função de custo em relação a cada coeficiente. Em seguida, ajusta os coeficientes multiplicando o gradiente pelo valor de $\alpha$. Isso nos permite mover na direção do declive negativo, diminuindo assim o valor da função de custo. A descida de gradiente repete essas iterações até convergir para um mínimo, que pode ser um mínimo local ou global, dependendo das características da função de custo.

Em resumo, a descida de gradiente é um método iterativo que ajusta os coeficientes do modelo em direção ao mínimo da função de custo. Ela envolve o cálculo do declive da curva (gradiente) usando derivadas parciais e utiliza uma taxa de aprendizado para determinar o tamanho dos passos em direção à convergência. A distinção entre mínimos locais e globais destaca a importância de escolher um algoritmo de otimização robusto e hiperparâmetros adequados.
