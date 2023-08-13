# Argumentos nomeados e não nomeados em funções

Argumentos nomeados e não nomeados oferecem flexibilidade ao chamar funções. 

Argumentos nomeados tornam o código mais legível, pois explicitamente indicam qual valor é atribuído a qual parâmetro. 

Argumentos não nomeados são passados pela ordem de posição, o que pode ser útil para funções com menos parâmetros ou quando a ordem é intuitiva.

## **Argumentos Nomeados**

Argumentos nomeados, também conhecidos como argumentos de palavra-chave, permitem que você passe valores para os parâmetros de uma função de forma explícita, indicando qual valor corresponde a qual parâmetro. Isso é especialmente útil quando uma função tem muitos parâmetros e você deseja especificar apenas alguns deles.

Exemplo:

```python
def calcular_pagamento(horas_trabalhadas, taxa_hora):
    salario = horas_trabalhadas * taxa_hora
    return salario

salario_jane = calcular_pagamento(horas_trabalhadas=40, taxa_hora=25)
```

Neste exemplo, os argumentos `horas_trabalhadas` e `taxa_hora` são passados para a função `calcular_pagamento` com seus valores definidos explicitamente. Isso torna claro qual valor está sendo atribuído a cada parâmetro.

## **Argumentos Não Nomeados (Posicionais)**

Os argumentos não nomeados, também conhecidos como argumentos posicionais, são passados para uma função na mesma ordem em que os parâmetros foram definidos na assinatura da função. Isso significa que o primeiro argumento é atribuído ao primeiro parâmetro, o segundo argumento ao segundo parâmetro e assim por diante.

Exemplo:

```python
def calcular_pagamento(horas_trabalhadas, taxa_hora):
    salario = horas_trabalhadas * taxa_hora
    return salario

salario_jane = calcular_pagamento(40, 25)
```

Neste caso, os valores 40 e 25 são atribuídos aos parâmetros `horas_trabalhadas` e `taxa_hora` na ordem em que eles aparecem na assinatura da função.
