# Tipos de variáveis

As variáveis em análise de dados podem ser classificadas em diferentes tipos, dependendo da natureza dos valores que elas podem assumir. Os principais tipos de variáveis são: numéricas e categóricas.

1. **Variáveis Numéricas:**

   - **Variáveis Numéricas Contínuas:** São aquelas que podem assumir valores em uma escala contínua, ou seja, valores fracionados ou decimais. Elas representam medidas quantitativas e podem ter uma infinidade de valores possíveis dentro de um intervalo. Exemplos incluem altura, peso, temperatura, renda, entre outras.

   - **Variáveis Numéricas Discretas:** São aquelas que podem assumir apenas valores inteiros e enumeráveis. Elas também representam medidas quantitativas, mas possuem valores específicos e não podem ser fracionadas. Exemplos incluem número de filhos, quantidade de itens vendidos, idade (em anos), entre outras.

2. **Variáveis Categóricas:**

   - **Variáveis Categóricas Nominais:** São aquelas que representam categorias ou rótulos que não possuem uma ordem específica. Os valores possíveis são apenas rótulos distintos para diferenciar grupos ou classes. Exemplos incluem cores (vermelho, azul, verde), estados (São Paulo, Rio de Janeiro, Minas Gerais), categorias de produtos (eletrônicos, roupas, alimentos), etc.

   - **Variáveis Categóricas Ordinais:** São aquelas que representam categorias com uma ordem específica ou relação de ordenação. Os valores possíveis têm uma relação de ordem, mas não há um intervalo ou escala numérica definida entre eles. Exemplos incluem níveis de satisfação (baixo, médio, alto), graus de educação (ensino fundamental, ensino médio, ensino superior), classificações de filmes (bom, regular, ruim), etc.

A diferenciação entre esses tipos de variáveis é importante para escolher as técnicas de análise de dados adequadas. Por exemplo, ao analisar variáveis numéricas contínuas, pode ser relevante utilizar gráficos de dispersão ou regressão linear. Já para variáveis categóricas nominais, a análise pode envolver tabelas de frequência ou gráficos de barras. Entender a natureza dos dados é fundamental para obter insights e tomar decisões informadas a partir da análise de dados.

> ## **Exemplos**

### **Análise de base de dados do censo**

