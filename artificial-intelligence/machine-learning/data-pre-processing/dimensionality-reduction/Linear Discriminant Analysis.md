O LDA (Linear Discriminant Analysis), ou Análise de Discriminante Linear em português, é uma técnica de redução de dimensionalidade que compartilha semelhanças com o PCA (Principal Component Analysis) em termos de encontrar combinações lineares de características originais. No entanto, o LDA tem um objetivo diferente e é geralmente usado em tarefas de classificação.

Além de encontrar as componentes principais que descrevem a variação nos dados, o LDA também se concentra em encontrar eixos que maximizam a separação entre múltiplas classes em um problema de classificação.

O LDA é um algoritmo supervisionado, o que significa que ele requer a informação das classes para realizar a redução de dimensionalidade. Ele é usado principalmente em tarefas de classificação, onde há uma variável dependente (rótulos de classe) que você deseja prever com base nas características independentes.

A principal diferença entre o LDA e o PCA é que, enquanto o PCA se concentra em encontrar eixos que maximizam a variação total nos dados, o LDA se concentra em encontrar eixos que maximizam a separação entre as classes. Portanto, o LDA leva em consideração a estrutura de classe dos dados.

Das m variáveis independentes originais, o LDA extrai p (onde $p \leq q$) novas variáveis independentes que melhor separam as classes da variável dependente. Essas novas variáveis são chamadas de discriminantes lineares.

## Vantagens

- Redução de dimensionalidade com foco na separação de classes: O LDA é especialmente útil em tarefas de classificação, onde o objetivo é maximizar a separação entre as classes. Ele ajuda a reduzir a dimensionalidade mantendo as informações que são mais discriminativas para a tarefa de classificação.

- Melhor desempenho em classificação: Em muitos casos, o LDA pode melhorar o desempenho de algoritmos de classificação em comparação com o uso de todas as características originais.

- Interpretabilidade: As novas variáveis obtidas pelo LDA podem ser interpretadas como as características mais discriminativas para a tarefa de classificação.

> [!note]
> Veja também a diferença entre o PCA e LDA na seguinte anotação: [[Diferença entre LDA e PCA]]