**Markov Decision Process (MDP)** é um modelo matemático usado na aprendizagem por reforço para representar sistemas de tomada de decisão sequencial. Consiste em um conjunto de estados possíveis, um conjunto de ações disponíveis, uma função de transição de estado e uma função de recompensa. 

A característica fundamental de um MDP é a propriedade de Markov, que significa que a transição de estado depende apenas do estado atual e da ação tomada, independentemente de como o sistema chegou a esse estado.

- **Ambientes Determinísticos:** Em um ambiente determinístico, as ações do agente sempre levam a resultados previsíveis. Isso significa que, dadas as mesmas condições iniciais e ações, o agente sempre alcançará o mesmo estado subsequente. Não há incerteza nas transições de estado.

- **Ambientes Não Determinísticos:** Em ambientes não determinísticos, as ações do agente podem levar a resultados diferentes, mesmo se as condições iniciais e as ações forem idênticas. Isso introduz incerteza nas transições de estado, tornando a tarefa de aprendizado mais desafiadora, pois o agente deve lidar com a aleatoriedade.

## Conceito de *Exploration* e *Exploitation*

O dilema da exploração e exploração é central na aprendizagem por reforço. Envolve a decisão de quando um agente deve explorar novas ações ou explorar ações conhecidas que parecem ser as melhores. Essa decisão é crítica para o aprendizado eficaz.

- **Exploração:** Refere-se à escolha de ações que o agente ainda não experimentou ou que têm resultados desconhecidos. A exploração é necessária para descobrir informações sobre o ambiente e encontrar ações que possam levar a recompensas mais altas no futuro. No entanto, a exploração envolve riscos, pois as ações desconhecidas podem levar a recompensas baixas.

- **Exploitação:** Refere-se à escolha de ações que o agente acredita serem as melhores com base no conhecimento atual. A exploração é preferida quando o agente deseja maximizar as recompensas imediatas, pois escolher ações conhecidas pode ser menos arriscado.

O desafio é encontrar um equilíbrio entre a exploração e a exploração. Se o agente explorar demais, pode não aproveitar ações conhecidas que levam a recompensas altas. Se o agente explorar muito pouco, pode não descobrir ações melhores e ficar preso em políticas subótimas.
