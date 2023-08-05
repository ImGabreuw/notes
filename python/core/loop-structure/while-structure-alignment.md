# Alinhamento de estruturas de repetição "while"

O alinhamento de estruturas de repetições é uma técnica muito utilizada quando se trabalha com matrizes ou arrays multidimensionais. Nesse contexto, é comum utilizar um loop interno dentro de outro loop externo para percorrer os elementos da matriz de forma organizada.

Essa técnica de alinhamento de `while` é fundamental para a manipulação de matrizes e é amplamente utilizada em programação para realizar operações em arranjos multidimensionais de forma organizada e controlada.

## **Exemplo**

```python
linhas = 5
colunas = 5

linha = 1

while linha <= linhas:
    coluna = 1

    while coluna <= colunas:
        print(coluna, end=" ")
        coluna += 1

    print()
    linha += 1
```

A saída desse código será:

```
1 2 3 4 5
1 2 3 4 5
1 2 3 4 5
1 2 3 4 5
1 2 3 4 5
```

O código utiliza dois laços `while`, um dentro do outro, para percorrer cada elemento da matriz e imprimir seus valores. O loop externo controla as linhas, enquanto o loop interno controla as colunas. A cada iteração do loop externo, o loop interno é executado para percorrer todas as colunas daquela linha antes de pular para a próxima linha. Isso garante que a matriz seja impressa no formato 5x5 como mostrado na saída acima.
