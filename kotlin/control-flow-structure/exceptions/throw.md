# Palavra reservada `throw`

> ## **Definição**

A palavra reservada `throw` tem a função de lançar exceções (nativas ou customizadas).

> ## **Sintaxe**

```kotlin
throw [exceção]
```

> ## **Exemplo**

```kotlin
fun porcentagem(numero: Int): String {
    return if (numero in 1..100) {
        "$numero%"
    } else {
        throw IllegalArgumentException("$numero deve estar entre 1 e 100")
    }
}
```