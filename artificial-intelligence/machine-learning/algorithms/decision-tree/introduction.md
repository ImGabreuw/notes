# Introdução a arvores de decisão

A aprendizagem por árvore de decisão, também conhecido como CART (_Classification and Regression Tree_), é um método de aprendizado de máquina supervisionado utilizado para resolver problemas de classificação e regressão. O objetivo dessa técnica é criar um modelo que possa tomar decisões através de um processo de decisão hierárquico, semelhante a uma árvore, onde cada nó interno representa uma pergunta sobre uma determinada característica do dado e cada folha representa uma decisão ou uma previsão.

Esse algoritmo era amplamente utilizado em meados dos anos 90, porém perdeu muita popularidade ao longo das décadas, pois ele se trata de um problema de NP-completo, ou seja, o tempo gasto para processamento de estruturas complexas cresce exponencialmente.

Entretanto, esse método foi aprimorado e então surgiu o modelo de aprendizagem chamado _random forest_ (floresta randômica) o qual provocou em uma melhora expressiva em desempenho.

> **OBS**: o modelo _random forest_ é utilizado no dispositivo Kinect da Microsoft.

O funcionamento da aprendizagem por árvore de decisão pode ser resumido em quatro etapas principais:

1. Seleção do atributo: A primeira etapa é escolher qual atributo será utilizado para fazer a primeira divisão dos dados. O algoritmo busca o atributo que melhor separa os dados em relação à classe alvo. Isso é feito calculando uma métrica de impureza, como o índice Gini ou a entropia, e escolhendo o atributo que resulta em menor impureza.

2. Divisão dos dados: Após selecionar o atributo, os dados são divididos em subconjuntos com base nos valores desse atributo. Cada valor do atributo corresponde a um ramo da árvore, e os dados são distribuídos nos ramos correspondentes.

3. Recursão: O processo de seleção de atributos e divisão dos dados é aplicado novamente a cada subconjunto resultante, de forma recursiva. O algoritmo continua a dividir os dados até que as amostras em cada ramo sejam todas da mesma classe (ou até que um critério de parada seja alcançado).

4. Criação das folhas: Quando a recursão termina, as folhas da árvore são criadas, cada uma representando uma decisão ou uma previsão para uma determinada classe. A decisão em cada folha é geralmente baseada na classe majoritária dos dados que chegaram até essa folha.

Após a criação da árvore, ela pode ser utilizada para fazer previsões em novos dados. Para isso, basta seguir o caminho da raiz até uma folha, de acordo com os valores das características do dado em questão. A classe associada à folha alcançada é então a previsão do modelo para esse dado.

Visto a definição e uma breve explicação sobre o funcionamento da árvore de decisão, vamos elencar as principais vantagens e desvantagens desse tipo de algoritmo.

**Vantagens:**

1. **Fácil interpretação:** As árvores de decisão são fáceis de entender e interpretar, pois se assemelham a diagramas de fluxo que refletem a lógica de decisão. Isso torna a árvore uma ferramenta valiosa para analisar e explicar o processo de tomada de decisão do modelo.

2. **Não precisa de normalização ou padronização:** As árvores de decisão não são sensíveis à escala dos atributos, o que significa que não é necessário normalizar ou padronizar os dados antes de usá-los como entrada para o algoritmo. Isso simplifica o processo de preparação de dados.

3. **Rápido para classificar novos registros:** Uma vez que a árvore é construída, a classificação de novos registros é rápida, pois envolve apenas a navegação pela estrutura da árvore para chegar a uma decisão.

**Desvantagens:**

1. **Geração de árvores muito complexas:** Árvores de decisão podem crescer muito e se tornar excessivamente complexas, especialmente quando há muitos atributos ou classes no conjunto de dados. Árvores muito complexas tendem a se sobreajustar (problema do _overfitting_) aos dados de treinamento, resultando em baixa capacidade de generalização para novos dados.

2. **Pequenas mudanças nos dados podem mudar a árvore:** Árvores de decisão são sensíveis a pequenas mudanças nos dados de treinamento, o que pode levar a diferentes árvores sendo geradas em diferentes execuções do algoritmo. Essa variabilidade pode tornar o modelo menos confiável e mais difícil de interpretar.

3. **Problema NP-completo para construir a árvore:** O processo de construção de uma árvore de decisão ótima é um problema NP-completo, o que significa que encontrar a melhor árvore possível requer um tempo computacional exponencial à medida que o tamanho do conjunto de dados aumenta. Portanto, algoritmos de construção de árvores geralmente usam abordagens heurísticas que podem não garantir a melhor árvore possível, mas produzem uma solução razoável em tempo viável.
