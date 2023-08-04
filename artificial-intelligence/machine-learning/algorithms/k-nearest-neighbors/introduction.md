# Introdução ao algoritmo k-Nearest Neighbors

O algoritmo k-Nearest Neighbors (kNN) é um método de aprendizado de máquina supervisionado usado para classificação e regressão. Ele é considerado um algoritmo simples e intuitivo, mas ainda eficaz em muitos cenários. O kNN é classificado como um método baseado em instâncias, o que significa que ele não cria um modelo explícito durante a fase de treinamento (como os algoritmos de árvore de decisão e Naive Bayes), mas armazena os dados de treinamento para fazer previsões diretamente nos dados de teste.

> Esse algoritmo é classificado como um método preguiçoso (_lazy_), pois a generalização/previsão é feita somente quando uma nova instância precisa ser classificada.

A ideia fundamental por trás do kNN é que objetos que estão próximos no espaço de atributos tendem a pertencer à mesma classe ou ter valores de saída semelhantes. Para fazer uma previsão, o algoritmo kNN procura pelos "k" vizinhos mais próximos do novo exemplo no conjunto de treinamento. Esses vizinhos podem ser determinados usando uma métrica de distância que mede a proximidade entre os pontos no espaço de atributos.

As principais técnicas para o cálculo da distância são:

- Distância euclidiana (mais utilizado)

- Coeficiente de Pearson

- Índice de Tanimoto

- City Block

O processo geral do algoritmo kNN é o seguinte:

1. Receber um novo exemplo (ponto) de teste para classificação ou regressão.

2. Medir a distância entre o exemplo de teste e todos os exemplos no conjunto de treinamento.

3. Selecionar os "k" exemplos mais próximos (os k-vizinhos) com base na métrica de distância escolhida.

4. No caso de classificação, atribuir a classe mais comum entre os k-vizinhos ao exemplo de teste como a sua classe prevista. No caso de regressão, calcular a média ou mediana dos valores alvo dos k-vizinhos para fazer uma previsão contínua.

5. Retornar o resultado da classificação ou regressão como a saída do algoritmo.

A escolha do valor de "k" é um hiperparâmetro importante no algoritmo kNN e pode afetar significativamente o desempenho. Valores pequenos de "k" podem levar a classificações ruidosas ou instáveis, enquanto valores grandes podem levar a uma classificação muito generalizada. Portanto, é necessário encontrar um valor de "k" adequado para o conjunto de dados específico.

### **Vantagens**

- Simplicidade e fácil implementação.

- Funciona bem com dados de alta dimensionalidade.

- É eficaz em problemas não lineares e pode capturar fronteiras de decisão complexas.

### **Limitações**

- Sensível à escala dos atributos; é importante normalizar os dados antes de aplicar o kNN.

- Pode ser computacionalmente caro para grandes conjuntos de treinamento, pois requer cálculos de distância para todos os pontos de treinamento.

- A escolha inadequada do valor de "k" pode levar a resultados subótimos.

  - Para valor de "k" pequeno, os dados com ruídos ou outliers podem prejudicar o resultado

  - Para valor de "k" grande, o algoritmo tem a tendência de classificar a classe com mais elementos, causando overfitting.

### **Caso de uso**

O algoritmo kNN é uma escolha razoável quando se tem um conjunto de dados relativamente pequeno e bem-estruturado, com atributos significativos e com boas práticas de pré-processamento, como normalização dos dados. Ele também pode ser útil quando não se conhece a estrutura ou a relação subjacente dos dados e se deseja uma abordagem de modelagem mais flexível.

No entanto, para conjuntos de dados muito grandes ou com muitos atributos, ou quando a eficiência computacional é crucial, outras técnicas como árvores de decisão, SVM ou redes neurais podem ser preferíveis. É sempre importante testar e comparar diferentes algoritmos para encontrar o mais adequado para o problema em questão.

Os sistemas de recomendação, como da Netflix, implementam o algoritmo kNN utilizando a técnica de filtragem colaborativa.
