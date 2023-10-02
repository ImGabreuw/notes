# Strings

> ## **Definição**

Strings possuem diversos métodos associados, como por exemplo:

- Indexação

- Concatenação por `plus(...)` ou `+`

- Comparação

- Formatação

**OBS**: String é um **Array de Char**

> ## **Indexação**

### **Definição**

String como Array

### **Métodos**

- `first()`:

  ```kotlin
  val helloWorld = "Olá mundo!"

  println(helloWorld.first()) // "O"
  ```

- `last()`:

  ```kotlin
  val helloWorld = "Olá mundo!"

  println(helloWorld.last()) // "!"
  ```

- `length`:

  ```kotlin
  val helloWorld = "Olá mundo!"

  println(helloWorld.length) // 10
  ```

- `[index]`:

  ```kotlin
  val helloWorld = "Olá mundo!"

  println(helloWorld[2]) // "á"
  ```

> ## **Concatenação**

### **Definição**

Para concatenar duas strings pode ser usado o método `plus(...)` ou o operador `+`.

Para concatenar uma variável a uma string, os símbolos `${}` deve ser inseridos (**Interpolação**).

### **Exemplos**

- Concatenação com `+`:

  ```kotlin
  val greeting = "Olá "
  val name = "Gabriel"

  println(greeting + name)
  ```

- Concatenação com `plus(...)`:

  ```kotlin
  val greeting = "Olá "
  val name = "Gabriel"

  println(greeting.plus(name))
  ```

- Concatenação com `plus(...)`:

  ```kotlin
  val greeting = "Olá "
  val name = "Gabriel"

  println("$greeting $name")
  println("Número de caracteres do nome: ${name.length}")
  ```

> ## **Formatação**

|                             Função                             |                 Método                 |
| :------------------------------------------------------------: | :------------------------------------: |
|      Deixa o primeiro character da `String` em caixa alta      |             `capitalize()`             |
|     Deixar o primeiro character da `String` em caixa baixa     |            `decapitalize()`            |
|              Deixar toda a `String` em caixa alta              |            `toUpperCase()`             |
|             Deixar toda a `String` em caixa baixa              |            `toLowerCase()`             |
| Remover espaços vazios e caracteres inadequados para impressão | `trimEnd()` / `trimStart()` / `trim()` |
|                   Substituição de caracteres                   |            `replace(x, y)`             |
|                     Formatação de valores                      |               `format()`               |

> ## **Validação**

### **Definição**

Métodos de validação de strings ou os caracteres contidos nele:

- `isEmpty()`: se não conter nenhum caractere na string, o método retorna `true`, caso contrário, `false`

- `isBlank()`: se não conter nenhum caractere ou apenas backspace (espaços em branco) na string, o método retorna `true`, caso contrário, `false`

- `length`: obter a quantidade de caracteres presente na string

### **Exemplos**

- `isEmpty()`:

  ```kotlin
  var language = "Kotlin"
  println(language.isEmpty()) // false

  language = ""
  println(language.isEmpty()) // true
  ```

- `isBlank()`:

  ```kotlin
  var isBlank = "".isBlank()
  println(isBlank) // true

  var isBlank = " ".isBlank()
  println(isBlank) // true

  var isBlank = "kotlin".isBlank()
  println(isBlank) // false
  ```

- `length`

  ```kotlin
  println("Hello World".length) // 11
  ```