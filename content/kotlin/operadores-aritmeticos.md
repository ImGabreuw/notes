# Operadores aritméticos no Kotlin

### Conceitos

Função | Expressão | Comando | Atribuição
:-----: | :-----: | :-----: | :-----: 
soma | `a + b` | `a.plus(b)` | `a += b`
subtração | `a - b` | `a.minus(b)` | `a -= b`
multiplicação | `a * b` | `a.times(b)` | `a *= b`
divisão | `a / b` | `a.div(b)` | `a /= b`
resto | `a % b` | `a.mod(b)` | `a %= b`

* Podem ser chamados tanto como expressão quanto como comando

* A função de soma também funciona para concatenar `String`s

### Exemplos

  ```kotlin
  fun main() {
    val count = 10
    val times = 9
    val result = times + count
    
    println(result)
  }
  ```

  ```kotlin
  fun main() {
    val count = 10
    val times = 9
    val result = times + count
    
    println(count.plus(times))
  }
  ```

  ```kotlin
  fun main() {
    val count = 10
    val times = 9
    times += count
    
    println(times)
  }
  ```