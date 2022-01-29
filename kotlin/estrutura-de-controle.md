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