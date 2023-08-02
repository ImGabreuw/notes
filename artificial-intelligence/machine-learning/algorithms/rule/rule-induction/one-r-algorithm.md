# Algoritmo OneR

O algoritmo One-R (também conhecido como OreR - One-Rule) é uma abordagem simples para a geração de regras de classificação, sendo considerado um dos métodos mais básicos e interpretáveis nessa área. Ele é especialmente adequado para problemas com poucos atributos, onde se busca uma solução rápida e fácil de interpretar.

A ideia central do algoritmo One-R é selecionar uma única regra que seja a mais informativa para fazer previsões. Essa regra é baseada na escolha de um único atributo que melhor discrimine as classes de destino (rótulos) do conjunto de dados. Essa escolha é realizada através do cálculo de métricas como o ganho de informação e a entropia, que indicam a relevância de cada atributo para a tarefa de classificação.

### **Funcionamento**

Considerando o conjunto de dados abaixo, o algoritmo segue os seguintes passos:

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

1.  Para cada atributo do conjunto de dados, analisa-se a relação entre esse atributo e a classe de destino.

2.  Calcula-se a frequência de cada valor do atributo para cada classe. Por exemplo, se tivermos o atributo "História de crédito" com os valores "Boa", "Ruim" e "Desconhecida", contamos quantos exemplos de cada classe existem para cada valor desse atributo.

    |      Atributo       |    Valor     | Quantidade | Regras | Erro |
    | :-----------------: | :----------: | :--------: | :----: | :--: |
    | História de crédito |     Boa      |     5      |        |      |
    | História de crédito |     Ruim     |     5      |        |      |
    | História de crédito | Desconhecida |     4      |        |      |

3.  Com base nessas frequências, seleciona-se o valor do atributo que apresenta a maior taxa de acerto para a classe de destino.

    - História de crédito = Boa

      ```
      SE "Boa" ENTÃO "Alto" = 1
      SE "Boa" ENTÃO "Moderado" = 1
      SE "Boa" ENTÃO "Baixo" = 3
      ```

      A regra com maior taxa de acerto é `SE "Boa" ENTÃO "Baixo" = 3`. Logo, o erro para essa regra é:

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

           A regra com maior taxa de acerto é `SE "Ruim" ENTÃO "Alto" = 3`. Logo, o erro para essa regra é:

           $$
           \text{Erro} = \frac{\text{Frequência} - \text{Taxa de acerto}}{\text{Frequência}} = \frac{3}{5}
           $$

           |      Atributo       | Valor | Quantidade |           Regras           |    Erro    |
           | :-----------------: | :---: | :--------: | :------------------------: | :--------: |
           | História de crédito |  Boa  |     5      | SE "Boa" ENTÃO "Baixo" = 3 | $\frac{2}{5}$ |

      | História de crédito | Ruim | 5 | SE "Ruim" ENTÃO "Alto" = 3 | $\frac{3}{5}$ |
      | História de crédito | Desconhecida | 4 | | |

    - História de crédito = Desconhecida

      ```
      (1º) SE "Desconhecida" ENTÃO "Alto" = 2
      (2º) SE "Desconhecida" ENTÃO "Moderado" = 1
      (3º) SE "Desconhecida" ENTÃO "Baixo" = 2
      ```

      Quando há mais de uma regra com a mesma taxa de acerto, o algoritmo opta pela primeira regra na ordem. Nesse caso, a regra escolhida é `SE "Desconhecida" ENTÃO "Alto" = 2`. Logo, o erro para essa regra é:

      $$
      \text{Erro} = \frac{\text{Frequência} - \text{Taxa de acerto}}{\text{Frequência}} = \frac{1}{4}
      $$

      |      Atributo       |    Valor     | Quantidade |               Regras               |     Erro      |
      | :-----------------: | :----------: | :--------: | :--------------------------------: | :-----------: |
      | História de crédito |     Boa      |     5      |     SE "Boa" ENTÃO "Baixo" = 3     | $\frac{2}{5}$ |
      | História de crédito |     Ruim     |     5      |     SE "Ruim" ENTÃO "Alto" = 3     | $\frac{3}{5}$ |
      | História de crédito | Desconhecida |     4      | SE "Desconhecida" ENTÃO "Alto" = 2 | $\frac{1}{4}$ |

4.  A regra resultante é utilizada para fazer previsões em novos dados, atribuindo-se a classe que corresponde ao valor do atributo determinado pela regra.

### **Vantagens**

- Simplicidade e facilidade de interpretação das regras geradas.
- Rapidez na geração do modelo, sendo útil para uma análise exploratória inicial de dados.
- Pode servir como um ponto de referência (baseline) para comparação com algoritmos mais sofisticados.

### **Limitações**

- Sensibilidade à distribuição dos dados, podendo gerar regras muito específicas e não generalizáveis.
- Dificuldade em lidar com problemas complexos ou com alta dimensionalidade.
- Pode não ser adequado para conjuntos de dados com atributos contínuos ou valores faltantes.

### **Casos de uso**

O algoritmo One-R é recomendado quando se deseja uma análise rápida e simples dos dados para entender a importância dos atributos na tarefa de classificação. Ele é especialmente útil em problemas com poucos atributos categóricos e onde a interpretabilidade das regras é crucial. No entanto, para problemas mais complexos ou com dados de natureza contínua, é aconselhável considerar o uso de algoritmos mais avançados, como árvores de decisão, random forest ou algoritmos de aprendizado profundo. O One-R pode ser um ponto de partida útil para uma exploração inicial, mas em situações mais desafiadoras, modelos mais robustos e adaptáveis são mais indicados.
