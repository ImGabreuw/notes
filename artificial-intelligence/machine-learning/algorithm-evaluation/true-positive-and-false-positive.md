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

Na matriz de verdadeiro positivo (TP), falso positivo (FP), verdadeiro negativo (TN) e falso negativo (FN), os termos "Type I Error" e "Type II Error" referem-se a dois tipos diferentes de erros que podem ocorrer em um teste estatístico ou em um modelo de classificação:

1. **Type I Error (Erro do Tipo I)**: Também conhecido como erro de falso positivo, ocorre quando o teste ou o modelo erroneamente rejeita a hipótese nula (afirmação de não haver efeito ou relação), quando na verdade a hipótese nula é verdadeira. Em termos de classificação, isso significa que o modelo classifica incorretamente uma instância como pertencente a uma classe positiva quando, na verdade, pertence à classe negativa.

2. **Type II Error (Erro do Tipo II)**: Também conhecido como erro de falso negativo, ocorre quando o teste ou o modelo falha em rejeitar a hipótese nula quando a hipótese alternativa (afirmação de um efeito ou relação) é verdadeira. Em classificação, isso significa que o modelo classifica erroneamente uma instância como pertencente à classe negativa quando, na verdade, pertence à classe positiva.

A matriz de confusão resume esses erros, juntamente com os acertos, em uma tabela que ajuda a avaliar o desempenho de um modelo de classificação. A matriz inclui os seguintes valores:

- Verdadeiro Positivo (TP): Instâncias positivas corretamente classificadas.
- Falso Positivo (FP): Instâncias negativas incorretamente classificadas como positivas.
- Verdadeiro Negativo (TN): Instâncias negativas corretamente classificadas.
- Falso Negativo (FN): Instâncias positivas incorretamente classificadas como negativas.

Então, em resumo, _Type I Error_ refere-se à situação em que o modelo erra em identificar algo que não deveria, e _Type II Error_ refere-se à situação em que o modelo deixa de identificar algo que deveria.