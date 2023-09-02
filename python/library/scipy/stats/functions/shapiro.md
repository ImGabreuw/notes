# Função "shapiro"

A função `shapiro` da biblioteca `scipy.stats` é uma implementação do teste de normalidade de Shapiro-Wilk. Esse teste é usado para verificar se uma amostra de dados segue uma distribuição normal. Ele é amplamente utilizado para avaliar a normalidade dos dados antes de aplicar métodos estatísticos que pressupõem uma distribuição normal, como testes de hipóteses paramétricos.

A função `shapiro` aceita umo único argumento: a amostra de dados que você deseja testar quanto à normalidade. Ela retorna dois valores:

1. **Estatística de Teste (W)**: Este é o valor calculado da estatística de teste de Shapiro-Wilk. Quanto mais próximo de 1, mais os dados se assemelham a uma distribuição normal.

2. **Valor p**: O valor p é a probabilidade de observar a estatística de teste (ou uma ainda mais extrema) sob a suposição de que os dados seguem uma distribuição normal. Um valor p baixo sugere que os dados não seguem uma distribuição normal, enquanto um valor p alto sugere que os dados podem seguir uma distribuição normal.

O uso típico da função `shapiro` envolve a avaliação do valor p resultante. Se o valor p for menor ou igual ao nível de significância (geralmente 0,05), a hipótese nula de normalidade é rejeitada, indicando que os dados não seguem uma distribuição normal. Caso contrário, se o valor p for maior que o nível de significância, não há evidências suficientes para rejeitar a hipótese nula, sugerindo que os dados podem ser aproximados por uma distribuição normal.

Aqui está um exemplo simples de como usar a função `shapiro` do `scipy.stats`:

```python
from scipy.stats import shapiro

# Definir o nível de significância
alpha = 0.05

# Amostra de dados
data = [1.2, 2.5, 3.8, 4.1, 5.6, 6.9, 7.3, 8.8, 9.2]

# Aplicar o teste de normalidade
statistic, p_value = shapiro(data)

# Avaliar os resultados
if p_value <= alpha:
    print("Os dados não seguem uma distribuição normal.")
else:
    print("Os dados podem seguir uma distribuição normal.")
```

É importante notar que o teste de normalidade deve ser usado com cautela e em conjunto com outras análises, especialmente quando se trabalha com amostras pequenas. Além disso, o contexto específico dos dados e do problema em questão também deve ser considerado ao interpretar os resultados do teste.