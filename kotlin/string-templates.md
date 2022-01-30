# _String templates_

> ## **Definição**

_String templates_, também conhecido em outras linguagens de programação como **interpolação**, tem a função de facilitar a **formatação/concatenação** de strings.

_String templates_ é indicado pelo caractere `$` ou `${}` (quando é inserido uma expressão na string literal).

É possível escapar o caractere `$`, para que o compilador não interprete-o como um _String template_, por meio do caractere `\` (`\$`).

> ## **Exemplo**

### **Concatenação de variáveis:**

```kotlin
val language = "Kotlin"

println("Hello $language!") // Hello Kotlin!
```

### **Concatenação de expressões:**

```kotlin
fun sum(a: Int, b: Int) = a + b

fun main() {
  println("Soma é: ${sum(10, 20)}") // Soma é: 30
}
```