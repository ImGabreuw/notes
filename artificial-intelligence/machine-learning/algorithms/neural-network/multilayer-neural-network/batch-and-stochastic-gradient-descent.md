# Descida de gradiente estocástico e em lote

A descida de gradiente é uma técnica amplamente empregada para otimizar funções em algoritmos de aprendizado de máquina, incluindo redes neurais. O objetivo é ajustar os parâmetros do modelo de modo a minimizar uma função de custo, que quantifica a discrepância entre as previsões do modelo e os valores reais dos dados de treinamento.

Três variantes principais da descida de gradiente são o Batch Gradient Descent, o Stochastic Gradient Descent (SGD) e o Mini-Batch Gradient Descent. Vamos explorar cada uma delas:

1. **Batch Gradient Descent:**
   No Batch Gradient Descent, todos os dados de treinamento são usados para calcular o gradiente e atualizar os parâmetros do modelo de uma só vez. Isso significa que a cada iteração, todas as amostras do conjunto de treinamento são processadas antes de ajustar os pesos. Embora possa ser computacionalmente intensivo, o Batch Gradient Descent geralmente converge para uma solução precisa, visto que a média das atualizações de peso é considerada.

2. **Stochastic Gradient Descent (SGD):**
   O SGD difere do Batch Gradient Descent ao atualizar os pesos a cada iteração, utilizando apenas um exemplo de treinamento por vez. Isso torna o SGD mais rápido a cada iteração, mas também resulta em convergência mais ruidosa, pois as atualizações são menos estáveis devido à variabilidade dos exemplos individuais.

3. **Mini-Batch Gradient Descent:**
   O Mini-Batch Gradient Descent é uma abordagem intermediária entre o Batch e o SGD. Nesse caso, o conjunto de treinamento é dividido em pequenos subconjuntos chamados mini-batches. As atualizações dos pesos são calculadas com base na média dos gradientes dos exemplos dentro de cada mini-batch. Essa abordagem combina a eficiência do SGD com a estabilidade do Batch Gradient Descent.

Em síntese, a Descida de Gradiente Estocástico (SGD) é uma técnica crucial para otimizar modelos de aprendizado de máquina, incluindo redes neurais. O Batch Gradient Descent usa todo o conjunto de treinamento a cada iteração, o SGD atualiza com base em um único exemplo, e o Mini-Batch Gradient Descent trabalha com pequenos subconjuntos de dados. A escolha entre essas abordagens depende da natureza do problema, do tamanho do conjunto de dados e das considerações de eficiência computacional.
