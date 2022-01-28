# Estrutura de controle no Kotlin

### `when`

* Substituição do encadeamento de `if-else` e do `switch-case`

* Aceita como *cases*: valores, condicionais, range

* **Exemplo**

  ```kotlin
  when {
    a > b -> { 
      // Corpo 
    }
    a != b && a > c -> {
      // Corpo
    }
    else -> {
      // Corpo
    }
  }
  ```

  ```kotlin
  when(year) {
    -4000..475 -> println("Antiguidade")
    476..1452 -> println("Idade Média")
    1453..1798 -> println("Idade Moderna")
    currentYear -> println("Idade Contemporânea")
  }
  ```

### `?:` (*Elvis operator*)

* Muito utilizado para verificação de valores `null`, pois evita a utilização da expressão completa do `if-else`

* Caso a expressão do lado direito do `?:` retornar `null` então será retornado o valor à direita do operador (*valor not null*)

* Pode ser encadeado, mas é necessário ter **CUIDADO** nessa situação, pois pode dificultar a leitura do código

* **Exemplo**

  ```kotlin
  val a: Int? = null
  var number = a ?: 0
  ```

  ```kotlin
  val a: Int? = null
  val c: Int? = 9
  var number = a ?: b ?: 0
  ```