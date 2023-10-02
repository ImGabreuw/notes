# Estrutura de repetição `do-while`

> ## **Definição**

A estrutura de repetição `do-while` executa o código dentro do corpo dela enquanto a condição for verdadeira.

A verificação da condição é feita depois da execução do código, dessa forma o código é executado pelo menos 1 vez.

> ## **Sintaxe**

```kotlin
do {
  // Corpo
} while ([condição])
```

> ## **Exemplo**

```kotlin
var temperatura: Int
var somatoria = 0
var quantidade = 0

do {
    println("Digite uma temperatura ou 999 para sair:")
    temperatura = readLine()!!.toInt()

    if (temperatura != 999) {
        somatoria += temperatura
        quantidade++
    }
} while (temperatura != 999)

println("A média das temperaturas é = ${somatoria / quantidade}")
```