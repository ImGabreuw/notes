# Escalonamento de atributos

Escalonamento de atributos, também conhecido como normalização, é um procedimento utilizado no pré-processamento de dados para **ajustar as escalas dos atributos** de um conjunto de dados. O objetivo é transformar os valores dos atributos para um intervalo específico ou remover a dependência do modelo com a escala dos atributos. Essa etapa é particularmente importante quando os atributos têm escalas diferentes e podem causar problemas em algoritmos de aprendizado de máquina baseado em distância como KNN e redes neurais artificiais, pois o algoritmo pode interpretar que valores maiores possuem uma maior importância.

Existem duas técnicas comuns de escalonamento de atributos:

1. **Standardization (Padronização)**: Nesta técnica, os valores dos atributos são **transformados para terem média zero e desvio padrão igual a 1**. Geralmente, ela é utilizado quando a amostra possui muitos _outliers_ (valores fora do padrão). A fórmula para a padronização é dada por:

   $$
   X_{stand} = \frac{(X - X_{mean})}{X_{std}}
   $$

   Onde $X_{stand}$ é o valor padronizado do atributo, $X$ é o valor original do atributo, $X_{mean}$ é a média do atributo e $X_{std}$ é o desvio padrão do atributo.

2. **Min-Max Scaling (Normalização)**: Nesta técnica, os valores dos atributos são **transformados para um intervalo específico**, geralmente entre 0 e 1. A fórmula para a normalização é dada por:

   $$
   X_{norm} = \frac{(X - X_{min})}{(X_{max} - X_{min})}
   $$

   Onde $X_{norm}$ é o valor normalizado do atributo, $X$ é o valor original do atributo, $X_{min}$ é o valor mínimo do atributo e $X_{max}$ é o valor máximo do atributo.

O escalonamento de atributos é importante porque muitos algoritmos de aprendizado de máquina são **sensíveis às escalas dos atributos**. Quando os atributos têm escalas muito diferentes, alguns algoritmos podem dar mais importância a atributos com valores maiores e ignorar atributos com valores menores, o que pode levar a resultados incorretos.

Em resumo, o escalonamento de atributos é uma etapa essencial no pré-processamento de dados para garantir que todos os atributos tenham a mesma escala e contribuam igualmente para a modelagem do algoritmo de aprendizado de máquina. Isso melhora a eficácia e a precisão dos modelos resultantes.
