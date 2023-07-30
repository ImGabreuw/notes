# Introdução ao algoritmo de Naive Bayes

### **Teorema de Bayes**

O Teorema de Bayes é um conceito fundamental da teoria de probabilidade que descreve a **relação entre as probabilidades condicionais de eventos**. Ele permite calcular a probabilidade de um evento ocorrer, levando em consideração a ocorrência de outro evento relacionado. O teorema é expresso da seguinte forma:

$$
P(A|B) = \frac{P(B|A) \times P(A)}{P(B)}
$$

Onde:

- $P(A|B)$ é a probabilidade do evento A ocorrer dado que o evento B ocorreu (probabilidade condicional).

- $P(B|A)$ é a probabilidade do evento B ocorrer dado que o evento A ocorreu.

- $P(A)$ é a probabilidade do evento A ocorrer (probabilidade marginal).

- $P(B)$ é a probabilidade do evento B ocorrer (probabilidade marginal).

O Teorema de Bayes é amplamente aplicado em estatística, ciência de dados, aprendizado de máquina e outras áreas para fazer **inferências e previsões com base em dados observados**.

### **Algoritmo de Naive Bayes**

O algoritmo de Naive Bayes é um classificador baseado no Teorema de Bayes e é comumente usado em problemas de classificação em aprendizado de máquina. Ele assume que os **atributos**(características) são **condicionalmente independentes entre si**, o que é conhecido como "naive" (ingênuo) por fazer essa suposição simplificada.

A abordagem do Naive Bayes é eficiente e funciona bem em muitos cenários, mesmo com a suposição de independência condicional. O algoritmo é especialmente útil quando se lida com grandes conjuntos de dados e é amplamente aplicado em tarefas de classificação de texto, como:

- Análise de sentimentos;

- Filtragem de spam;

- Categorização de documentos.

O algoritmo de Naive Bayes utiliza o Teorema de Bayes para calcular as probabilidades de uma instância pertencer a cada classe com base nas características observadas. Em um problema de classificação, o algoritmo estima a probabilidade de pertencimento a cada classe e **classifica a instância na classe com a maior probabilidade**.

Apesar da suposição simplificada de independência condicional, o Naive Bayes muitas vezes apresenta resultados surpreendentemente bons em muitos cenários e é uma escolha popular para tarefas de classificação, especialmente quando se trabalha com dados de texto.
