# Operadores lógicos

> ## **Definição**

### **"Tabela da verdade" do operador lógico `&&` (and)**

| expressão 1 | expressão 2 | `expressão 1 and expressão 2` |
| :---------: | :---------: | :--------------------------: |
|    true     |    true     |             true             |
|    true     |    false    |            false             |
|    false    |    true     |            false             |
|    false    |    false    |            false             |

### **"Tabela da verdade" do operador lógico `||` (or)**

| expressão 1 | expressão 2 | `expressão 1 or expressão 2` |
| :---------: | :---------: | :--------------------------: |
|    true     |    true     |             true             |
|    true     |    false    |             true             |
|    false    |    true     |             true             |
|    false    |    false    |            false             |

> ## **Exemplos**

```kotlin
val name = "Gabriel"
val age = 17

if (name == "Gabriel" && age == 17) {
    println("$name - $age")
}

// Saída: Gabriel - 17
```

**OU**

```kotlin
val name = "Gabriel"
val age = 17

if ((name == "Gabriel") and (age == 17)) {
    println("$name - $age")
}

// Saída: Gabriel - 17
```

<br>

```kotlin
val name = "Gabriel"
val age = 18

if (name == "Gabriel" || age == 17) {
    println("$name - $age")
}

// Saída: Gabriel - 18
```

**OU**

```kotlin
val name = "Gabriel"
val age = 18

if ((name == "Gabriel") or (age == 17)) {
    println("$name - $age")
}

// Saída: Gabriel - 18
```
