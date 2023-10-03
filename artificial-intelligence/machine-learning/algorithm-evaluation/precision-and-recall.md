# Precision e recall

No contexto de avaliação de algoritmos de classificação, "precision" e "recall" são duas métricas importantes que fornecem insights sobre o desempenho do modelo em relação às classes positivas e negativas. Essas métricas são especialmente úteis quando há um desequilíbrio significativo entre as classes.

- **Precision (Precisão)**: A precisão mede a proporção de instâncias classificadas como positivas que realmente são positivas. Em outras palavras, é a taxa de verdadeiros positivos em relação a todos os exemplos classificados como positivos (verdadeiros positivos e falsos positivos). A fórmula é:

  $$
  \text{Precision} = \frac{\text{True Positives}}{\text{True Positives} + \text{False Positives}}
  $$

  A precisão é uma métrica útil quando o foco é minimizar os falsos positivos, ou seja, quando é crucial evitar que exemplos negativos sejam incorretamente classificados como positivos.

- **Recall (Revocação ou Sensibilidade)**: O recall mede a proporção de instâncias positivas que foram corretamente classificadas como positivas em relação a todas as instâncias que são realmente positivas (verdadeiros positivos e falsos negativos). A fórmula é:

  $$
  \text{Recall} = \frac{\text{True Positives}}{\text{True Positives} + \text{False Negatives}}
  $$

  O recall é especialmente relevante quando o objetivo é identificar a maior quantidade possível de exemplos positivos, minimizando os falsos negativos. Por exemplo, em um cenário médico, é crucial detectar todas as doenças verdadeiras, mesmo que isso resulte em alguns falsos alarmes.

É importante notar que existe um trade-off entre precisão e recall, aumentar um pode diminuir o outro. Portanto, a escolha entre essas métricas dependerá do contexto do problema e das necessidades específicas do cenário. Em algumas situações, pode ser mais importante maximizar a precisão, enquanto em outras, o recall pode ser a métrica mais crítica. Em muitos casos, uma combinação dessas métricas, como a pontuação F1 (a média harmônica entre precisão e recall), é usada para avaliar o desempenho global do modelo.
