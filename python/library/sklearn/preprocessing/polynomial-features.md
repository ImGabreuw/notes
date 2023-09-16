# Classe "PolynomialFeatures"

A classe `PolynomialFeatures` faz parte do módulo `sklearn.preprocessing` do Scikit-Learn e é usada para gerar características polinomiais a partir de um conjunto de características originais. Isso permite que você crie modelos de regressão polinomial ou amplie a capacidade de modelos lineares, adicionando termos polinomiais aos recursos existentes. Em essência, ela transforma as características originais em características de grau superior, criando todas as combinações possíveis de características até um determinado grau.

## Sintaxe

```python
from sklearn.preprocessing import PolynomialFeatures

poly = PolynomialFeatures(degree=2, include_bias=True, interaction_only=False)
```

### Principais atributos

- `degree`: O grau do polinômio a ser gerado. É um hiperparâmetro que determina o grau máximo dos termos polinomiais criados.
- `include_bias`: Um booleano que decide se deve incluir ou não um termo de polarização (bias) na transformação. Se `True`, um termo de polarização constante (1) será adicionado.
- `interaction_only`: Um booleano que controla se devem ser criadas apenas interações entre características, excluindo termos polinomiais simples. Se `True`, apenas interações serão geradas.

### Principais métodos

- `fit(X)`: Ajusta o transformador aos dados de entrada `X`.
- `transform(X)`: Transforma os dados de entrada `X` em características polinomiais.
- `fit_transform(X)`: Combina os passos de ajuste e transformação em um único passo.

## Exemplo

```python
from sklearn.preprocessing import PolynomialFeatures
import numpy as np

# Dados de entrada
X = np.array([[18],
       [23],
       [28],
       [33],
       [38],
       [43],
       [48],
       [53],
       [58],
       [63]])

# Criar um transformador de características polinomiais de grau 2
poly = PolynomialFeatures(degree=4)

# Ajustar e transformar os dados
X_poly = poly.fit_transform(X)

print(X_poly)
```

**Saída:**

```
[[1.0000000e+00, 1.8000000e+01, 3.2400000e+02, 5.8320000e+03,
        1.0497600e+05],
       [1.0000000e+00, 2.3000000e+01, 5.2900000e+02, 1.2167000e+04,
        2.7984100e+05],
       [1.0000000e+00, 2.8000000e+01, 7.8400000e+02, 2.1952000e+04,
        6.1465600e+05],
       [1.0000000e+00, 3.3000000e+01, 1.0890000e+03, 3.5937000e+04,
        1.1859210e+06],
       [1.0000000e+00, 3.8000000e+01, 1.4440000e+03, 5.4872000e+04,
        2.0851360e+06],
       [1.0000000e+00, 4.3000000e+01, 1.8490000e+03, 7.9507000e+04,
        3.4188010e+06],
       [1.0000000e+00, 4.8000000e+01, 2.3040000e+03, 1.1059200e+05,
        5.3084160e+06],
       [1.0000000e+00, 5.3000000e+01, 2.8090000e+03, 1.4887700e+05,
        7.8904810e+06],
       [1.0000000e+00, 5.8000000e+01, 3.3640000e+03, 1.9511200e+05,
        1.1316496e+07],
       [1.0000000e+00, 6.3000000e+01, 3.9690000e+03, 2.5004700e+05,
        1.5752961e+07]]
```

A classe `PolynomialFeatures` é uma ferramenta útil para expandir as capacidades de modelos de regressão, permitindo a criação de características polinomiais a partir das características originais. Isso pode ajudar a capturar relacionamentos não lineares nos dados e melhorar a capacidade de ajuste do modelo. No exemplo acima, vimos como criar essas características polinomiais e transformar nossos dados de entrada para incluí-las. É importante escolher o grau do polinômio com sabedoria, pois um grau muito alto pode levar a um modelo superajustado (overfitting).
