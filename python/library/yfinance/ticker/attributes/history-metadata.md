# Atributo "history_metadata"

O atributo `history_metadata` da classe `Ticker` no yFinance é um dicionário que contém **informações adicionais sobre o histórico de preços baixados** para um determinado ativo financeiro por meio da função `history()`.

Ao chamar a função `history()` para obter os dados históricos de um ticker específico, o yFinance baixa esses dados do Yahoo Finance e os armazena em um objeto DataFrame (estrutura de dados tabular do Pandas). Além do DataFrame com os dados de preços, também é retornado o atributo `history_metadata`, que é um dicionário contendo informações como a data e hora da solicitação, o intervalo de tempo dos dados baixados, informações sobre dividendos e divisões de ações, entre outros.

Essas informações fornecem detalhes sobre a moeda da ação, símbolo do ticker, tipo de instrumento, data da primeira negociação, preço de mercado regular, fuso horário e outros detalhes relevantes. Vamos analisar cada uma das chaves desse dicionário:

- `currency`: Moeda em que o ativo é negociado (por exemplo, 'BRL' para Real Brasileiro).

- `symbol`: Símbolo do ticker do ativo (por exemplo, 'MXRF11.SA' para o fundo imobiliário MXRF11 listado na B3).

- `exchangeName`: Nome da bolsa onde o ativo é negociado (por exemplo, 'SAO' para a B3).

- `instrumentType`: Tipo de instrumento (por exemplo, 'EQUITY' para ações).

- `firstTradeDate`: Data do primeiro negócio realizado para esse ativo, representada como um timestamp UNIX.

- `regularMarketTime`: Horário do último mercado regular (fechamento) em formato de timestamp UNIX.

- `gmtoffset`: Deslocamento em segundos em relação ao GMT (Greenwich Mean Time).

- `timezone`: Fuso horário em que o ativo é negociado (por exemplo, 'BRT' para Horário de Brasília).

- `exchangeTimezoneName`: Nome do fuso horário da bolsa (por exemplo, 'America/Sao_Paulo' para a B3).

- `regularMarketPrice`: Preço de mercado regular atual do ativo.

- `chartPreviousClose`: Preço de fechamento do último dia de negociação no gráfico.

- `previousClose`: O preço de fechamento do ativo no último dia de negociação.

- `scale`: A escala do preço do ativo.

- `priceHint`: Valor arredondado para a exibição de preços.

- `currentTradingPeriod`: Período de negociação atual, pré-mercado, mercado regular e pós-mercado, com informações sobre os horários em formato de timestamp UNIX.

- `dataGranularity`: Granularidade dos dados do histórico (por exemplo, "1d" para dados diários, "1h" para dados horários).

- `range`: O intervalo de tempo dos dados históricos baixados (por exemplo, '6mo' para dados dos últimos 6 meses).

- `validRanges`: Lista de intervalos de tempo válidos para os quais os dados podem ser solicitados.

Lembrando que as chaves disponíveis no dicionário `history_metadata` podem variar dependendo das informações disponíveis para o ticker específico e dos parâmetros utilizados na chamada da função `history()`.

## **Exemplo**

```python
mxrf11 = yf.Ticker("MXRF11.SA")
history_df = mxrf11.history(period="6mo", interval="1d")

print(mxrf11.history_metadata) # Deve chamar o método "history" antes
```

**Saída:**

```
{'currency': 'BRL',
 'symbol': 'MXRF11.SA',
 'exchangeName': 'SAO',
 'instrumentType': 'EQUITY',
 'firstTradeDate': 1407330000,
 'regularMarketTime': 1691179500,
 'gmtoffset': -10800,
 'timezone': 'BRT',
 'exchangeTimezoneName': 'America/Sao_Paulo',
 'regularMarketPrice': 10.7,
 'chartPreviousClose': 10.07,
 'priceHint': 2,
 'currentTradingPeriod': {'pre': {'timezone': 'BRT',
   'end': 1691154000,
   'start': 1691153100,
   'gmtoffset': -10800},
  'regular': {'timezone': 'BRT',
   'end': 1691179200,
   'start': 1691154000,
   'gmtoffset': -10800},
  'post': {'timezone': 'BRT',
   'end': 1691182800,
   'start': 1691179200,
   'gmtoffset': -10800}},
 'dataGranularity': '1mo',
 'range': '6mo',
 'validRanges': ['1d',
  '5d',
  '1mo',
  '3mo',
  '6mo',
  '1y',
  '2y',
  '5y',
  '10y',
  'ytd',
  'max']}
```