# Rejeição de classificadores

A rejeição de classificadores é uma técnica utilizada para lidar com situações em que se deseja evitar a atribuição de uma classe específica a uma observação quando a incerteza é alta ou quando nenhuma das hipóteses disponíveis é considerada adequada. Essa abordagem é utilizada quando a decisão de atribuir uma classe a uma amostra pode não ser confiável devido a diferentes fatores, como a presença de ruídos nos dados ou incerteza nas previsões dos modelos.

Existem três cenários principais em que a rejeição de classificadores pode ser aplicada:

1. **Rejeição de uma única hipótese:**
   Neste caso, a rejeição é aplicada quando a probabilidade atribuída a uma única classe pelo classificador não atinge um limiar pré-definido. Isso é útil quando se deseja evitar classificações em que a confiança do modelo é muito baixa. A rejeição de uma única hipótese é uma abordagem simples para evitar classificações errôneas.

2. **Rejeição de múltiplas hipóteses:**
   Aqui, a rejeição é realizada quando nenhuma das classes atribuídas pelo classificador atinge um certo nível de confiança. Isso pode ser útil quando o modelo está indeciso entre várias classes ou quando os valores de probabilidade estão muito próximos entre si. Essa abordagem pode ajudar a evitar atribuições de classe ambíguas.

3. **Rejeição de todas as hipóteses (não atribuição):**
   Neste cenário, a decisão de não atribuir uma classe é tomada quando todas as classes possíveis têm probabilidades abaixo de um certo limiar. Isso ocorre quando o classificador não consegue fornecer uma previsão confiável e, portanto, a decisão é tomada para não atribuir nenhuma classe à observação. Essa abordagem é aplicada quando a confiança nas previsões do modelo é extremamente baixa.

A rejeição de classificadores pode ser uma estratégia útil para aumentar a confiabilidade das classificações, especialmente em aplicações reais. No entanto, a escolha do limiar de confiança é uma consideração importante, uma vez que um limiar muito alto pode resultar em muitos casos não atribuídos, enquanto um limiar muito baixo pode resultar em classificações errôneas. Portanto, é necessário um equilíbrio entre a rejeição e a atribuição de classes com base nas características e requisitos específicos do problema.
