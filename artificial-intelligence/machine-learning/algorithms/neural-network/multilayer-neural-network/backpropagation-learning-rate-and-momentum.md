# Backpropagation, Taxa de aprendizagem e Momento em redes multicamada

O **backpropagation** é uma técnica essencial no treinamento de redes neurais de múltiplas camadas, como o Perceptron Multicamadas (MLP), que busca ajustar os pesos das conexões entre unidades da rede para minimizar o erro de saída e melhorar a capacidade de generalização. Este algoritmo iterativo utiliza o gradiente descendente para atualizar os pesos, reduzindo o erro de previsão.

## Processo do Backpropagation:

O backpropagation consiste em duas etapas principais: a **propagação direta** (forward propagation) e a **propagação inversa** (backward propagation).

1. **Propagação Direta:**

   - A entrada é fornecida à camada de entrada da rede.
   - Os valores de entrada passam pelas camadas ocultas até a camada de saída, com cada unidade de cada camada calculando uma soma ponderada das entradas e aplicando uma função de ativação.
   - A saída da rede é obtida na camada de saída e é comparada com os valores de saída desejados para calcular o erro.

2. **Propagação Inversa (Backpropagation):**

   - O erro é propagado de volta pela rede, começando na camada de saída.
   - Os deltas de erro são calculados para cada unidade na camada de saída usando a diferença entre a saída desejada e a saída real da rede.
   - Os deltas são então retropropagados para as camadas ocultas, calculando os deltas para cada unidade nessas camadas com base no erro propagado das camadas subsequentes e nos pesos das conexões.
   - Os deltas nas camadas ocultas são usados para ajustar os pesos das conexões, com o objetivo de minimizar o erro de previsão. O ajuste dos pesos é realizado iterativamente utilizando o gradiente descendente.

## Gradiente Descendente:

O gradiente descendente é empregado para ajustar os pesos visando minimizar o erro global da rede. Ele envolve o cálculo do gradiente da função de custo em relação aos pesos da rede. O gradiente indica a direção e a magnitude do maior aumento da função de custo. No entanto, nosso objetivo é minimizar a função de custo, portanto, seguimos na direção oposta ao gradiente.

## Atualização dos Pesos:

A atualização de cada peso $w_{ij}$ na rede é feita da seguinte forma:

$$
w_{ij} = w_{ij - 1} \times \text{momento}  + \eta \times \delta_j \times a_i
$$

- $w_{ij}$: O novo peso da conexão entre a unidade $i$ na camada anterior e a unidade $j$ na camada atual.
- $w_{ij - 1}$: O peso anterior da conexão, usado no cálculo do termo de momento.
- $\text{momento}$: O termo de momento é uma técnica para evitar mínimos locais. Um valor alto aumenta a convergência, enquanto um valor baixo diminui a velocidade de convergência, mas aumenta as chances de escapar de mínimos locais.
- $\eta$: A taxa de aprendizado controla o tamanho dos ajustes nos pesos durante o treinamento. Um valor alto leva a uma convergência rápida, mas pode pular o mínimo global, enquanto um valor baixo leva a uma convergência lenta, mas mais precisa.
- $\delta_j$: O delta de erro da unidade $j$ na camada atual.
- $a_i$: A ativação da unidade $i$ na camada anterior.

O processo de propagação direta e inversa, combinado com a atualização dos pesos através do gradiente descendente, é repetido para cada exemplo de treinamento na base de dados em várias iterações (épocas), até que o erro global atinja um nível satisfatório ou um número máximo de épocas seja atingido.

## Conclusão

Em resumo, o backpropagation é um pilar no treinamento de redes neurais MLP. Ele permite que a rede ajuste seus pesos iterativamente para minimizar o erro de saída, aprimorando sua habilidade de fazer previsões precisas e generalizadas. O algoritmo utiliza o gradiente descendente para determinar a direção dos ajustes de peso e é repetido até que a rede alcance um desempenho adequado.