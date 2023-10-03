# Atributo "actions"

O atributo `actions` da classe `Ticker` do yFinance é um DataFrame que contém **informações sobre os eventos corporativos** associadas ao ativo financeiro representado pelo ticker. Essas ações corporativas podem incluir eventos como pagamentos de dividendos, desdobramentos de ações (stock splits), agrupamentos de ações (reverse splits) e outras operações relevantes que afetam o preço e a estrutura do ativo ao longo do tempo.

O DataFrame `actions` contém as seguintes colunas principais:

- `Date`: A data em que o evento ocorreu.

- `Dividends`: Valor dos dividendos pagos aos acionistas por ação em cada data específica.

- `Stock Splits`: A proporção do desdobramento ($valor \geq 1$) ou agrupamento ($0 < valor \leq 1$) de ações em cada data específica. Geralmente, o valor listado nesta coluna é $0.0$ para indicar que não houve agrupamento ou desdobramento naquela data.

- `Capital Gain`: Ganhos de capital referem-se ao lucro obtido pela venda de um ativo financeiro. Funciona apenas para fundos mútuos e ETFs.

Essas informações podem ser úteis para identificar ativos bons pagadores de dividendos para montar uma carteira previdência. Além disso, você pode utilizar o DataFrame `actions`, juntamente com outras métricas, para realizar análises mais aprofundadas sobre o desempenho do ativo financeiro em relação a esses eventos.

## **Exemplo**

```python
import yfinance as yf

qqq = yf.Ticker("QQQ")
qqq.history(period="max", interval="1mo")

print(qqq.actions)
```

**Saída:**

| Date                      | Dividends | Stock Splits | Capital Gains |
| ------------------------- | --------- | ------------ | ------------- |
| 2000-03-01 00:00:00-05:00 | 0.000     | 2.0          | 0.0           |
| 2003-12-01 00:00:00-05:00 | 0.014     | 0.0          | 0.0           |
| 2004-12-01 00:00:00-05:00 | 0.379     | 0.0          | 0.0           |
| 2005-06-01 00:00:00-04:00 | 0.035     | 0.0          | 0.0           |
| 2005-12-01 00:00:00-05:00 | 0.101     | 0.0          | 0.0           |
| ...                       | ...       | ...          | ...           |
| 2022-06-01 00:00:00-04:00 | 0.527     | 0.0          | 0.0           |
| 2022-09-01 00:00:00-04:00 | 0.519     | 0.0          | 0.0           |
| 2022-12-01 00:00:00-05:00 | 0.655     | 0.0          | 0.0           |
| 2023-03-01 00:00:00-05:00 | 0.472     | 0.0          | 0.0           |
| 2023-06-01 00:00:00-04:00 | 0.504     | 0.0          | 0.0           |
