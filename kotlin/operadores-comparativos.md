# Operadores comparativos no Kotlin

### Conceitos

Função | Expressão | Comando
:-----: | :-----: | :-----:
maior | `a > b` | `a.compareTo(b) == 1`
menor | `a < b` | `a.compareTo(b) == -1`
maior ou igual | `a >= b` | `a.compareTo(b) >= 0`
menor ou igual | `a <= b` | `a.compareTo(b) <= 0`
igual | `a = b` | `a.equals(b)` ou `a.compareTo(b) == 0`
diferente | `a != b` | `!(a.equals(b))`

### Exemplos

```kotlin
  val a = 22
  val b = 90

  println(a > b)
  println(a.compareTo(b) == 1)
  ```

  ```kotlin
  val a = 22
  val b = 22

  println(a >= b)
  println(a.compareTo(b) >= 0)
  ```

  ```kotlin
  val a = 22
  val b = 90

  println(a < b)
  println(a.compareTo(b) == -1)
  ```

  ```kotlin
  val a = 22
  val b = 22

  println(a == b)
  println(a.compareTo(b) == 0)
  ```

  ```kotlin
  val a = 22
  val b = a

  println(a == b)
  println(a.equals(b))
  ```

  ```kotlin
  val a = 22
  val b = a

  println(a != b)
  println(!a.equals(b))
  ```