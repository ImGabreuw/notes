O PCA (Principal Component Analysis) é uma técnica de análise de dados que se encaixa no paradigma de redução de dimensionalidade, especificamente na categoria de extração de características. É uma das ferramentas mais amplamente utilizadas na análise exploratória de dados e pré-processamento de dados em aprendizado de máquina e estatística.

O PCA é uma técnica não supervisionada, o que significa que não requer um atributo de classe (variável dependente). Ele é usado principalmente para explorar a estrutura dos dados e reduzir a dimensionalidade.

O objetivo principal do PCA é identificar correlações entre as variáveis originais. Se duas ou mais variáveis estiverem fortemente correlacionadas, isso indica que elas compartilham informações semelhantes. O PCA tenta capturar essas informações compartilhadas em um conjunto menor de novas variáveis, chamadas componentes principais.

Das m variáveis independentes originais, o PCA extrai p (onde $p \leq q$) novas variáveis independentes que explicam melhor a variação presente na base de dados. Cada nova variável é uma combinação linear das variáveis originais.

A escolha do número de componentes principais (p) é flexível e pode ser determinada pelo usuário com base em critérios como a quantidade de variação explicada.

## Vantagens

- Redução da dimensionalidade: O PCA é usado para reduzir a dimensionalidade dos dados, o que é especialmente útil quando você está lidando com conjuntos de dados com muitas características. Reduzir a dimensionalidade pode ajudar a simplificar a análise e reduzir o risco de overfitting em modelos de aprendizado de máquina.

- Eliminação de multicolinearidade: O PCA pode ajudar a eliminar a multicolinearidade (correlação alta entre variáveis independentes), o que pode melhorar a interpretabilidade dos modelos.

- Compressão de dados: O PCA pode ser usado para comprimir dados enquanto mantém informações essenciais. Isso é útil em sistemas de armazenamento e transmissão de dados.

- Visualização de dados: O PCA também é usado para visualizar dados de alta dimensão em um espaço bidimensional ou tridimensional.

> [!note]
> Veja também a diferença entre o PCA e LDA na seguinte anotação: [[Diferença entre LDA e PCA]]
