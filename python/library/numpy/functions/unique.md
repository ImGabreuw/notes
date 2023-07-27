# Função `unique`

A função `numpy.unique()` é uma função utilizada para retornar os valores únicos (distintos) de um array ou lista. Ela retorna um novo array contendo somente os elementos únicos presentes no array original, em ordem crescente por padrão.

**Sintaxe:**

```python
numpy.unique(arr, return_index=False, return_inverse=False, return_counts=False, axis=None)
```

**Parâmetros principais:**

- **arr:** Obrigatório. O array de entrada do qual os valores únicos serão extraídos.

- **return_index:** Opcional. Se True, retorna um array que contém os índices dos elementos únicos no array original.

- **return_inverse:** Opcional. Se True, retorna um array que mapeia cada elemento do array original para sua posição no array de valores únicos.

- **return_counts:** Opcional. Se True, retorna um array que conta o número de ocorrências de cada valor único no array original.

- **axis:** Opcional. Especifica o eixo ao longo do qual a função é aplicada. Se não for fornecido, a função será aplicada a todo o array.

**Exemplo:**

```python
import numpy as np

# Criando um array de exemplo com elementos repetidos
arr = np.array([2, 5, 1, 2, 3, 1, 4, 5, 2, 1])

# Obtendo os valores únicos do array
valores_unicos = np.unique(arr)

print(valores_unicos)
```

**Saída:**

```
[1 2 3 4 5]
```

No exemplo acima, a função `numpy.unique()` foi aplicada ao array `arr`, que contém elementos repetidos. O resultado é um novo array contendo somente os elementos únicos em ordem crescente.