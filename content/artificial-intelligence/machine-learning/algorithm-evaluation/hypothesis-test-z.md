# Teste de hipótese Z

O teste de hipótese Z é um procedimento estatístico que é usado para testar uma hipótese sobre a média de uma população quando o desvio padrão populacional é conhecido e a distribuição amostral é aproximadamente normal (ou o tamanho da amostra é grande o suficiente para que a distribuição seja aproximadamente normal pelo Teorema do Limite Central).

Os passos básicos para realizar um teste de hipótese Z são os seguintes:

1. **Formulação das hipóteses:**

   - Hipótese Nula (H0): Afirma que não há diferença significativa entre a média amostral e a média populacional. Geralmente assume-se que a média amostral é igual à média populacional.
   - Hipótese Alternativa (H1 ou Ha): Afirma que há uma diferença significativa entre a média amostral e a média populacional. Pode ser bilateral (diferente) ou unilateral (maior ou menor).

2. **Escolha do nível de significância ($\alpha$):**

   Define o limite para rejeitar a hipótese nula. Geralmente é definido em 0.05 ou 0.01.

3. **Cálculo da estatística de teste Z:**

   A estatística de teste Z é calculada usando a fórmula:

   $$
   Z = \frac{\overline{X} - \mu}{\frac{\sigma}{\sqrt{n}}}
   $$

   Onde:

   - $\overline{X}$ é a média amostral (H1).
   - $\mu$ é a média populacional sob a hipótese nula (H0).
   - $\sigma$ é o desvio padrão populacional.
   - $n$ é o tamanho da amostra.

   > **OBS**: erro padrão (_standard error_) definido por $\frac{\sigma}{\sqrt{n}}$ é uma estimativa do quanto o valor de uma estatística do teste varia de amostra para amostra.

   Com o valor calculado na fórmula acima, você consulta na **tabela Z** (tabela de distribuição normal padrão) por esse resultado para encontrar a área acumulada correspondente desse valor Z.

4. **Cálculo de p-value e comparação com o valor crítico:**

   O valor calculado da estatística Z é comparado com o valor crítico da distribuição normal padrão (Z crítico) ou é usado para calcular o valor de p.

   O cálculo do p-value depende da relação entre a média amostral e populacional, pois caso a média amostral for superior que a populacional, então a p-value está localizado no lado direito da distribuição normal e deve-se aplicar a seguinte fórmula:

   $$
   \text{p-value} = 1 - Z
   $$

   Caso contrário, se não a média amostral for menor que populacional então não é necessário usar essa fórmula e o p-value está no lado esquerdo da distribuição gaussiana.

   Se o valor calculado for maior que o valor crítico ou se o valor de p for menor que o nível de significância $\alpha$, a hipótese nula é rejeitada em favor da hipótese alternativa.

5. **Interpretação dos resultados:**

   Se a hipótese nula for rejeitada, isso implica que os dados fornecem evidências suficientes para suportar a hipótese alternativa. Caso contrário, não há evidências suficientes para rejeitar a hipótese nula.

O teste de hipótese Z é amplamente usado em situações em que temos informações sobre o desvio padrão populacional, como quando a população é conhecida ou quando o tamanho da amostra é grande o suficiente para aplicar o Teorema do Limite Central. Ele ajuda a tomar decisões estatisticamente fundamentadas sobre afirmações feitas sobre uma média populacional com base em evidências amostrais.
