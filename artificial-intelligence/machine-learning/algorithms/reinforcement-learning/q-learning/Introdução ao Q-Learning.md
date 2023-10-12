**Q-learning** é um dos algoritmos mais populares na aprendizagem por reforço para resolver tarefas de aprendizado por reforço baseadas em [[Markov Decision Process|MDPs]]. O objetivo do Q-learning é aprender uma função chamada função Q, que atribui um valor a cada par estado-ação. O valor Q indica a recompensa esperada de executar uma ação em um estado e, em seguida, seguir uma política específica.

O Q-learning é uma técnica de aprendizado off-policy, o que significa que ele aprende uma política de ação ótima, mesmo que as ações tenham sido tomadas seguindo uma política diferente (geralmente uma política de exploração). Ele usa a [[Equação de Bellman|Equação de Bellman]] para atualizar iterativamente os valores Q com base nas recompensas reais observadas. À medida que o agente interage com o ambiente, ele ajusta suas estimativas de valor Q e, eventualmente, converge para a política ótima.

> [!note]
> Para entender melhor como funciona o processo de aprendizado do algoritmo Q-Learning dê uma lida na seguinte anotação: [[Funcionamento do Q-Learning]]

O Q-learning é usado em muitas aplicações, como jogos, robótica e automação industrial, onde um agente deve aprender a tomar decisões sequenciais para maximizar as recompensas ao longo do tempo. É uma ferramenta poderosa para resolver problemas de aprendizado por reforço baseados em MDPs.