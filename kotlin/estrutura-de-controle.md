# Estrutura de controle no Kotlin

### Visão geral

* **Operadores**

  * `if-else`

  * `when` (substituto do `switch-case`)

  * `?:` (*elvis operator*)

* **Características**

  * Pode ser utilizado tanto para controle quanto para atribuição, ou seja, como uma expressão

  * Pode ser encadeadas

  * **OBS**: não existem mais o *operador ternário*, pois foi substituído pelo `if-else` e `?:`

### `if-else`

* `if-else` como expressão de única linha: **não** utiliza `return` e chaves

* `if-else` como expressão de múltipla linha: o valor a ser atribuído, deve estar na **última linha do bloco**

* **Exemplo**

  ```kotlin
  if (expressão) {
    // Corpo
  } else if (expressão) {
    // Corpo
  } else {
    // Bloco
  }
  ```

  ```kotlin
  val result = if (expressão) /* Código, caso TRUE */ else /* Código, caso FALSE */
  ```

  ```kotlin
  val minValue = if (a > b) {
    println("b($b) é o menor valor")
    b // valor a ser atribuído na variável "minValue"
  } else if (a < b) {
    println("a($a) é o menor valor")
    a
  } else {
    println("Os valores são iguais")
    b
  }
  ```

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