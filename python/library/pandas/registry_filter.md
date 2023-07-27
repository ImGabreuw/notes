# Filtro de registros

O filtro de registros no pandas é uma operação que permite selecionar linhas específicas de um DataFrame com base em determinadas condições. No exemplo que você forneceu, a expressão `base_credit[base_credit["income"] >= 69995.685578]` é um filtro que seleciona as linhas do DataFrame `base_credit` onde o valor da coluna "income" é maior ou igual a 69995.685578.

Vamos entender passo a passo o que está acontecendo:

1. `base_credit["income"]`: Esta parte da expressão acessa a coluna "income" do DataFrame `base_credit`, retornando uma Series que contém todos os valores presentes nessa coluna.

2. `base_credit["income"] >= 69995.685578`: Nesta parte, a comparação é realizada elemento a elemento entre a Series "income" e o valor 69995.685578. O resultado é uma Series booleana com True nas posições em que o valor da coluna "income" é maior ou igual ao valor fornecido e False nas posições em que não é.

3. `base_credit[...]`: Finalmente, essa parte usa a Series booleana resultante da comparação como um filtro para o DataFrame `base_credit`. Ela seleciona apenas as linhas em que o valor correspondente na Series booleana é True, ou seja, as linhas onde a condição `base_credit["income"] >= 69995.685578` é satisfeita.

Portanto, a expressão `base_credit[base_credit["income"] >= 69995.685578]` retorna um novo DataFrame que contém apenas as linhas onde o valor da coluna "income" é maior ou igual a 69995.685578. Isso permite filtrar os registros do DataFrame com base na condição especificada.
