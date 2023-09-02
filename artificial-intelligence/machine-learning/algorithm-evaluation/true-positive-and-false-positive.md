# Verdadeiro positivo e falso positivo

Os conceitos de verdadeiro positivo e falso positivo são fundamentais para a avaliação de algoritmos. Esse indicador consiste em uma matriz quadrática onde as linhas representam os dados reais e as colunas de cada linha representam as previsões/classificações do algoritmo. Essa abordagem é muito similar com a matriz de confusão.

A seguir um exemplo de matriz verdadeiro positivo e falso positivo:

|               |    Spam positivo    |    Spam negativo    |
| :-----------: | :-----------------: | :-----------------: |
| Spam positivo | Verdadeiro positivo |   Falso negativo    |
| Spam negativo |   Falso positivo    | Verdadeiro negativo |

- `Verdadeiro positivo`: indica que o algoritmo classificou como "spam" e no conjunto de teste também foi classificado como "spam" (acerto).
- `Falso negativo`: indica que o algoritmo classificou como "não spam", porém no conjunto de teste foi classificado como "spam" (erro).
- `Falso positivo`: indica que o algoritmo classificou como "spam", mas no conjunto de teste foi classificado como "não spam" (erro).
- `Verdadeiro negativo`: indica que o algoritmo classificou como "não spam" e no conjunto de teste também foi classificado como "não spam" (acerto).

Na diagonal principal da matriz representam os acertos do algoritmo, logo o que não pertence a ela é considerado erro.