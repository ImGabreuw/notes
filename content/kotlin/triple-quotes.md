# _Tripe quotes_

> ## **Definição**

É uma forma de declarar uma string que permite a quebra de linha sem precisar usar o caractere `\n`.

Existem várias métodos para declarar uma string com _tripe quotes_:

- `trimIndent()`: é o método padrão no uso de triple quotes

- `replaceIndent()`: é idêntico ao método `trimIndent()`

- `trimMargin()`: faz a quebra de linha, por padrão, a partir de um `|` (**pipe**)

- `trimMargin(...)`: substitui a indentação com `TAB` pela string passada como argumento

- `trimMargin(...)`:  faz a quebra de linha a partir da String passada como argumento

> ## **Exemplo**

### **`trimIndent()`:**

```kotlin
val mensagem = """
    Olá
    Mundo
""".trimIndent()
```

### **`replaceIndent()`:**

```kotlin
val mensagem = """
    Olá
    Mundo
""".replaceIndent()
```

### **`trimMargin()`:**

```kotlin
val mensagem = """
    |Olá
    |Mundo
""".trimMargin()
```

```kotlin
val mensagem = """
    >Olá
    >Mundo
""".trimMargin(">")
```