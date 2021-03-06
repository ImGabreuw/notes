# Introdução à "Funções"

> ## **Definição**

A declaração de uma função é feita a partir da palavra reservada `fun`.

Por padrão toda função tem como tipo de retorno `Unit`.

O encadeamento de chamadas de função é feita através da notação ponto `.`:

```kotlin
"Olá ".plus("Mundo!").length // 10
```

**Documentação**: [clique aqui](https://kotlinlang.org/docs/functions.html)

> ## **Exemplo**

```kotlin
fun double(x: Int): Int {
    return x * 2
}

double(2) // 4
```

### Tipos de funções

  * Anônimas 

  * _Single-line_

  * _Inline_

  * Extensões

  * Lambdas

  * Ordem superior

### Função simples

```kotlin
private fun getFullName(firstName: String, lastName: String): String {
  val fullName = "$firstName $lastName"
  
  return fullName
}
```

```kotlin
private fun getFullName(firstName: String, lastName: String): String {
  return "$firstNme $lastName"
}
```

### Função de ordem superior

* Recebem outra função ou lambda como parâmetro

* Bastante úteis para a generalização de funções e tratamento de erros

* **Exemplos**

  ```kotlin
  val x = calculate(12, 4, ::sum) // parâmetro é uma função anônima
  ```

  ```kotlin
  val x = calculate(12, 4) {a, b -> a + b} // parâmetro é uma função com implementação
  ```

  ```kotlin
  fun sum(a: Int, b: Int) = a.plus(b)

  fun calculate(a: Int, b: Int, operation: (Int, Int) -> Int) = operation(a, b)

  fun main() {
    val result1 = calculate(5, 4) {a, b -> a * b}
    val result2 = calculate(5, 4, ::sum)

    println(result1)
    println(result2)
  }
  ```

### Função extensão

* Criar uma função que só pode ser chamada por um tipo específico

* Para referênciar o valor em questão, dentro da função, usa-se a palavra reservada `this`

* **Exemplo**

  ```kotlin
  fun String.randomCapitalizedLetter() =
  this[(0..this.length - 1).random()].toUpperCase()
  ```