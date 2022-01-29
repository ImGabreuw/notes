# Ranges e progressões

### Operador `in` e ranges

* **Conceitos**

  * **Range**: criar um intervalo de valores que inicia no primeiro parâmetro e termina no segundo

* **Exemplo**

  ```kotlin
  val numbers = listOf(3, 9, 0, 1, 2)
  println(12 in numbers) // false
  ```

  ```kotlin
  println(12 in 0..20) // true
  ```
  
  ```kotlin
  val bingo = listOf(8, 6, 34, 2, 13)
  val number = (1..34).random()

  println(number)
  println(number in bingo)
  ```

  ```kotlin
  const val MIN_AGE = 16
  const val MAX_AGE = 68

  fun main() {
    val age = (10..100).random()

    // Com operadores in e range
    println(age in MIN_AGE..MAX_AGE)
    // Sem operadores in e range
    println(age >= MIN_AGE && age <= MAX_AGE)
  }