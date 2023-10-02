# Função "ravel"

A função `ravel()` no NumPy é usada para transformar um array multidimensional em uma única matriz unidimensional. Em outras palavras, ela "desenrola" ou "achatap" um array multidimensional, tornando-o uma sequência de elementos em uma única dimensão.

## Sintaxe

```python
numpy.ravel(array, order='C')
```

### Parâmetros

- `array`: O array multidimensional que você deseja achatar.
- `order` (opcional): A ordem em que os elementos serão lidos. Pode ser 'C' (ordem padrão da linguagem C) ou 'F' (ordem Fortran, que lê os elementos por coluna).

### Retorno

- Retorna uma matriz unidimensional que contém todos os elementos do array original.

## Exemplo

```python
import numpy as np

# Criando um array multidimensional
arr = np.array([[1, 2, 3], [4, 5, 6]])

# Usando ravel para achatar o array
flattened = np.ravel(arr)

print(flattened)
```

Neste exemplo, o array multidimensional `arr` é achatado usando `np.ravel()`, resultando em um array unidimensional `flattened`. O resultado será `[1, 2, 3, 4, 5, 6]`, onde todos os elementos do array original são organizados em uma única dimensão.

## Conclusão

A função `ravel()` é útil quando você deseja operar em elementos individuais de um array multidimensional ou quando precisa passar um array multidimensional como entrada para uma função que espera um array unidimensional. 

Lembre-se de que a função `ravel()` não cria uma cópia dos dados; ela retorna uma visão (view) dos dados do array original, portanto, as alterações feitas no array achatado também afetarão o array original. Se você deseja criar uma cópia independente, pode usar a função `flatten()`.
