# Ajuste de pesos e erros em redes multicamada

Nas redes neurais Perceptron multicamadas, o ajuste dos pesos ocorre em um processo estruturado:

1. **Inicialização dos Pesos:** Os pesos são atribuídos valores aleatórios para cada conexão entre neurônios.

2. **Cálculos e Cálculo do Erro:** A rede realiza os cálculos utilizando esses pesos e, na abordagem de aprendizagem supervisionada, o erro é calculado comparando as saídas obtidas com as saídas esperadas para os dados.

3. **Backpropagation:** É a fase de atualização dos pesos. O erro calculado é retroalimentado através da rede, ajustando os pesos de acordo com a magnitude do erro. Isso envolve a aplicação de técnicas como a descida do gradiente.

4. **Convergência:** O processo de ajuste dos pesos continua iterativamente até que o erro atinja um valor considerado suficientemente baixo. Geralmente, o erro não chega a 0, mas é reduzido a um valor mínimo aceitável.

Na literatura, a métrica que quantifica a quantidade de erro da rede neural é frequentemente chamada de _cost function_ (função de custo). Essa função é uma medida da discrepância entre as previsões feitas pela rede neural e os valores reais. O objetivo principal é minimizar essa função de custo para melhorar o desempenho da rede e obter resultados mais precisos.
