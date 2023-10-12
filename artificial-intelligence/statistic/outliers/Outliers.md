Outliers, em português "valores atípicos" ou "pontos fora da curva", são pontos de dados que se destacam significativamente do restante do conjunto de dados. Eles são chamados de "atípicos" porque não seguem o padrão geral ou a tendência dos outros dados. Eles são frequentemente identificados com base em métricas estatísticas, como a distância em relação à média ou a variação em torno da mediana.

A identificação e o tratamento de outliers são tarefas importantes na análise de dados, pois esses valores anormais podem distorcer as estatísticas descritivas e prejudicar a precisão dos modelos estatísticos ou de aprendizado de máquina.

**Causas:** Outliers podem ter várias causas, incluindo acaso, erros no preenchimento de dados (por exemplo, erros de digitação ou medições incorretas) e, em alguns casos, podem até indicar atividades fraudulentas (por exemplo, em dados financeiros).

**Impacto:** Outliers podem distorcer estatísticas descritivas, como a média e o desvio padrão, tornando-as menos representativas do conjunto de dados. Além disso, quando se aplica algoritmos de aprendizado de máquina, os outliers podem afetar negativamente o desempenho do modelo, especialmente em algoritmos sensíveis a valores extremos, como a regressão linear.

**Identificação:** Outliers podem ser identificados visualmente por meio de gráficos, como [[Detecção de outliers com boxplot|boxplots]] (para uma única variável) ou gráficos de dispersão (para duas variáveis). Também existem métodos estatísticos, como o Z-score, que calcula o quanto um valor está afastado da média em termos de desvio padrão.

**Tratamento:**

- **Remover o registro:** Essa abordagem envolve a exclusão completa dos registros que contêm outliers. No entanto, essa não é uma opção ideal, pois pode resultar na perda de informações importantes.

- **Ignorar o outlier:** Às vezes, os outliers são ignorados em análises específicas, mas isso deve ser feito com cautela, pois pode afetar a integridade da análise.

- **Substituir o outlier:** Em algumas situações, os outliers são substituídos por valores menos extremos, como a média ou a mediana do conjunto de dados. Essa abordagem é chamada de imputação e é usada quando a remoção não é apropriada.

A identificação e o tratamento adequado de outliers dependem do contexto e dos objetivos da análise de dados. Em alguns casos, os outliers podem fornecer informações valiosas sobre eventos excepcionais ou problemas nos dados, enquanto em outros, podem ser considerados ruído e prejudicar a análise. Portanto, a abordagem exata para lidar com outliers deve ser cuidadosamente considerada em cada situação.
