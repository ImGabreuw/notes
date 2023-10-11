# Função "corr"

A função `corr()` do Pandas é usada para calcular a correlação entre colunas (variáveis) em um DataFrame. A correlação é uma medida estatística que quantifica a relação entre duas variáveis, indicando se elas tendem a se mover juntas (correlação positiva), se movem em direções opostas (correlação negativa) ou se não há relação aparente (correlação próxima a zero).

## Sintaxe

```python
DataFrame.corr(method='pearson', min_periods=1)
```

### Parâmetros

- `method` (opcional): O método de cálculo de correlação a ser usado. Os métodos comuns são:

- `'pearson'` (padrão): Calcula a correlação de Pearson, que mede a correlação linear entre variáveis contínuas.
  
- `'kendall'`: Calcula a correlação de Kendall, que é uma medida de correlação não paramétrica adequada para dados classificados ou ordinais.

- `'spearman'`: Calcula a correlação de Spearman, outra medida não paramétrica que é adequada para dados classificados ou ordinais.

- `min_periods` (opcional): O número mínimo de observações não nulas necessárias para calcular uma correlação. O padrão é 1, o que significa que uma correlação será calculada mesmo se houver apenas uma observação não nula.

### Retorno

- Um DataFrame de correlação, onde os índices e as colunas são os nomes das variáveis do DataFrame original, e os valores são os coeficientes de correlação entre essas variáveis. A diagonal principal do DataFrame conterá 1s, pois uma variável sempre tem uma correlação perfeita com ela mesma.

## Exemplo

```python
import pandas as pd

# Criando um DataFrame de exemplo
data = {
    'A': [1, 2, 3, 4, 5],
    'B': [2, 3, 4, 5, 6],
    'C': [5, 5, 5, 5, 5]
}

df = pd.DataFrame(data)

# Calculando a correlação de Pearson entre as colunas
correlation_matrix = df.corr()

print(correlation_matrix)
```

Neste exemplo, criamos um DataFrame `df` com três colunas (A, B e C) e calculamos a matriz de correlação usando o método padrão de correlação de Pearson. A matriz resultante, `correlation_matrix`, será:

```
     A    B    C
A  1.0  1.0  0.0
B  1.0  1.0  0.0
C  0.0  0.0  1.0
```

Observe que as variáveis A e B têm uma correlação perfeita de 1.0 entre si, pois são linearmente dependentes, enquanto a variável C não está correlacionada com A ou B, como indicado por uma correlação próxima a zero.

A função `corr()` é amplamente usada na análise de dados para explorar relações entre variáveis e entender como elas estão relacionadas umas com as outras. É útil para identificar dependências ou tendências em um conjunto de dados.
