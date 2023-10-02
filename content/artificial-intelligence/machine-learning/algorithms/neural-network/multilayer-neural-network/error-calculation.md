# Cálculo do Erro em Redes Multicamada

O cálculo de erro em um modelo de rede neural pode ser simplificado através da fórmula:

$$
\text{Erro} = \text{Resposta correta} - \text{Resposta calculada}
$$

Com base no exemplo da tabela com os atributos previsores "x1" e "x2" e o atributo meta "Classe":

| x1  | x2  | Classe |
| :-: | :-: | :----: |
|  0  |  0  |   0    |
|  0  |  1  |   1    |
|  1  |  0  |   1    |
|  1  |  1  |   0    |

Calculamos os valores de saída para cada registro e obtivemos os seguintes resultados:

| x1  | x2  | Classe | Calculado |  Erro  |
| :-: | :-: | :----: | :-------: | :----: |
|  0  |  0  |   0    |   0.406   | -0.406 |
|  0  |  1  |   1    |   0.432   | 0.568  |
|  1  |  0  |   1    |   0.437   | 0.563  |
|  1  |  1  |   0    |   0.458   | -0.458 |

É importante observar que em alguns registros o valor do erro é negativo. Nesse caso, a abordagem mais comum é utilizar o valor absoluto do erro ou até mesmo o erro ao quadrado (método _squared loss_).

Finalmente, para avaliar o desempenho geral do conjunto de pesos, calculamos a média do erro:

$$
\text{Erro médio} = \frac{|-0.406| + 0.568 + 0.563 + |-0.458|}{4} = 0.49
$$

Portanto, o erro médio para este conjunto de dados é de $0.49$.