# Cálculo do delta na camada oculta em redes multicamada

O cálculo do delta na camada oculta é uma etapa vital no treinamento de redes neurais, especialmente em algoritmos de aprendizado supervisionado, como o backpropagation. Similar ao cálculo do delta na camada de saída, determinar o delta na camada oculta envolve medir o erro e propagar esse erro de volta pela rede neural para ajustar os pesos das conexões.

## Cálculo do delta na camada oculta:

O cálculo do delta na camada oculta é mais intrincado do que na camada de saída, pois as unidades na camada oculta não estão diretamente ligadas ao erro. O delta na camada oculta é calculado propagando o erro da camada seguinte, ou seja, da camada mais próxima da saída.

Considere uma rede neural com uma única camada oculta. Se desejamos calcular o delta para a unidade $j$ na camada oculta, o delta $\delta_j$ é calculado assim:

$$
\delta_j = f'(z_j) \times \delta_{\text{saída}} \times w_{j}
$$

- $f'(z_j)$: A derivada da função de ativação aplicada à entrada ponderada da unidade $j$ na camada oculta ($z_j$).

- $\delta_{\text{saída}}$: O delta da camada de saída.

- $w_{j}$: O peso da conexão entre a unidade $j$ na camada oculta e a camada de saída.

O cálculo do delta na camada oculta consiste em duas etapas principais:

1. Propagação do erro da camada seguinte: O erro da camada de saída, representado pelos deltas $\delta_{\text{saída}}$, é propagado de volta para a camada oculta. Isso é alcançado multiplicando o delta da unidade na camada seguinte pelo peso da conexão entre as duas unidades e somando esses produtos para todas as unidades na camada de saída.

2. Aplicação da derivada da função de ativação: O valor resultante é então multiplicado pela derivada da função de ativação, aplicada à entrada ponderada da unidade na camada oculta.

## Importância do delta na camada oculta:

O cálculo do delta na camada oculta é essencial, pois indica como os pesos das conexões entre as unidades ocultas e as unidades de saída devem ser ajustados para minimizar o erro na camada de saída. Assim como na camada de saída, a magnitude do delta revela a sensibilidade do erro nas saídas em relação às mudanças nos pesos.

Ao calcular os deltas nas camadas ocultas, o processo de backpropagation continua retrocedendo pela rede neural, atualizando os pesos das conexões em cada camada para minimizar o erro global da rede. Essa propagação do erro e o ajuste iterativo dos pesos por meio do gradiente descendente permitem que a rede neural gradualmente aprenda a mapear corretamente as entradas para as saídas desejadas.

## Conclusão:

Resumidamente, o cálculo do delta na camada oculta é uma etapa crucial no treinamento de redes neurais. Ele mede o erro propagado da camada seguinte e é empregado para determinar os ajustes necessários nos pesos das conexões da camada oculta, com o objetivo de reduzir esse erro. Isso possibilita que a rede neural melhore suas previsões conforme os pesos são iterativamente atualizados ao longo do processo de treinamento.
