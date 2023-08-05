# Função "get_shares_full"

O método `get_shares_full` da classe Ticker do yFinance é responsável por retornar informações sobre o **número de ações em circulação em diferentes datas** para a ação específica.

Essas informações são úteis para acompanhar a evolução do número de ações disponíveis no mercado ao longo do tempo. As variações no número de ações em circulação podem ocorrer devido a eventos como emissões de novas ações, recompras de ações pela empresa, fusões e aquisições, entre outros.

O método `get_shares_full` permite que os investidores e analistas rastreiem as mudanças no número de ações em circulação, o que pode ser relevante para entender o comportamento do mercado de ações e fazer análises financeiras mais precisas.

## **Sintaxe**

```python
def get_shares_full(
    start: Any | None = None,
    end: Any | None = None,
    proxy: Any | None = None
) -> (Series | None)
```

**Parâmetros:**

- `start`: É a data de início do período para o qual você deseja obter as informações sobre o número de ações. Pode ser um valor de data válido ou `None`. Se `None`, a busca começará desde a primeira data disponível nos dados do Ticker.

- `end`: É a data final do período para o qual você deseja obter as informações sobre o número de ações. Pode ser um valor de data válido ou `None`. Se `None`, a busca irá até a última data disponível nos dados do Ticker.

- `proxy`: É um parâmetro opcional que permite especificar um servidor proxy para fazer as solicitações HTTP. Pode ser `None` se não for necessário utilizar um proxy.

**Retorno:**

- Um objeto `Series` que contém as informações sobre o número de ações em diferentes datas, ou `None` se não houver informações disponíveis para o período especificado.

## **Exemplo**

```python
import yfinance as yf

bbas3 = yf.Ticker("BBAS3.SA")
shares = bbas3.get_shares_full(start="2022-01-01", end="2023-01-01")

print(shares)
```

**Saída:**

| Date                      | Shares       |
|---------------------------|--------------|
| 2022-01-01 00:00:00-03:00 | 2853400064   |
| 2022-01-10 00:00:00-03:00 | 2854400000   |
| 2022-01-11 00:00:00-03:00 | 2853400064   |
| ...                       | ...          |
| 2022-12-28 00:00:00-03:00 | 2959480064   |
| 2022-12-29 00:00:00-03:00 | 2959480064   |
| 2022-12-29 00:00:00-03:00 | 2853639936   |
| 2022-12-30 00:00:00-03:00 | 2859389952   |
| 2022-12-31 00:00:00-03:00 | 2853639936   |
