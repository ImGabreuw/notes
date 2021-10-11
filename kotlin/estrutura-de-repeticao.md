# Estrutura de repetição no Kotlin

### Visão geral

* **Operadores**

  * `while`

  * `do-while`

  * `forEach`

* **Características**

  * Estruturas similares às convencionais em outras linguagens

  * Aceita os comandos

    * `in`
    * `..` (**range**)
    * `until`
    * `downTo`
    * `step`

### `while`

* A verificação da condição é feita antes da execução do código

```kotlin
while (condição) {
  // Corpo
}
```

### `do...while` 

* A verificação da condição é feita depois da execução do código, ou seja, o código será executado pelo menos 1 vez.

```kotlin
do {
  // Corpo
} while (condição)
```

### `for` 

* O código será executado enquanto a condição for verdadeira

* **Sintaxe**

  ```kotlin
  for (condição) {
    // Corpo
  }
  ```

* **Operadores**

  * `in` = intervalo de valores entre o valor inicial e final estabelecido

  * `until`  = intervalo entre o valor atual até o valor estabelecido (**não pertence ao intervalo**)

  * `downTo` = contagem decrescente do intervalo

  * `step` = determinar a frequência da contagem dos valores do intervalo

* **Exemplos**

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