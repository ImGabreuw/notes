# Operador `in`

> ## **Definição**

O operador `in` serve para iterar sobre um intervalo de valores.

Pode ser usado para verificar se um valor está, ou não, contido em um intervalo.

Função | Operador
:----: | :-------:
contém | `in`
não contém | `!in`

> ## **Exemplo**

### `in` ("está contido")

```kotlin
fun isLetter(c: Char) = c in 'a'..'z' || c in 'A'..'Z'
```

### `!in` ("não está contido")

```kotlin
fun isNotDigit(c: Char) = c !in '0'..'9'
```