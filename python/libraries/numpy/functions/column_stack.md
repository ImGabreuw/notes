A função `column_stack` da biblioteca NumPy é usada para empilhar uma sequência de matrizes unidimensionais (vetores) como colunas para criar uma única matriz bidimensional. Ela permite combinar vetores unidimensionais, que podem representar diferentes atributos ou recursos, em uma única matriz de dados bidimensional. Essa função é útil em muitos cenários, especialmente quando se trabalha com algoritmos de aprendizado de máquina e análise de dados, onde você pode precisar combinar várias séries de dados em um único conjunto de dados.

## Sintaxe

```python
numpy.column_stack(tup)
```

- `tup`: Uma tupla contendo os vetores unidimensionais (1-D) que você deseja empilhar como colunas. Esses vetores devem ter o mesmo comprimento.

### Retorno

A função `column_stack` retorna uma nova matriz bidimensional que contém os vetores empilhados como colunas. Cada vetor unidimensional é tratado como uma coluna na matriz resultante.

## Exemplo

```python
import numpy as np

# Criar alguns vetores unidimensionais
vector1 = np.array([1, 2, 3])
vector2 = np.array([4, 5, 6])
vector3 = np.array([7, 8, 9])

# Usar column_stack para combinar esses vetores como colunas em uma matriz
result_matrix = np.column_stack((vector1, vector2, vector3))

print(result_matrix)
```

Saída:

```
array([[1, 4, 7],
       [2, 5, 8],
       [3, 6, 9]])
```

Neste exemplo, três vetores unidimensionais (`vector1`, `vector2` e `vector3`) são criados e, em seguida, a função `column_stack` é usada para empilhá-los como colunas em uma única matriz bidimensional `result_matrix`. Cada vetor é tratado como uma coluna na matriz resultante.

Isso é útil, por exemplo, quando você deseja combinar várias séries de dados para criar um conjunto de dados multidimensional que pode ser usado em algoritmos de aprendizado de máquina ou análise estatística.