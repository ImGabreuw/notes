# Cálculo de distância em algoritmo k-Nearest Neighbors

A distância euclidiana é uma medida de distância usada no algoritmo k-Nearest Neighbors (kNN) para encontrar a proximidade entre dois pontos em um espaço de atributos. No kNN, a distância euclidiana é utilizada para determinar quais exemplos (pontos) do conjunto de treinamento são os "k" vizinhos mais próximos de um novo exemplo de teste, e assim, esses vizinhos são utilizados para fazer previsões.

A fórmula para calcular a distância euclidiana entre dois pontos $p$ e $q$ em um espaço de atributos de dimensão $n$ é a seguinte:

$$
\text{DE}(X, Y) = \sqrt{\sum_{i=1}^{p}(x_i - y_i)^2}
$$

Onde:

- $X$ e $Y$ são dois pontos no espaço de atributos.

- $x_i$ e $y_i$ são os valores dos atributos do ponto $X$ e $Y$, respectivamente, para a dimensão $i$.

- $n$ é o número total de atributos (dimensões) no espaço.

Essa fórmula calcula a distância entre os pontos $X$ e $Y$ somando a diferença ao quadrado entre os valores de cada atributo em cada dimensão e, em seguida, tirando a raiz quadrada da soma total. A distância euclidiana mede o comprimento do segmento de linha reta que conecta os pontos $X$ e $Y" no espaço de atributos.

Por exemplo, suponha que temos dois pontos em um espaço de atributos bidimensional com atributos $X$ e $Y$:

$X(2, 3)$ e $Y(5, 7)$

Para calcular a distância euclidiana entre esses pontos, usamos a fórmula:

$$\text{DE}(X, Y) = \sqrt{(2-5)^2 + (3-7)^2} = \sqrt{(-3)^2 + (-4)^2} = \sqrt{9 + 16} = \sqrt{25} = 5$$

Portanto, a distância euclidiana entre os pontos $X$ e $Y$ é igual a 5.

No algoritmo kNN, calculamos a distância euclidiana entre o exemplo de teste (novo exemplo) e todos os exemplos no conjunto de treinamento. Em seguida, classificamos os exemplos de treinamento com base em suas distâncias para o exemplo de teste e selecionamos os "k" vizinhos mais próximos, que são os "k" exemplos com as menores distâncias euclidianas. Esses vizinhos são então utilizados para fazer previsões para o exemplo de teste com base em sua classe ou valor alvo.

É importante notar que, ao utilizar a distância euclidiana no kNN, é essencial normalizar os atributos, especialmente se eles têm escalas diferentes. A normalização garante que todos os atributos contribuam igualmente para o cálculo da distância, evitando que atributos com valores maiores dominem o resultado.
