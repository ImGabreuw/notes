# Data classes no Kotlin

### Definição

* Tem como **principal objetivo armazenar dados**

* Geração automática de alguns métodos

* Para criar uma *data class* é necessário seguir as seguintes regras:

  * **1 atributo no mínimo** (construtor primário com pelo menos 1 parâmetro)

  * Todos os atributos devem ser **declarados com `val` ou `var`**

  * **NÃO** pode ser `abstract`, `open`, `sealed` ou `inner`

### Métodos gerados automaticamente

* `equals()` e `hashCode()`

* `toString` (**FORMATO**: `"User(name=John, age=42)"`)

* `componentN()`

* `copy()`

### Exemplo

```kotlin
data class User(val name: String, val age: Int)
```