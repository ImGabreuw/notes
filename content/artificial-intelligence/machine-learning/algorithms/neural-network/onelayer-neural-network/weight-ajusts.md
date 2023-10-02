# Ajuste de pesos em Perceptron de uma camada

## **Introdução**

No contexto das redes neurais, o ajuste dos pesos desempenha um papel essencial. As entradas de uma rede neural são representadas pelos atributos de um conjunto de dados, e é responsabilidade da rede encontrar o conjunto de pesos ideal para cada um desses atributos.

Em cenários de aprendizado supervisionado, uma abordagem para alcançar esse objetivo é por meio do operador `and` (E lógico). Tomemos como exemplo a tabela abaixo, representando uma operação `and`:

| x1  | x2  | Classe |
| :-: | :-: | :----: |
|  0  |  0  |   0    |
|  0  |  1  |   0    |
|  1  |  0  |   0    |
|  1  |  1  |   1    |

Aqui:

- `x1` e `x2` são os atributos de entrada.

- `Classe` é o atributo de saída (previsão).

## **Exemplo**

Vamos utilizar a lógica do operador `and` para ilustrar um exemplo de ajuste de pesos. Começaremos com pesos iniciais de $w_1 = 0$ e $w_2 = 0$ para os atributos `x1` e `x2`, respetivamente. O objetivo é percorrer cada linha da tabela e avaliar a previsão do modelo com base nesses pesos.

Primeiro, realizamos o cálculo da função de soma para a 1ª linha (com `x1 = 0` e `x2 = 0`):

$$
\text{soma} = 0 \cdot 0 + 0 \cdot 0 = 0
$$

Uma vez que o resultado da função de soma é 0, a _step function_ também retorna 0, indicando que o neurônio artificial não será ativado.

Prosseguindo para a 2ª linha (`x1 = 0` e `x2 = 1`):

$$
\text{soma} = 0 \cdot 0 + 1 \cdot 0 = 0
$$

Mais uma vez, o valor da _step function_ é 0.

Na 3ª linha (`x1 = 1` e `x2 = 0`):

$$
\text{soma} = 1 \cdot 0 + 0 \cdot 0 = 0
$$

O valor da _step function_ continua sendo 0.

Por fim, na 4ª linha (`x1 = 1` e `x2 = 1`):

$$
\text{soma} = 1 \cdot 0 + 1 \cdot 0 = 0
$$

Neste caso, esperávamos que a função de soma resultasse em 1, pois ambos os atributos possuem o valor 1. Contudo, obtivemos 0. Isso ocorreu devido à escolha incorreta dos pesos.

Uma vez que a precisão não atingiu um patamar aceitável (neste caso, abaixo de 100%), é necessário ajustar os pesos para minimizar o erro.

A taxa de acerto neste exemplo é de 75%, já que o modelo errou uma vez em quatro tentativas (na última linha).

Para calcular o erro de um modelo, podemos usar a fórmula simples:

$$
\text{Erro} = \text{Resposta correta} - \text{Resposta calculada}
$$

Para cada registro no conjunto de dados, aplicamos essa fórmula. No exemplo acima:

- Na 1ª Linha:

  $$
  \text{Erro} = 0 - 0 = 0
  $$

- Na 2ª Linha:

  $$
  \text{Erro} = 0 - 0 = 0
  $$

- Na 3ª Linha:

  $$
  \text{Erro} = 0 - 0 = 0
  $$

- Na 4ª Linha:

  $$
  \text{Erro} = 1 - 0 = 1
  $$

O erro total para esse conjunto de pesos é 1, indicando que os pesos precisam ser ajustados para minimizar os erros. Isso pode ser feito usando a seguinte fórmula:

$$
\text{Peso}(n + 1) = \text{Peso}(n) + (\text{Taxa de aprendizagem} \times \text{Entrada} \times \text{Erro})
$$

Onde:

- $\text{Peso}(n)$ é o peso atual.

- $\text{Taxa de aprendizagem}$ é um valor fixo que controla o quanto o peso muda a cada ajuste.

- $\text{Entrada}$ é o valor de entrada.

- $\text{Erro}$ é o erro cometido pelo peso atual.

Ajustar os pesos envolve aplicar essa fórmula para cada entrada no conjunto de dados.
