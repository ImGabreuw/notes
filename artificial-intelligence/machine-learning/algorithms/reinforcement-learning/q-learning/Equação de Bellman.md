## Equação de Bellman para o Valor de Estado (V)

A equação de Bellman para V é uma expressão que descreve o valor esperado de um estado em relação ao valor esperado do próximo estado e à recompensa imediata. É definida da seguinte forma:

$$
V(s) = \sum_{a} \pi(a|s) \sum_{s', r} p(s', r|s, a) [r + \gamma V(s')]
$$

- $V(s)$: O valor esperado do estado $s$.
- $\pi(a|s)$: A política que determina a probabilidade de tomar ação $a$ no estado $s$.
- $p(s', r|s, a)$: A probabilidade de transição para o próximo estado $s'$ e receber a recompensa $r$ ao tomar a ação $a$ no estado $s$.
- $\gamma$: O fator de desconto que controla o peso dado a recompensas futuras.

## Equação de Bellman para o Valor de Ação (Q)

A equação de Bellman para Q é semelhante, mas se aplica diretamente às ações:

$$
Q(s, a) = \sum_{s', r} p(s', r|s, a) [r + \gamma \max_{a'} Q(s', a')]
$$

- $Q(s, a)$: O valor esperado do estado-ação $(s, a)$.
- $p(s', r|s, a)$: A probabilidade de transição para o próximo estado $s'$ e receber a recompensa $r$ ao tomar a ação $a$ no estado $s$.
- $\gamma$: O fator de desconto que controla o peso dado a recompensas futuras.
- $\max_{a'} Q(s', a')$: O valor esperado máximo do próximo estado $s'$, considerando todas as possíveis ações $a'$.

Essas equações de Bellman são fundamentais para a modelagem e solução de problemas de aprendizado por reforço, permitindo que os agentes avaliem e atualizem suas políticas para maximizar a recompensa cumulativa ao longo do tempo. Elas formam a base de muitos algoritmos de aprendizado por reforço, incluindo o Q-Learning e a Iteração de Valor.