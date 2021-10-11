# Manipulação de Strings no Kotlin

### Conceito

* Strings possuem diversos métodos associados, como por exemplo:

  * Indexação
  * Concatenação por `plus(...)` ou `+`
  * Comparação
  * Formatação
  
* **OBS**: String é um **Array de Char**

### Indexação

* String como Array

* **Métodos**

  * `first()`

    ```kotlin
    val helloWorld = "Olá mundo!"

    println(helloWorld.first()) // "O"
    ```

  * `last()`

    ```kotlin
    val helloWorld = "Olá mundo!"

    println(helloWorld.last()) // "!"
    ```

  * `length`

    ```kotlin
    val helloWorld = "Olá mundo!"

    println(helloWorld.length) // 10
    ```

  * `[index]`

    ```kotlin
    val helloWorld = "Olá mundo!"

    println(helloWorld[2]) // "á"
    ```

### Concatenação

* Para concatenar duas `String`s pode ser usado o `plus(...)` ou `+`

* Para concatenar uma variável a uma `String`, os símbolos `${}` deve ser inseridos (**Interpolação de `String`s**)

* **Exemplos**

  * Concatenação com `+`

    ```kotlin
    val greeting = "Olá "
    val name = "Gabriel"

    println(greeting + name)
    ```

  * Concatenação com `plus(...)`

    ```kotlin
    val greeting = "Olá "
    val name = "Gabriel"

    println(greeting.plus(name))
    ```

  * Concatenação com `plus(...)`

    ```kotlin
    val greeting = "Olá "
    val name = "Gabriel"

    println("$greeting $name")
    println("Número de caracteres do nome: ${name.length}")
    ```

### Formatação

Função | Método
:-----: | :-----:
Deixa o primeiro character da `String` em caixa alta | `capitalize()`
Deixar o primeiro character da `String` em caixa baixa | `decapitalize()`
Deixar toda a `String` em caixa alta | `toUpperCase()`
Deixar toda a `String` em caixa baixa | `toLowerCase()`
Remover espaços vazios e caracteres inadequados para impressão | `trimEnd()` / `trimStart()` / `trim()`
Substituição de caracteres | `replace(x, y)`
Formatação de valores | `format()` 