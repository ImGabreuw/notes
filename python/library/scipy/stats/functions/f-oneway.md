# Função "f_oneway"

A função `f_oneway` do módulo `scipy.stats` é utilizada para realizar a análise de variância (ANOVA) de uma ou mais amostras independentes. A ANOVA é um teste estatístico que compara as médias de três ou mais grupos para determinar se há diferenças significativas entre eles. A função calcula a estatística F e o valor p associado para testar a hipótese nula de que as médias dos grupos são iguais.

**Parâmetros**:

- `sample1, sample2, ...` (arrays-like): São as amostras dos grupos que você deseja comparar. Cada amostra é um array ou sequência de valores numéricos.

**Retorno**:

- `F` (float): A estatística F calculada para o teste.
-
- `p-value` (float): O valor p associado à estatística F.

**Exemplo**:

```python
from scipy.stats import f_oneway

# Amostras dos grupos
group1 = [25, 30, 32, 28, 35]
group2 = [40, 38, 42, 45, 36]
group3 = [20, 22, 25, 28, 26]

# Realiza o teste ANOVA
F, p_value = f_oneway(group1, group2, group3)

# Verifica os resultados
if p_value < 0.05:
    print("Há diferença significativa entre as médias dos grupos.")
else:
    print("Não há diferença significativa entre as médias dos grupos.")
```

**Interpretação dos resultados**:

- Se o valor p (`p-value`) for menor ou igual ao nível de significância (geralmente definido em 0.05), então há evidência estatística para rejeitar a hipótese nula de que as médias dos grupos são iguais. Isso sugere que pelo menos um par de grupos possui médias estatisticamente diferentes.
- Se o valor p for maior que o nível de significância, não há evidência para rejeitar a hipótese nula, indicando que as médias dos grupos são estatisticamente iguais.
