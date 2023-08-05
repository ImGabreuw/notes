# Estrutura de repetição "while"

A estrutura de repetição `while` é utilizada para executar um bloco de código repetidamente enquanto uma determinada condição é verdadeira. A sintaxe do `while` é a seguinte:

```python
while condição:
    # Bloco de código a ser executado enquanto a condição for verdadeira
```

A cada iteração, o Python verifica se a condição especificada após a palavra-chave `while` é verdadeira. Se a condição for verdadeira, o bloco de código dentro do `while` é executado. Após a execução do bloco de código, o Python verifica novamente a condição e repete o processo até que a condição se torne falsa.

Se a condição for falsa desde o início, o bloco de código dentro do `while` nunca será executado, e o programa passará para a próxima instrução após o bloco `while`.

É importante ter cuidado ao utilizar um `while`, pois se a condição nunca se tornar falsa durante a execução, o loop continuará infinitamente, resultando em um "loop infinito". Para evitar isso, é necessário garantir que a condição seja alterada de alguma forma para que o loop possa ser interrompido em algum momento.

Um exemplo comum de uso do `while` é quando precisamos repetir uma ação até que o usuário insira um valor específico ou até que uma determinada condição seja atendida. Por exemplo:

```python
count = 0

while count < 5:
    print(f"Contagem: {count}")
    count += 1
```

Nesse exemplo, o código irá imprimir a contagem de 0 a 4, já que a condição `count < 5` é verdadeira nas primeiras 5 iterações.

Para interromper um loop `while` antes que a condição seja falsa, podemos utilizar a palavra-chave `break`. Quando o Python encontra o comando `break` dentro do loop, ele interrompe a execução do `while` e continua a execução do código após o loop.

```python
count = 0

while True:
    print(f"Contagem: {count}")
    count += 1

    if count >= 5:
        break
```

Neste exemplo, utilizamos o `while True` para criar um loop infinito e, em seguida, usamos o `break` para interrompê-lo quando a contagem atinge o valor de 5.

É importante ter cuidado ao usar o `break`, pois ele pode levar a loops que não são facilmente compreensíveis e podem tornar o código mais difícil de dar manutenção. Sempre certifique-se de que exista uma condição que possa tornar a condição do `while` falsa para garantir que o loop seja interrompido corretamente.
