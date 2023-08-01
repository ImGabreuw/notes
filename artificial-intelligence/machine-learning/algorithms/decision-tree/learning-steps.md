# Etapas de aprendizagem do algoritmo de árvore de decisão

Para criar uma árvore de decisão, utilizamos as fórmulas de entropia e ganho de informação para tomar decisões sobre como dividir os dados em diferentes ramos da árvore. A árvore de decisão é construída de forma recursiva, dividindo os dados em subconjuntos cada vez menores até que as folhas da árvore representem grupos homogêneos de dados.

### **Entropia**

A entropia é uma medida de impureza ou desordem em um conjunto de dados utilizado no contexto de árvores de decisão e classificação. Quanto maior a entropia, mais impuro e desordenado é o conjunto de dados, pois há uma maior mistura de classes diferentes. Por outro lado, quanto menor a entropia, mais puro e homogêneo é o conjunto de dados, com uma concentração maior de exemplos de uma única classe.

A fórmula para calcular a entropia de um conjunto de dados $S$ é dada por:

$$\text{Entropia}(S) = -\sum_{i=1}^{c} p_i \log_2(p_i)$$

Onde:

- $\text{Entropia}(S)$ é a entropia do conjunto de dados $S$;

- $c$ é o número de classes diferentes no conjunto de dados;

- $p_i$ é a proporção de exemplos da classe $i$ em relação ao total de exemplos no conjunto $S$.

A entropia é maximizada quando o conjunto de dados possui uma distribuição uniforme de classes, ou seja, todas as classes têm a mesma proporção de exemplos. Nesse caso, a incerteza é máxima e a entropia assume o valor máximo de $\log_2(c)$, onde $c$ é o número de classes. Por outro lado, a entropia é minimizada quando o conjunto de dados é completamente homogêneo, contendo exemplos de apenas uma classe. Nesse caso, a incerteza é mínima e a entropia assume o valor mínimo de 0.

No contexto de árvores de decisão, a entropia é utilizada para calcular o ganho de informação ao dividir os dados com base em um atributo específico. A ideia é escolher o atributo que resulta na maior redução da entropia, ou seja, a divisão que torna os subconjuntos resultantes mais homogêneos e, consequentemente, mais informativos para a classificação.

### **Ganho de Informação**

O ganho de informação é uma métrica utilizada no processo de construção de árvores de decisão para avaliar quais atributos ou características são os mais importantes para realizar as divisões dos dados. Em outras palavras, o ganho de informação mede a redução da incerteza ou desordem nos dados após uma determinada divisão ser feita com base em um atributo específico.

A fórmula para calcular o ganho de informação é baseada na diferença entre a entropia do conjunto de dados original e a entropia ponderada dos subconjuntos resultantes após a divisão:

$$\text{Ganho de Informação}(S, A) = \text{Entropia}(S) - \sum_{v \in \text{Valores}(A)} \frac{|S_v|}{|S|} \times \text{Entropia}(S_v)$$

Onde:

- $\text{Ganho de Informação}(S, A)$ é o ganho de informação do conjunto de dados $S$ ao dividir os dados com base no atributo $A$;

- $\text{Entropia}(S)$ é a entropia do conjunto de dados original $S$;

- $\text{Valores}(A)$ é o conjunto de valores únicos do atributo $A$;

- $|S|$ é o número total de exemplos no conjunto $S$;

- $S_v$ é o subconjunto dos exemplos de $S$ em que o atributo $A$ tem o valor $v$;

- $|S_v|$ é o número de exemplos em $S_v$.

O ganho de informação é usado no processo de seleção do melhor atributo para fazer a divisão dos dados em cada nó da árvore de decisão. A ideia é escolher o atributo que resulta no maior ganho de informação, ou seja, a divisão que mais reduz a incerteza nos dados e torna os subconjuntos resultantes mais homogêneos. Isso permite construir uma árvore de decisão mais precisa e eficiente para classificar novos dados com base nas características disponíveis.

### **Conclusão**

O processo de criação da árvore continua de forma recursiva para cada ramo da árvore, até que sejam atingidas condições de parada, como uma profundidade máxima ou um número mínimo de exemplos em cada folha. Lembrando que a raiz corresponde ao atributo com maior importância na árvore de decisão e vai reduzindo conforme aumenta a profundidade dos ramos. A escolha do atributo para exercer o papel de raiz é com base no maior valor de ganho do informação.

Em resumo, as fórmulas de entropia e ganho de informação são usadas para guiar a construção da árvore de decisão, buscando a melhor divisão dos dados em cada nó da árvore para obter um modelo de classificação preciso e com boa capacidade de generalização.
