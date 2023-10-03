# Funções de Corpo de bloco e Corpo de expressão

> ## **Corpo de bloco**

O corpo de bloco de uma função é quando a implementação dela é feita dentro do par de chaves (`{}`):

```kotlin
fun sum(a: Int, b: Int): Int {
  val sum = a + b;

  return sum;
}
```

Nessa forma, é obrigatório declarar explicitamente o retorno (com `return`) e tipo de retorno da função.

> ## **Corpo de expressão**

O corpo de expressão consiste de uma função com uma única linha (expressão):

```kotlin
fun max(a: Int, b: Int): Int = if (a > b) a else b
```

Nessa forma, é possível omitir o tipo de retorno da função (inferência de tipos no Kotlin):

```kotlin
fun max(a: Int, b: Int) = if (a > b) a else b
```