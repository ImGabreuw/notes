A classe `KernelPCA` no módulo `sklearn.decomposition` implementa o algoritmo de Análise de Componentes Principais com Kernel ([[Kernel PCA]]). Esta técnica é uma extensão do PCA tradicional que permite a redução de dimensionalidade de dados não linearmente separáveis. O Kernel PCA é especialmente útil quando os dados não podem ser separados de maneira linear no espaço de características original, mas podem ser separados de forma eficaz em um espaço de características de dimensão superior.

## Sintaxe

```python
from sklearn.decomposition import KernelPCA

# Criar um objeto KernelPCA com kernel RBF
kpca = KernelPCA(n_components=8, kernel='rbf', gamma=0.1)
```

### Principais Parâmetros

- `n_components`: Especifica o número de componentes principais a serem mantidos após a redução de dimensionalidade. É semelhante ao parâmetro `n_components` em PCA. Se não for especificado, todos os componentes principais serão mantidos.

- `kernel`: Especifica o kernel a ser usado para mapear os dados em um espaço de características de dimensão superior. Os kernels comuns incluem "linear", "polynomial", "rbf" (Radial Basis Function) e outros. A escolha do kernel depende da natureza dos dados e do problema.

- `gamma`: É um hiperparâmetro associado a alguns kernels, como o kernel RBF. Controla a influência dos pontos de treinamento no cálculo dos componentes principais. Valores menores de gamma fazem com que pontos distantes tenham menos influência.

- `degree`: Apenas relevante para kernels polinomiais. Define o grau do polinômio usado para a transformação dos dados.

- `coef0`: É um hiperparâmetro associado a alguns kernels, como o kernel polinomial e o kernel sigmoidal. Controla o termo independente na função kernel.

### Principais Métodos

- `fit(X, y=None)`: Este método é usado para ajustar o modelo KernelPCA aos dados de entrada `X`. O parâmetro `y` é opcional e pode ser fornecido em problemas de classificação.

- `transform(X)`: Este método transforma os dados de entrada `X` no espaço de características de dimensão superior especificado pelo kernel. Retorna os dados transformados.

- `fit_transform(X, y=None)`: Este método combina as etapas de ajuste e transformação. Ajusta o modelo aos dados `X` e, em seguida, transforma `X` no espaço de características de dimensão superior. Retorna os dados transformados.

## Exemplo

```python
from sklearn.decomposition import KernelPCA
import numpy as np

# Criar uma matriz de dados de exemplo (m amostras, n características)
X = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

# Criar um objeto KernelPCA com kernel RBF
kpca = KernelPCA(kernel='rbf', gamma=0.1)

# Ajustar o modelo KernelPCA aos dados e transformá-los
X_transformed = kpca.fit_transform(X)

# Os dados transformados estão em X_transformed
print(X_transformed)
```

Saída:

```
[[ 7.07099569e-01 -3.89529513e-01]
 [-6.66127020e-16  7.79059026e-01]
 [-7.07099569e-01 -3.89529513e-01]]
```

Neste exemplo, criamos um objeto `KernelPCA` com um kernel RBF e ajustamos o modelo aos dados de entrada `X`. Em seguida, transformamos os dados originais em um espaço de características de dimensão superior usando o método `fit_transform`. O resultado são os dados transformados em `X_transformed`. Esta técnica é útil quando os dados não podem ser separados de forma linear no espaço de características original.