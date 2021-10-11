# Operadores lógicos no Kotlin

### Conceito

Função | Expressão | Comando
:----: | :-------: | :-----:
e | `&&` | `(expressão1) and (expressão2)`
ou | `||` | `(expressão1) or (expressão2)`

* Quando utiliza-se o comando, é recomendado colocar a expressão entre parênteses

### Exemplos

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