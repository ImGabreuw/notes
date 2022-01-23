# Estrutura de repetição `for`

> ## **Definição**

A estrutura de repetição `for` executa o código dentro do corpo dela enquanto a condição for verdadeira.

A verificação da condição é feita antes da execução do código.

**DOCUMENTAÇÃO**: [clique aqui](https://kotlinlang.org/docs/control-flow.html#for-loops)

> ## **Sintaxe**

```kotlin
for ([condição]) {
  // Corpo
}
```

> ## **Exemplo**

```kotlin
for (item in collection) print(item)
```

```kotlin
for (i in 0..20 step 2) {
  println(i) // 0 2 4 6 8 10 12 14 16 18 20
}
```

```kotlin
for (i in 10 downTo 0) {
  println(i) // 10 9 8 7 6 5 4 3 2 1 0
}
```

```kotlin
for (i in 0 until 10) {
  println(i) // 0 1 2 3 4 5 6 7 8 9
}
```

```kotlin
val text = "Kotlin"

for (letter in text) {
  println(letter) // K o t l i n
}
```

```kotlin
val text = "Kotlin"

text.forEach {
  print("$it ") // K o t l i n
}
```