# Principais atributos da classe GaussianNB

A classe `GaussianNB` do módulo `sklearn.naive_bayes` têm os seguintes atributos:

1. `classes_`: É um array que armazena as **classes únicas** do problema de classificação. As classes representam os diferentes rótulos ou categorias das amostras presentes nos dados de treinamento. Essas classes são determinadas durante o ajuste do modelo usando o método `fit()`. Cada valor único no array `classes_` representa uma classe específica do problema.

2. `class_count_`: É um array que armazena o **número de amostras de cada classe** presente nos **dados de treinamento**. O array possui o mesmo tamanho que o número de classes únicas e é determinado durante o ajuste do modelo usando o método `fit()`. Os valores do array `class_count_` indicam quantas amostras pertencem a cada classe.

3. `class_prior_`: É um array que armazena as **probabilidades a priori de cada classe** no problema de classificação. As probabilidades a priori representam a probabilidade de uma amostra ser classificada em uma determinada classe antes de observar as características específicas da amostra. Essas probabilidades são calculadas durante o ajuste do modelo usando o método `fit()` e são baseadas no número de amostras em cada classe. O array `class_prior_` possui o mesmo tamanho que o número de classes únicas e seus valores representam as probabilidades a priori de cada classe.

Esses atributos são úteis para entender a distribuição de classes nos dados de treinamento e podem ser acessados após o ajuste do modelo para obter informações relevantes sobre as classes e suas probabilidades. Por exemplo, podemos usar:

- O array `classes_` para obter os nomes das classes;

- O array `class_count_` para obter o número de amostras em cada classe ;

- O array `class_prior_` para obter as probabilidades a priori de cada classe. 

Isso pode ser útil para fazer análises e tomada de decisões com base nas previsões do modelo.