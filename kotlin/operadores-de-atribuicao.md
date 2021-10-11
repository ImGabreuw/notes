# Operadores de atribuição

### Definição

* É a combinação entre operadores aritméticos (`+`, `-`, `*`, `/`, `%`) e operador de atribuição (`=`)

### Operadores

Operador | Explicação | Exemplo com operador de atribuição | Exemplo sem operador de atribuição
:------: | :--------: | :--------------------------------: | :--------------------------------:
`+=` | atribuição após a adição | `A += B` | `A = A + B`
`-=` | atribuição após a subtração | `A -= B` | `A = A - B`
`*=` | atribuição após a multiplicação | `A *= B` | `A = A * B`
`/=` | atribuição após a divisão | `A /= B` | `A = A / B`
`%=` | atribuição do restante após a divisão | `A %= B` | `A = A % B`

### Exemplo

```kotlin
var a = 3

a += 2 // 5
a -= 2 // 3
a *= 2 // 6
a /= 2 // 3
a %= 2 // 1
```