A base de dados abaixo foi extraída do site [UC Irvine](https://archive.ics.uci.edu/dataset/2/adult):

|       | age | workclass        | final-weight | education  | education-num | marital-status     | occupation        | relationship  | race  | sex    | capital-gain | capital-loos | hour-per-week | native-country | income |
| ----: | --: | :--------------- | -----------: | :--------- | ------------: | :----------------- | :---------------- | :------------ | :---- | :----- | -----------: | -----------: | ------------: | :------------- | :----- |
|     0 |  39 | State-gov        |        77516 | Bachelors  |            13 | Never-married      | Adm-clerical      | Not-in-family | White | Male   |         2174 |            0 |            40 | United-States  | <=50K  |
|     1 |  50 | Self-emp-not-inc |        83311 | Bachelors  |            13 | Married-civ-spouse | Exec-managerial   | Husband       | White | Male   |            0 |            0 |            13 | United-States  | <=50K  |
|     2 |  38 | Private          |       215646 | HS-grad    |             9 | Divorced           | Handlers-cleaners | Not-in-family | White | Male   |            0 |            0 |            40 | United-States  | <=50K  |
|     3 |  53 | Private          |       234721 | 11th       |             7 | Married-civ-spouse | Handlers-cleaners | Husband       | Black | Male   |            0 |            0 |            40 | United-States  | <=50K  |
|     4 |  28 | Private          |       338409 | Bachelors  |            13 | Married-civ-spouse | Prof-specialty    | Wife          | Black | Female |            0 |            0 |            40 | Cuba           | <=50K  |
|   ... | ... | ...              |          ... | ...        |           ... | ...                | ...               | ...           | ...   | ...    |          ... |          ... |           ... | ...            | ...    |
| 32556 |  27 | Private          |       257302 | Assoc-acdm |            12 | Married-civ-spouse | Tech-support      | Wife          | White | Female |            0 |            0 |            38 | United-States  | <=50K  |
| 32557 |  40 | Private          |       154374 | HS-grad    |             9 | Married-civ-spouse | Machine-op-inspct | Husband       | White | Male   |            0 |            0 |            40 | United-States  | >50K   |
| 32558 |  58 | Private          |       151910 | HS-grad    |             9 | Widowed            | Adm-clerical      | Unmarried     | White | Female |            0 |            0 |            40 | United-States  | <=50K  |
| 32559 |  22 | Private          |       201490 | HS-grad    |             9 | Never-married      | Adm-clerical      | Own-child     | White | Male   |            0 |            0 |            20 | United-States  | <=50K  |
| 32560 |  52 | Self-emp-inc     |       287927 | HS-grad    |             9 | Married-civ-spouse | Exec-managerial   | Wife          | White | Female |        15024 |            0 |            40 | United-States  | >50K   |

Com base nos valores fornecidos na tabela, podemos classificar o tipo de variável de cada coluna da seguinte forma:

|     Coluna     |  Tipo de Variável  |                                                                                                             Justificativa                                                                                                             |
| :------------: | :----------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|      age       | Numérica Contínua  |                                     A coluna 'age' representa a idade dos indivíduos, sendo uma variável numérica contínua, pois pode assumir uma infinidade de valores em um intervalo contínuo.                                     |
|   workclass    | Categórica Nominal |                 A coluna 'workclass' indica a classe de trabalho dos indivíduos, e apresenta categorias distintas como 'State-gov', 'Self-emp-not-inc', 'Private', etc. Portanto, é uma variável categórica nominal.                  |
|  final-weight  | Numérica Contínua  |            A coluna 'final-weight' contém valores numéricos, que representam o peso atribuído a cada indivíduo na amostra, sendo uma variável contínua, uma vez que pode assumir qualquer valor em um intervalo contínuo.             |
|   education    | Categórica Nominal |                          A coluna 'education' representa o nível de educação dos indivíduos e apresenta categorias como 'Bachelors', 'HS-grad', '11th', etc. Sendo assim, é uma variável categórica nominal.                          |
| education-num  | Numérica Discreta  | A coluna 'education-num' representa o número associado ao nível de educação dos indivíduos, como '13' para 'Bachelors', '9' para 'HS-grad', etc. Apesar de serem números inteiros, os valores são discretos e representam categorias. |
| marital-status | Categórica Nominal |                    A coluna 'marital-status' indica o estado civil dos indivíduos e apresenta categorias como 'Never-married', 'Married-civ-spouse', 'Divorced', etc. Por isso, é uma variável categórica nominal.                    |
|   occupation   | Categórica Nominal |         A coluna 'occupation' representa a ocupação dos indivíduos, apresentando diversas categorias distintas como 'Adm-clerical', 'Exec-managerial', 'Handlers-cleaners', etc. Portanto, é uma variável categórica nominal.         |
|  relationship  | Categórica Nominal |                  A coluna 'relationship' indica o relacionamento dos indivíduos com a família, apresentando categorias como 'Not-in-family', 'Husband', 'Wife', etc. Sendo assim, é uma variável categórica nominal.                  |
|      race      | Categórica Nominal |                                     A coluna 'race' representa a raça dos indivíduos, apresentando categorias distintas como 'White', 'Black', etc. Por isso, é uma variável categórica nominal.                                      |
|      sex       | Categórica Nominal |                                                 A coluna 'sex' indica o gênero dos indivíduos, com as categorias 'Male' e 'Female', sendo, portanto, uma variável categórica nominal.                                                 |
|  capital-gain  | Numérica Contínua  |                                  A coluna 'capital-gain' representa o ganho de capital dos indivíduos, que pode assumir valores contínuos em um intervalo. Assim, é uma variável numérica contínua.                                   |
|  capital-loos  | Numérica Contínua  |                                 A coluna 'capital-loos' representa a perda de capital dos indivíduos, apresentando valores contínuos em um intervalo. Sendo assim, é uma variável numérica contínua.                                  |
| hour-per-week  | Numérica Contínua  |                     A coluna 'hour-per-week' indica o número de horas trabalhadas por semana pelos indivíduos, que representa uma variável numérica contínua, pois pode assumir valores em um intervalo contínuo.                     |
| native-country | Categórica Nominal |                        A coluna 'native-country' representa o país de origem dos indivíduos, apresentando categorias distintas como 'United-States', 'Cuba', etc. Portanto, é uma variável categórica nominal.                        |
|     income     | Categórica Nominal |                                                A coluna 'income' indica a faixa de renda dos indivíduos, com categorias '<=50K' e '>50K', tornando-a uma variável categórica nominal.                                                 |
