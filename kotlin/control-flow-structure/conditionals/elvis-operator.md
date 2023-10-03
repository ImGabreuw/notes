# Operador `?:`

> ## **Definição**

O operador `?:` é chamado de **elvis operator** é muito utilizado para verificação de valores `null`, pois evita a utilização da expressão completa do `if-else`.

Caso a expressão do lado esquerdo do `?:` tiver como resultado `null`, então é retornado o valor à direita do operador (*not null value*).

Esse operador pode ser encadeado, mas é necessário ter **CUIDADO** nessa situação, pois pode dificultar a leitura/entendimento do código.

> ## **Exemplo**

### **Verificação de `null` com `if-else`:**

```kotlin
val nome: String? = "Gabriel"

val comprimento: Int = if (nome != null) nome.length else 0
```

### **Verificação de `null` com `?:`:**

```kotlin
val nome: String? = "Gabriel"

val comprimento: Int = nome?.length ?: 0
```

> ## **Elvis operator com `throw`/`return`**

Como as palavras reservadas `throw` e `return` são expressões em Kotlin, elas também podem ser usadas como *not null value* do operador:

```kotlin
fun getNome(pessoa: Pessoa) {
  val nome = pessoa.getNome ?: return null
}

```

```kotlin
fun getNome(pessoa: Pessoa) {
  val nome = pessoa.getNome ?: throw IllegalArgumentException()
}
```