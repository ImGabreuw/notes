# Introdução ao bloco "try-except"

A estrutura `try-except` em Python é utilizada para capturar e tratar exceções, evitando que o programa pare de funcionar abruptamente devido a erros inesperados. Com essa estrutura, podemos executar um código e, caso ocorra algum erro durante a execução, podemos lidar com ele de forma controlada no bloco `except`.

A estrutura `try-except` é dividida em dois blocos:

1. Bloco `try`: Aqui, colocamos o código que queremos tentar executar. É neste bloco que se espera que possam ocorrer erros.

2. Bloco `except`: Se ocorrer algum erro no bloco `try`, o código dentro do bloco `except` será executado. Neste bloco, especificamos o tipo de exceção que estamos esperando para capturar. É uma boa prática ser o mais específico possível ao capturar exceções, em vez de usar exceções genéricas (como `BaseException` e `Exception`).

**Exemplo**:

```python
try:
  num = int("a")
  print(num)
except ValueError:
  print("Número inválido")
```

Neste exemplo, o programa tenta converter a string "a" em um número inteiro usando a função `int()`. No entanto, isso não é possível, pois a string contém um caractere que não pode ser convertido em um número. Portanto, o Python lança uma exceção `ValueError`.

No bloco `except`, especificamos `ValueError` para capturar esse tipo específico de exceção. Se ocorrer um `ValueError`, o código dentro do bloco `except` será executado, que imprime a mensagem "Número inválido".

O uso da estrutura `try-except` é importante porque nos permite lidar com exceções de forma controlada, garantindo que o programa não pare de funcionar inesperadamente quando algo der errado. Isso é particularmente útil ao lidar com entradas do usuário, operações de leitura e escrita em arquivos, e outras situações em que os erros podem ser esperados ou difíceis de prever.
