A confiança é uma métrica que avalia a **probabilidade** de que, se um **conjunto de itens aparecer em uma transação**, outro conjunto específico de itens também estará presente. No contexto do Apriori, estamos interessados em calcular a confiança para regras de associação entre itens.

A fórmula geral para calcular a confiança de uma regra de associação é a seguinte:

$$
\text{Confiança}(\text{A} \rightarrow \text{B}) = \frac{\text{Suporte}(\text{A} \cup \text{B})}{\text{Suporte}(\text{A})}
$$

Onde:

- A é o conjunto de itens antecedentes (itens que já sabemos que estão na transação).
- B é o conjunto de itens consequentes (itens que queremos prever ou verificar a presença).
- Suporte($A \cup B$) é o suporte do conjunto de itens A união B (ou seja, quantas vezes A e B aparecem juntos).
- Suporte(A) é o suporte do conjunto de itens A (ou seja, quantas vezes A aparece).

Com base no exemplo do cálculo do suporte, vamos calcular a confiança para as regras de associação usando os itens frequentes que encontramos anteriormente:

1. Para $(Leite, Pão) \rightarrow (Maçã)$:

   - Suporte(Leite, Pão, Maçã) = 2/5 = 0.4 (40%)
   - Suporte(Leite, Pão) = 3/5 = 0.6 (60%)

   Confiança(Leite, Pão $\rightarrow$ Maçã) = 0.4 / 0.6 = 0.67 (67%)

2. Para $(Pão, Maçã) \rightarrow (Frutas)$:

   - Suporte(Pão, Maçã, Frutas) = 1/5 = 0.2 (20%)
   - Suporte(Pão, Maçã) = 2/5 = 0.4 (40%)

   Confiança(Pão, Maçã $\rightarrow$ Frutas) = 0.2 / 0.4 = 0.5 (50%)

3. Para (Pão, Frutas) $\rightarrow$ (Leite):

   - Suporte(Leite, Pão, Frutas) = 2/5 = 0.4 (40%)
   - Suporte(Pão, Frutas) = 3/5 = 0.6 (60%)

   Confiança(Pão, Frutas $\rightarrow$ Leite) = 0.4 / 0.6 = 0.67 (67%)

4. Para (Leite, Pão, Maçã) => (Frutas):

   - Suporte(Leite, Pão, Maçã, Frutas) = 1/5 = 0.2 (20%)
   - Suporte(Leite, Pão, Maçã) = 1/5 = 0.2 (20%)

   Confiança(Leite, Pão, Maçã => Frutas) = 0.2 / 0.2 = 1.0 (100%)

Neste caso, a confiança é de 100%, o que significa que sempre que Leite, Pão e Maçã estiverem presentes, Frutas também estará presente nas transações. Isso indica uma associação muito forte entre esses itens.

Esses são os cálculos de confiança para as regras de associação entre os conjuntos de itens frequentes. A confiança nos diz a probabilidade de que, dado o antecedente, o consequente também estará presente nas transações. As regras com alta confiança são geralmente as mais úteis, pois indicam associações fortes entre os itens.
