A função `auto_arima` do módulo `pmdarima.arima` (também conhecido como PyData's ARIMA) é uma ferramenta poderosa para ajustar automaticamente modelos ARIMA (Média Móvel Integrada de AutoRegressão) a [[Séries temporal|séries temporais]]. O principal objetivo é determinar automaticamente a ordem (p, d, q) do modelo ARIMA que melhor se ajusta aos dados, tornando o processo de ajuste de modelos ARIMA mais eficiente e acessível.

### Principais parâmetros

- `exogenous`: Uma matriz de variáveis exógenas (variáveis independentes) que podem ser usadas para melhorar o desempenho do modelo.

- `seasonal`: Um booleano que indica se o processo de busca deve considerar componentes sazonais nos modelos ARIMA.

- `stepwise`: Um booleano que controla se a busca deve ser conduzida de maneira eficiente, avaliando apenas modelos candidatos próximos a partir do modelo padrão.

- `scoring`: Uma métrica usada para avaliar o desempenho dos modelos candidatos. Pode ser "mse" (Erro Quadrático Médio), "mae" (Erro Absoluto Médio), "aic" (Critério de Informação de Akaike) ou "bic" (Critério de Informação Bayesiano).

- `order`: Permite que você especifique uma ordem (p, d, q) fixa em vez de realizar uma pesquisa automática.

- `seasonal_order`: Permite que você especifique uma ordem sazonal fixa em vez de realizar uma pesquisa automática.

- `n_jobs`: O número de trabalhos paralelos a serem usados para ajustar os modelos.

## Exemplo

```python
from pmdarima.arima import auto_arima
import numpy as np

# Exemplo de uma série temporal (substitua com seus próprios dados)
y = np.array([40, 42, 45, 48, 50, 52, 55, 58, 60, 62, 65, 68, 70, 72])

# Usando a função auto_arima para encontrar o melhor modelo ARIMA
model = auto_arima(y, seasonal=True, m=12, stepwise=True, trace=True)

# Sumário do modelo encontrado
print(model.summary())
```

**Explicação do exemplo:**

1. Importamos a função `auto_arima` do módulo `pmdarima.arima`.

2. Definimos uma série temporal `y` (substitua isso com seus próprios dados).

3. Usamos `auto_arima` para ajustar automaticamente um modelo ARIMA à série temporal. Neste exemplo, estamos considerando um modelo sazonal (`seasonal=True`) com uma temporada de 12 períodos (`m=12`).

4. O parâmetro `stepwise=True` instrui a função a realizar uma busca eficiente pela ordem do modelo ARIMA.

5. Finalmente, imprimimos o sumário do modelo encontrado, que inclui informações detalhadas sobre os parâmetros do modelo.

## Benefícios do `auto_arima`

- Facilita a modelagem de séries temporais, especialmente para pessoas que não estão familiarizadas com a determinação da ordem ARIMA manualmente.

- Realiza uma busca automática em uma ampla gama de modelos, economizando tempo na seleção do melhor modelo.

- Pode ser personalizado com vários parâmetros para se adequar aos requisitos específicos.
