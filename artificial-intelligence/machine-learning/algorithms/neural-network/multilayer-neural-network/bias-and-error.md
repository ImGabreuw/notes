# Bias e erro em redes multicamadas

Em redes neurais multicamadas, como as redes do tipo Perceptron Multicamadas (MLP), os termos "bias" e "erro" são conceitos fundamentais que desempenham papéis cruciais durante o processo de treinamento e no desempenho geral da rede.

## Bias (Viés)

O bias, também conhecido como termo de viés, é um parâmetro adicional em cada neurônio de uma camada, exceto nas camadas de entrada.

O bias fornece à rede neural a capacidade de realizar translações e ajustes na função de ativação do neurônio.

Intuitivamente, o bias permite que a rede "decida" quando ativar um neurônio mesmo quando todas as entradas são zero.

Ajuda a corrigir assimetrias e influencia o ponto de partida da função de ativação, tornando a modelagem mais flexível.

## Erro

O erro, muitas vezes chamado de função de perda ou função de custo, é uma medida da discrepância entre as saídas reais da rede e as saídas desejadas (rótulos) para um conjunto de dados de treinamento.

Durante o treinamento da rede neural, o objetivo é minimizar essa função de erro, ajustando os pesos e bias da rede.

Algoritmos de otimização como o Gradiente Descendente são usados para encontrar os melhores valores de pesos e bias que reduzem o erro ao longo do treinamento.

A escolha da função de erro depende do tipo de tarefa de aprendizado (classificação, regressão, etc.) e pode incluir funções como Erro Quadrático Médio (MSE) para regressão ou Entropia Cruzada para classificação. Essas métricas quantificam a discrepância entre as previsões do modelo e os valores reais dos dados.

### **Erro Médio Quadrático (MSE)**

O MSE é uma métrica que calcula a média dos quadrados das diferenças entre as previsões do modelo e os valores reais. Ele dá maior peso a erros maiores, pois o quadrado dos erros amplifica as discrepâncias.

A fórmula do MSE para um conjunto de dados com $n$ exemplos é:

$$
MSE = \frac{1}{n} \sum\_{i=1}^{n} (y_i - \hat{y_i})^2
$$

Onde:

- $y_i$ é o valor real do exemplo $i$

- $\hat{y_i}$ é a previsão do modelo para o exemplo $i$.

Por exemplo, considere a seguinte tabela com os atributos previsores "x1" e "x2" e o atributo meta "Classe":

| x1  | x2  | Classe | Saída |
| :-: | :-: | :----: | :---: |
|  0  |  0  |   0    | 0.406 |
|  0  |  1  |   1    | 0.432 |
|  1  |  0  |   1    | 0.437 |
|  1  |  1  |   0    | 0.458 |

Sem seguida vamos calcular erro de cada registro por meio da diferença ao quadrado entre o valor de saída com o valor real:

| x1  | x2  | Classe | Saída |          Erro           |
| :-: | :-: | :----: | :---: | :---------------------: |
|  0  |  0  |   0    | 0.406 | $(0 - 0.406)^2 = 0.164$ |
|  0  |  1  |   1    | 0.432 | $(1 - 0.432)^2 = 0.322$ |
|  1  |  0  |   1    | 0.437 | $(1 - 0.437)^2 = 0.316$ |
|  1  |  1  |   0    | 0.458 | $(0 - 0.458)^2 = 0.209$ |

Por fim aplicar a fórmula MSE:

$$
MSE = \frac{0.164 + 0.322 + 0.316 + 0.209}{4} = 0.252
$$

A utilização dessa método para o cálculo do erro em rede neurais é mais eficiente, uma vez que os erros maiores têm maior peso, logo o modelo é penalizado por erros maiores. Isso se dá por causa da elevação ao quadrada da média da diferença entre o valor esperado e previsto. Por exemplo, suponha o seguinte cenário:

1. Valor esperado de $10$ e valor previsto de $5$, então:

   $$
   erro = (10 - 5)^2 = 5^2 = 25
   $$

2. Valor esperado de $10$ e valor previsto de $8$, então:

   $$
   erro = (10 - 8)^2 = 2^2 = 4
   $$

Embora a diferença entre os valores previsto serem de apenas $3$ unidades, a diferença entre os erros nos dois cenários é de $21$ unidades, com isso o modelo é penalizado de forma mais eficiente no qual os erros maiores possuem mais peso.

### **Erro Médio Quadrático da Raiz (RMSE)**

O RMSE é uma variante do MSE que calcula a raiz quadrada da média dos quadrados dos erros. Ele representa a raiz quadrada da dispersão dos erros, tendo a mesma unidade que os valores originais dos dados. O RMSE é especialmente útil quando queremos ter uma ideia da magnitude dos erros em relação às unidades reais dos dados.

A fórmula do RMSE é simplesmente a raiz quadrada do MSE:

$$
RMSE = \sqrt{MSE}
$$

Com base no cálculo do MSE no exemplo anterior, vamos aplicar a fórmula do RMSE:

$$
RMSE = \sqrt{0.252} = 0.501
$$

Em redes neurais multicamadas, tanto o MSE quanto o RMSE são amplamente utilizados como funções de perda durante o treinamento. O objetivo é minimizar essas métricas ajustando os pesos e bias da rede. Um valor menor de MSE ou RMSE indica que as previsões do modelo estão mais próximas dos valores reais, o que é um sinal de melhor desempenho da rede. No entanto, é importante considerar a escala dos dados ao interpretar esses valores, pois eles dependem das unidades dos dados originais.

## Conclusão

Em resumo, o bias é um termo de ajuste que permite flexibilidade na função de ativação dos neurônios, enquanto o erro é uma medida da discrepância entre as saídas da rede e os rótulos reais. Ambos desempenham um papel fundamental no processo de treinamento e na capacidade da rede neural de se ajustar aos dados de entrada.
