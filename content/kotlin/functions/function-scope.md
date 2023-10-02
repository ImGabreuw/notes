# Escopo da função

> ## **Definição**

O escopo de uma função é o local (contexto) onde ela é declarada.

**CUIDADO** com o uso excessivo de funções locais, pois isso pode prejudicar o entendimento do código.

> ## **Exemplo**

Na função `main` a função `tchau` não é visível pois o escopo dela é apenas dentro da função `olaETchau` e depois de sua declaração. Veja o exemplo abaixo:

```kotlin
fun main() {
  olaETchau()
  tchau() // Erro de compilação
}

fun olaETchau() {
  println("Olá")

  tchau() // Erro de compilação

  fun tchau() {
      println("Tchau")
  }

  tchau()
}
```
