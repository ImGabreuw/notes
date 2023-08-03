# Introdução à biblioteca "yFinance"

A biblioteca yFinance é uma poderosa ferramenta em Python que permite aos desenvolvedores e analistas financeiros acessar facilmente **dados de mercado e financeiros diretamente do Yahoo Finance**. Com o yFinance, é possível obter informações como preços históricos de ações, cotações em tempo real, informações financeiras de empresas, dados de índices e muito mais.

A biblioteca yFinance foi criada para ser simples de usar, tornando-a uma escolha popular para aqueles que desejam realizar análises de dados financeiros, criar modelos de previsão ou automatizar tarefas relacionadas ao mercado financeiro.

Primeiramente, você deve realizar a instalação do yFinance com o gerenciador de pacotes `pip`:

```console
$ pip install yfinance
```

Em seguida, você pode importá-lo em seus scripts Python:

```python
import yfinance as yf
```

A partir daqui, você pode usar as funcionalidades dessa biblioteca para acessar informações do mercado financeiro. Algumas das principais funcionalidades incluem:

1. Obter os dados históricos de preços de ações:

   ```python
   bbas3 = yf.Ticker("BBAS3.SA")
   history_df = bbas3.history(period="1y")
   print(history_df)
   ```

   **Saída:**

   | Date                      | Open      | High      | Low       | Close     | Volume   | Dividends | Stock Splits |
   | ------------------------- | --------- | --------- | --------- | --------- | -------- | --------- | ------------ |
   | 2022-08-02 00:00:00-03:00 | 33.039330 | 33.733433 | 32.863488 | 33.465046 | 9827600  | 0.0       | 0.0          |
   | 2022-08-03 00:00:00-03:00 | 33.529830 | 33.853747 | 33.205916 | 33.696415 | 7569400  | 0.0       | 0.0          |
   | 2022-08-04 00:00:00-03:00 | 33.955541 | 34.353494 | 33.779702 | 34.334984 | 11649100 | 0.0       | 0.0          |
   | 2022-08-05 00:00:00-03:00 | 34.334983 | 35.010580 | 34.196164 | 34.973560 | 10877000 | 0.0       | 0.0          |
   | 2022-08-08 00:00:00-03:00 | 35.121637 | 36.185927 | 34.945795 | 36.074871 | 19478800 | 0.0       | 0.0          |
   | ...                       |           |           |           |           |          |           |              |
   | 2023-07-27 00:00:00-03:00 | 47.720001 | 47.759998 | 46.650002 | 46.740002 | 11750700 | 0.0       | 0.0          |
   | 2023-07-28 00:00:00-03:00 | 47.130001 | 47.570000 | 46.860001 | 47.279999 | 7276100  | 0.0       | 0.0          |
   | 2023-07-31 00:00:00-03:00 | 47.599998 | 48.320000 | 47.480000 | 48.189999 | 10389900 | 0.0       | 0.0          |
   | 2023-08-01 00:00:00-03:00 | 47.919998 | 48.029999 | 46.939999 | 47.360001 | 12680100 | 0.0       | 0.0          |
   | 2023-08-02 00:00:00-03:00 | 47.259998 | 47.759998 | 47.099998 | 47.570000 | 5569600  | 0.0       | 0.0          |

2. Obter cotações em tempo real:

   ```python
   bbas3 = yf.Ticker("BBAS3.SA")
   current_price = bbas3.info["currentPrice"]
   print(current_price) # Saída: 47.57
   ```

3. Obter informações financeiras:

   ```python
   bbas3 = yf.Ticker("BBAS3.SA")
   financials_df = bbas3.financials
   print(financials_df)
   ```

   **Saída:**

   |                                                        | 2022-12-31        | 2021-12-31         | 2020-12-31     | 2019-12-31     |
   | ------------------------------------------------------ | ----------------- | ------------------ | -------------- | -------------- |
   | Tax Effect Of Unusual Items                            | -10182.354953     | -150575245.208646  | 0.0            | 896387560.0    |
   | Tax Rate For Calcs                                     | 0.199654          | 0.156975           | 0.100966       | 0.34           |
   | Total Unusual Items                                    | -51000.0          | -959231000.0       | 0.0            | 2636434000.0   |
   | Total Unusual Items Excluding Goodwill                 | -51000.0          | -959231000.0       | 0.0            | 2636434000.0   |
   | Net Income From Continuing Operation Net Minorities    | 34980015000.0     | 22246235000.0      | 14265956000.0  | 20499810000.0  |
   | Reconciled Depreciation                                | 2833098000.0      | 2828694000.0       | 3155206000.0   | 3039597000.0   |
   | Net Interest Income                                    | 82269433000.0     | 61059752000.0      | 47067310000.0  | 53124090000.0  |
   | Interest Expense                                       | 158439298000.0    | 70609855000.0      | 71862593000.0  | 71652572000.0  |
   | Interest Income                                        | 240708731000.0    | 131669607000.0     | 118929903000.0 | 124776662000.0 |
   | Normalized Income                                      | 34980055817.64505 | 23054890754.791355 | 14265956000.0  | 18759763560.0  |
   | Net Income From Continuing And Discontinued Operations | 34980015000.0     | 22246235000.0      | 14265956000.0  | 20499810000.0  |
   | Diluted Average Shares                                 | 2853771411.0      | 2853577258.0       | 2852522381.0   | 2799325330.0   |
   | Basic Average Shares                                   | 2853771411.0      | 2853577258.0       | 2852522381.0   | 2799325330.0   |
   | Diluted EPS                                            | 10.79             | 6.86               | 4.39           | 6.39           |
   | Basic EPS                                              | 10.79             | 6.86               | 4.39           | 6.39           |
   | Diluted NI Availto Com Stockholders                    | 30796870000.0     | 19574419000.0      | 12512155000.0  | 17899349000.0  |
   | Net Income Common Stockholders                         | 30796870000.0     | 19574419000.0      | 12512155000.0  | 17899349000.0  |
   | Other under Preferred Stock Dividend                   | 214617000.0       | 135983000.0        | 185230000.0    | 262718000.0    |
   | Net Income                                             | 31011487000.0     | 19710402000.0      | 12697385000.0  | 18162067000.0  |
   | Minority Interests                                     | -2631801000.0     | -1605513000.0      | 1576522000.0   | -2481867000.0  |
   | Net Income Including Noncontrolling Interests          | 33643288000.0     | 21315915000.0      | 11368177000.0  | 20643934000.0  |
   | Net Income Extraordinary                               | -3968528000.0     | -2535833000.0      | -1568571000.0  | -2337743000.0  |
   | Net Income Continuous Operations                       | 37611816000.0     | 23851748000.0      | 12936748000.0  | 22981677000.0  |
   | Tax Provision                                          | 9382630000.0      | 4441300000.0       | -6860500000.0  | -6860500000.0  |
   | Pretax Income                                          | 46994446000.0     | 28293048000.0      | 14389613000.0  | 16121177000.0  |
   | Other Non Operating Income Expenses                    | 719202000.0       | 246057000.0        | 154901000.0    | 13952000.0     |
