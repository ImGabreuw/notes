
![](diferenca-entre-pca-e-lda.png)

- **Objetivo**: O PCA visa maximizar a variação total dos dados, enquanto o LDA visa maximizar a separação entre múltiplas classes em um problema de classificação. Em outras palavras, o LDA considera a informação de classe durante a redução de dimensionalidade.

- **Supervisão**: O LDA é um algoritmo supervisionado, o que significa que ele usa rótulos de classe conhecidos para guiar a extração de características. O PCA é não supervisionado, o que significa que ele opera apenas com base na estrutura de dados sem considerar as classes.

- **Número de Componentes**: Assim como o PCA, o LDA também reduz a dimensionalidade, mas geralmente produz menos componentes principais do que o PCA. O número máximo de componentes principais que podem ser extraídos pelo LDA é igual ao número de classes menos um (C - 1), onde C é o número de classes no problema de classificação.