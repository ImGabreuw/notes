# Base de Treinamento e Base de Teste

A **base de treinamento** é o conjunto de dados utilizado para **treinar o modelo** de aprendizado de máquina. Nessa fase, o algoritmo é **exposto aos exemplos rotulados** (entradas e saídas esperadas) e aprende a mapear as características das entradas para as saídas corretas. O modelo ajusta seus parâmetros de acordo com os dados de treinamento, buscando minimizar o erro.

A **base de teste** é um conjunto de dados separado, não visto pelo modelo durante o treinamento. Essa base é utilizada para **avaliar o desempenho do modelo em dados não conhecidos**. Ao apresentar as entradas da base de teste ao modelo, comparamos as previsões do modelo com as saídas reais (rótulos) para calcular a taxa de acerto ou outras métricas de desempenho.

### **Por que dividir os dados em base de treinamento e teste?**

A divisão entre base de treinamento e teste é fundamental para **avaliar a capacidade de generalização do modelo**. Sem essa divisão, o modelo poderia simplesmente memorizar os dados de treinamento e não seria capaz de realizar previsões precisas em novos dados. A avaliação com dados de teste não utilizados no treinamento fornece uma estimativa mais realista do desempenho do modelo em situações do mundo real.

### **Procedimento comum**

1. **Divisão dos Dados:** O conjunto de dados é dividido em duas partes: base de treinamento e base de teste. Uma proporção comum é 70% para treinamento e 30% para teste, mas essa divisão pode variar dependendo do tamanho do conjunto de dados e do contexto do problema.

2. **Treinamento:** O modelo é treinado na base de treinamento, e seus parâmetros são ajustados para minimizar o erro em relação aos dados de treinamento.

3. **Avaliação:** O modelo é avaliado na base de teste. As entradas da base de teste são fornecidas ao modelo, e suas previsões são comparadas com os rótulos reais para calcular métricas de desempenho, como acurácia, precisão, revocação (_recall_), _F1-score_, entre outras.

4. **Ajustes e Validação Cruzada:** Com base nos resultados da avaliação, é possível ajustar os hiperparâmetros do modelo para melhorar o desempenho. Além disso, a validação cruzada pode ser usada para uma avaliação mais robusta, onde o conjunto de dados é dividido em várias partições para obter uma avaliação mais geral do modelo.

### **Conclusão**

A avaliação de algoritmos é uma etapa fundamental na construção de modelos de aprendizado de máquina. A divisão entre base de treinamento e base de teste permite medir a capacidade de generalização do modelo em dados não vistos durante o treinamento. Essa avaliação é crucial para garantir que o modelo funcione de maneira precisa e robusta em situações do mundo real.