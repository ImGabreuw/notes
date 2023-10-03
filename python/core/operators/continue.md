# Operador "continue"

O operador `continue` é uma instrução utilizada em estruturas de repetição em Python para pular a iteração atual do loop e continuar com a próxima iteração. Em outras palavras, quando o `continue` é encontrado no código, o restante do bloco de código dentro do loop é ignorado para iteração atual, e prossegue para a próxima.

A ideia principal do `continue` é permitir que você evite executar uma parte específica do código em determinada iteração, caso uma condição seja atendida, e continue com as iterações subsequentes. Isso é especialmente útil quando você deseja ignorar certos elementos ou casos especiais durante o processamento do loop e assim otimizar o algoritmo.

O `continue` é uma ferramenta poderosa para controlar o fluxo de um loop e tornar o código mais eficiente e legível em determinados cenários.

## **Sintaxe**

```python
while condicao:
    # Código a ser executado no loop

    if condicao_de_parada:
        continue

    # Mais código a ser executado após o continue
```

ou

```python
for elemento in sequencia:
    # Código a ser executado no loop

    if condicao_de_parada:
        continue

    # Mais código a ser executado após o continue
```

## **Exemplo**

```python
# Exemplo usando while
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
soma_pares = 0

i = 0
while i < len(numeros):
    if numeros[i] % 2 == 1:  # Se o número for ímpar, pule para a próxima iteração
        i += 1
        continue

    soma_pares += numeros[i]
    i += 1

print("Soma dos números pares:", soma_pares)
```

Nesse exemplo, estamos somando apenas os números pares da lista `numeros`. Quando encontramos um número ímpar, usamos o `continue` para pular para a próxima iteração sem fazer nada. Dessa forma, a soma só é realizada para os números pares, ignorando os ímpares.
