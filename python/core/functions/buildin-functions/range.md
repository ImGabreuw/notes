# Função "range"

A função `range()` é uma função built-in do Python que retorna um objeto iterável que representa um intervalo de números. Ela é comumente utilizada em conjunto com a estrutura de repetição `for` para gerar sequências de números em um intervalo específico.

Ela cria uma sequência de números a partir do `start`, incrementando de acordo com o `step`, até atingir o valor menor que o `stop`.

## **Sintaxe**

A sintaxe básica da função `range()` é a seguinte:

```python
range(start, stop, step)
```

**Parâmetros:**

- `start`: é o valor inicial do intervalo (inclusivo). Se não for fornecido, o valor padrão é 0.

- `stop`: é o valor final do intervalo (exclusivo), ou seja, o valor não é incluído no intervalo. É obrigatório fornecer esse parâmetro.

- `step`: é o espaçamento entre os elementos do intervalo. É opcional e possui o valor padrão de 1. Aceita valores negativos para obter sequências decrescentes.

## **Exemplo**

```python
# Exemplo 1: Intervalo de 1 a 10 (inclusive o 1, mas não inclui o 11)
for i in range(1, 11):
    print(i, end=" ")  # Saída: 1 2 3 4 5 6 7 8 9 10

# Exemplo 2: Intervalo de 10 a 1 (inclusive o 10, mas não inclui o 0), passo -1 para decrescente
for i in range(10, 0, -1):
    print(i, end=" ")  # Saída: 10 9 8 7 6 5 4 3 2 1

# Exemplo 3: Intervalo de 0 a 100, pulando de 8 em 8 (múltiplos de 8)
for i in range(0, 100, 8):
    print(i, end=" ")  # Saída: 0 8 16 24 32 40 48 56 64 72 80 88 96
```

## **Conclusão**

A função `range()` é especialmente útil em situações em que é necessário iterar sobre um intervalo de valores numéricos ou obter sequências específicas com determinados padrões. Combinada com o `for`, ela permite criar loops que percorrem essas sequências de forma prática e eficiente.