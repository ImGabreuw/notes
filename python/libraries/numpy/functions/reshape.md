# Função "reshape"

A função `reshape()` no NumPy é usada para alterar a forma (ou dimensões) de um array multidimensional sem modificar seus dados. Ela permite reorganizar os elementos de um array em uma nova estrutura, especificando as dimensões desejadas. A função `reshape()` é muito útil quando você precisa ajustar a forma de um array para que ele corresponda aos requisitos de uma operação ou algoritmo específico.

## Sintaxe

```python
numpy.reshape(array, newshape, order='C')
```

### Parâmetros

- `array`: O array que você deseja remodelar.

- `newshape`: A nova forma desejada para o array, especificada como uma tupla de inteiros. Cada valor na tupla representa o tamanho da dimensão correspondente.

- `order` (opcional): A ordem em que os elementos serão lidos. Pode ser 'C' (ordem padrão da linguagem C) ou 'F' (ordem Fortran, que lê os elementos por coluna).

### Retorno

- Retorna um novo array com a forma especificada, mantendo os dados do array original.

## Exemplo

```python
import numpy as np

# Criando um array unidimensional
arr = np.array([1, 2, 3, 4, 5, 6])

# Usando reshape para transformá-lo em um array 2D (matriz)
reshaped = np.reshape(arr, (2, 3))

print(reshaped)
```

Neste exemplo, o array unidimensional `arr` é remodelado usando `np.reshape()` para criar um novo array com a forma `(2, 3)`. O resultado será uma matriz 2x3:

```
[[1 2 3]
 [4 5 6]]
```

Você pode alterar a forma do array para qualquer dimensão desejada, desde que o número total de elementos no array original seja compatível com a nova forma. Por exemplo, no caso acima, o array original tinha 6 elementos, que é igual ao produto de 2 e 3, permitindo a remodelação para uma matriz 2x3.

## Conclusão

A função `reshape()` é extremamente útil em tarefas de processamento de dados, como manipulação de imagens, séries temporais e muito mais, onde a reorganização de dados é comum para fins de análise ou modelagem.
