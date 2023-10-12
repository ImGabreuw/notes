O suporte é uma métrica fundamental na mineração de dados e análise de regras de associação, e é amplamente utilizado no contexto do algoritmo Apriori. 

Ele quantifica a frequência com que um determinado conjunto de itens aparece em um conjunto de transações ou eventos. Em outras palavras, o suporte mede a proporção de transações em que um conjunto de itens específico ocorre.

A fórmula geral para calcular o suporte de um conjunto de itens é a seguinte:

$$
\text{Suporte}\text{(conjunto de itens)} = \frac{\text{Número de transações que contêm o conjunto de itens}}{\text{Número total de transações}}
$$

Suponha que temos um conjunto de transações de compras em uma loja:

```
Transação 1: Leite, Pão, Maçã, Frutas
Transação 2: Leite, Pão, Frutas
Transação 3: Leite, Pão, Maçã
Transação 4: Leite, Pão
Transação 5: Leite, Pão, Maçã, Frutas
```

**Passo 1 - Cálculo do Suporte para Itens Individuais:**

Nesta etapa, calcularemos o suporte para cada item individual e filtraremos aqueles que têm um suporte inferior a um valor de suporte arbitrário (por exemplo, 40%).

- Suporte(Leite) = (3 transações com Leite) / (5 transações totais) = 0.6 (60%)
- Suporte(Pão) = (5 transações com Pão) / (5 transações totais) = 1.0 (100%)
- Suporte(Maçã) = (2 transações com Maçã) / (5 transações totais) = 0.4 (40%)
- Suporte(Frutas) = (3 transações com Frutas) / (5 transações totais) = 0.6 (60%)

Itens frequentes (suporte ≥ 0.4): Leite, Pão, Maçã, Frutas

Itens descartados (suporte < 0.4): Nenhum neste caso.

**Passo 2 - Cálculo do Suporte para Conjuntos de 2 Itens:**

Nesta etapa, criamos todos os pares possíveis de itens frequentes e calculamos o suporte para esses pares. Filtramos os pares com suporte inferior ao valor de suporte arbitrário.

- Pares possíveis: (Leite, Pão), (Leite, Maçã), (Leite, Frutas), (Pão, Maçã), (Pão, Frutas), (Maçã, Frutas)

Vamos calcular o suporte para esses pares:

- Suporte(Leite, Pão) = (3 transações com Leite e Pão) / (5 transações totais) = 0.6 (60%)
- Suporte(Leite, Maçã) = (2 transações com Leite e Maçã) / (5 transações totais) = 0.4 (40%)
- Suporte(Leite, Frutas) = (3 transações com Leite e Frutas) / (5 transações totais) = 0.6 (60%)
- Suporte(Pão, Maçã) = (2 transações com Pão e Maçã) / (5 transações totais) = 0.4 (40%)
- Suporte(Pão, Frutas) = (3 transações com Pão e Frutas) / (5 transações totais) = 0.6 (60%)
- Suporte(Maçã, Frutas) = (2 transações com Maçã e Frutas) / (5 transações totais) = 0.4 (40%)

Pares frequentes (suporte ≥ 0.4): (Leite, Pão), (Pão, Maçã), (Pão, Frutas)

Pares descartados (suporte < 0.4): (Leite, Maçã), (Leite, Frutas), (Maçã, Frutas)

**Passo 3 - Cálculo do Suporte para Conjuntos de 3 Itens:**

Nesta etapa, criamos todas as combinações possíveis de conjuntos de 3 itens usando os pares frequentes encontrados no Passo 2 e calculamos o suporte para esses conjuntos. Filtramos os conjuntos com suporte inferior ao valor de suporte arbitrário.

- Combinações possíveis: (Leite, Pão, Maçã), (Leite, Pão, Frutas), (Pão, Maçã, Frutas)

Vamos calcular o suporte para esses conjuntos:

- Suporte(Leite, Pão, Maçã) = (2 transações com Leite, Pão, Maçã) / (5 transações totais) = 0.4 (40%)
- Suporte(Leite, Pão, Frutas) = (2 transações com Leite, Pão, Frutas) / (5 transações totais) = 0.4 (40%)
- Suporte(Pão, Maçã, Frutas) = (1 transação com Pão, Maçã, Frutas) / (5 transações totais) = 0.2 (20%)

Conjuntos frequentes (suporte ≥ 0.4): (Leite, Pão, Maçã), (Leite, Pão, Frutas)

Conjunto descartado (suporte < 0.4): (Pão, Maçã, Frutas)

O processo continua iterativamente até que não seja possível encontrar mais conjuntos de itens frequentes que atendam ao valor de suporte especificado. Neste exemplo, encontramos as melhores combinações de itens que atendem ao nosso critério de suporte, que são (Leite, Pão), (Pão, Maçã), e (Pão, Frutas).

Essas combinações frequentes podem ser usadas para gerar regras de associação com base na confiança e no lift, o que pode ser valioso em tarefas como recomendação de produtos ou análise de cestas de compras.