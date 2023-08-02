# Algoritmo OneR

O algoritmo One-R ou OreR (One-Rule) é uma abordagem simples de para a geração de regras. Ele é considerado um dos métodos mais básicos e interpretáveis para classificação, sendo adequado para problemas com poucos atributos e onde se deseja uma solução rápida e fácil de interpretar.

A ideia principal do algoritmo One-R é selecionar uma única regra que seja a mais informativa para fazer previsões. Essa regra é a partir da escolha de um único atributo para realizar a previsão. Essa escolha é baseada nas fórmulas de ganho de informação e entropia, ou seja, identificar o atributo considerado mais importante no conjunto.

Tendo como base o conjunto de dados abaixo. O algoritmo segue os seguintes passos:

| História de crédito |  Risco   |
| :-----------------: | :------: |
|        Ruim         |   Alto   |
|    Desconhecido     |   Alto   |
|    Desconhecido     | Moderado |
|    Desconhecido     |   Alto   |
|    Desconhecido     |  Baixo   |
|    Desconhecido     |  Baixo   |
|        Ruim         |   Alto   |
|        Ruim         | Moderado |
|         Boa         |  Baixo   |
|         Boa         |  Baixo   |
|         Boa         |   Alto   |
|         Boa         | Moderado |
|         Boa         |  Baixo   |
|        Ruim         |   Alto   |

1. Para cada atributo do conjunto de dados, analisa-se a relação entre esse atributo e a classe de destino (rótulo ou classe que queremos prever).

2. Calcula-se a frequência de cada valor do atributo para cada classe. Por exemplo, se tivermos um atributo "História de crédito" com os valores "Boa", "Ruim" e "Desconhecida", identifique quantos exemplos de cada classe existem para cada valor desse atributo.

   |      Atributo       |    Valor     | Quantidade | Regras | Erro |
   | :-----------------: | :----------: | :--------: | :----: | :--: |
   | História de crédito |     Boa      |     5      |        |      |
   | História de crédito |     Ruim     |     5      |        |      |
   | História de crédito | Desconhecida |     4      |        |      |

3. Com base nessas frequências, seleciona-se o valor do atributo que mais se correlaciona com a classe. Em outras palavras, escolhe-se o valor que apresenta a maior taxa de acerto para a classe de destino.

   - História de crédito = Boa

     ```
     SE "Boa" ENTÃO "Alto" = 1
     SE "Boa" ENTÃO "Moderado" = 1
     SE "Boa" ENTÃO "Baixo" = 3
     ```

     A regra com maior taxa de acerto é `SE "Boa" ENTÃO "Baixo" = 3`. Logo o erro para erra essa regra é:

     $$
     \text{Erro} = \frac{\text{Frequência} - \text{Taxa de acerto}}{\text{Frequência}} = \frac{2}{5}
     $$

     |      Atributo       |    Valor     | Quantidade |           Regras           |     Erro      |
     | :-----------------: | :----------: | :--------: | :------------------------: | :-----------: |
     | História de crédito |     Boa      |     5      | SE "Boa" ENTÃO "Baixo" = 3 | $\frac{2}{5}$ |
     | História de crédito |     Ruim     |     5      |                            |               |
     | História de crédito | Desconhecida |     4      |                            |               |

   - História de crédito = Moderado

     ```
     SE "Ruim" ENTÃO "Alto" = 3
     SE "Ruim" ENTÃO "Moderado" = 1
     SE "Ruim" ENTÃO "Baixo" = 0
     ```

     A regra com maior taxa de acerto é `SE "Ruim" ENTÃO "Alto" = 3`. Logo o erro para erra essa regra é:

     $$
     \text{Erro} = \frac{\text{Frequência} - \text{Taxa de acerto}}{\text{Frequência}} = \frac{3}{5}
     $$

     |      Atributo       |    Valor     | Quantidade |           Regras           |     Erro      |
     | :-----------------: | :----------: | :--------: | :------------------------: | :-----------: |
     | História de crédito |     Boa      |     5      | SE "Boa" ENTÃO "Baixo" = 3 | $\frac{2}{5}$ |
     | História de crédito |     Ruim     |     5      | SE "Ruim" ENTÃO "Alto" = 3 | $\frac{3}{5}$ |
     | História de crédito | Desconhecida |     4      |                            |               |

   - História de crédito = Desconhecida

     ```
     (1º) SE "Desconhecida" ENTÃO "Alto" = 2
     (2º) SE "Desconhecida" ENTÃO "Moderado" = 1
     (3º) SE "Desconhecida" ENTÃO "Baixo" = 2
     ```

     No caso quanto temos 2 (ou + regras) com a mesma taxa de acerto, o algoritmo opta pela primeira regra na ordem, no caso a regra escolhida é `SE "Desconhecida" ENTÃO "Alto" = 2`. Logo o erro para erra essa regra é:

     $$
     \text{Erro} = \frac{\text{Frequência} - \text{Taxa de acerto}}{\text{Frequência}} = \frac{1}{4}
     $$

     |      Atributo       |    Valor     | Quantidade |               Regras               |     Erro      |
     | :-----------------: | :----------: | :--------: | :--------------------------------: | :-----------: |
     | História de crédito |     Boa      |     5      |     SE "Boa" ENTÃO "Baixo" = 3     | $\frac{2}{5}$ |
     | História de crédito |     Ruim     |     5      |     SE "Ruim" ENTÃO "Alto" = 3     | $\frac{3}{5}$ |
     | História de crédito | Desconhecida |     4      | SE "Desconhecida" ENTÃO "Alto" = 2 | $\frac{1}{4}$ |

4. A regra resultante é então utilizada para fazer previsões em novos dados. A previsão é feita atribuindo-se a classe que corresponde ao valor do atributo determinado pela regra.

É importante ressaltar que o algoritmo One-R é muito sensível à distribuição dos dados e pode produzir regras muito específicas para conjuntos de dados com ruído ou valores faltantes. Além disso, como é uma abordagem bastante simplificada, pode não ser adequado para problemas com alta complexidade e relações não lineares entre os atributos e a classe.

Apesar de suas limitações, o algoritmo One-R é útil para uma rápida análise exploratória de dados, para ter uma primeira intuição sobre a importância dos atributos na tarefa de classificação e como um baseline (ponto de referência) para comparação com outros algoritmos mais sofisticados. Em problemas onde interpretabilidade e simplicidade são cruciais, o One-R pode ser uma opção viável. No entanto, para problemas mais complexos, é recomendado o uso de algoritmos mais avançados, como árvores de decisão, random forest ou algoritmos de aprendizado profundo.
