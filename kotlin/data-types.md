# Tipos de dados

> ## **Todos os tipos de dados no Kotlin**

|    Tipo     |                Valor(es)                |   Conversão   |
| :---------: | :-------------------------------------: | :-----------: |
|   **Int**   |    `Int.MAX_VALUE` e `Int.MIN_VALUE`    |  `.toInt()`   |
|  **Long**   |   `Long.MAX_VALUE` e `Long.MIN_VALUE`   |  `.toLong()`  |
|  **Float**  |  `Float.MAX_VALUE` e `Float.MIN_VALUE`  | `.toFloat()`  |
| **Double**  | `Double.MAX_VALUE` e `Double.MIN_VALUE` | `.toDouble()` |
|  **Array**  |                   ---                   |      ---      |
| **Boolean** |            `true` e `false`             |      ---      |
|  **Char**   |                   ---                   |  `.toChar()`  |
|  **Byte**   |   `Byte.MAX_VALUE` e `Byte.MIN_VALUE`   |  `.toByte()`  |
|  **Short**  |  `Short.MAX_VALUE` e `Short.MIN_VALUE`  | `.toShort()`  |
|  **Null**   |                   ---                   |      ---      |

> ## **Números**

### **Números inteiros**

- Byte <=> 8 bits

  > `val meuByte: Byte = 8`

- Short <=> 16 bits

  > `val meuShort: Short = 16`

- Int <=> 32 bits

  > `val meuInt: Int = 32`

- Long <=> 64 bits

  > `val meuLong: Long = 64`

### **Números decimais**

- Float <=> 32 bits

  > `val meuFloat: Float = 3.14F`

- Double <=> 64 bits

  > `val myDouble: Double = 3.1415`

### **Boa prática**

É recomendado a utilização de `_` para a separação de números com muitos dígitos:

```kotlin
val milhao: Long = 1_000_000
```

### **Propriedades**

- **Método `plus()`**

  - Equivalente ao operador `+`

  - Exemplo:

    ```kotlin
    val soma1 = 1.plus(1)
    val soma2 = valor1.plus(1)
    val soma3 = valor1.plus(valor2)
    ```

- **Método `minus()`**

  - Equivalente ao operador `-`

  - Exemplo:

    ```kotlin
    val substracao1 = 1.minus(1)
    val substracao2 = valor1.minus(1)
    val substracao3 = valor1.minus(valor2)
    ```
