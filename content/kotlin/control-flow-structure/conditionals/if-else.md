# Operador `if-else`

> ## **Definição**

O operador `if-else` como expressão de linha única não utiliza a palavra reservada `return` e nem chaves (não tem bloco)

O operador `if-else` como expressão de múltiplas linhas não é necessário utilizar a palavra `return`, mas para isso o valor a ser retornado deve estar na **última linha do bloco**.

> ## **Sintaxe**

```kotlin
if ([condição]) {
  // Código quando a condição for verdadeira
} else if ([condição]) {
  // Código quando a condição for verdadeira
} else {
  // Código quando nenhuma condição for verdadeira
}
```

> ## **Exemplo**

### **`if-else` de linha única**:

```kotlin
val age = 17

val result = if (age < 18) "You are under age." else "You are of age."
```

### **`if-else` de múltiplas linhas**

```kotlin
val minValue = if (a > b) {
  println("b($b) é o menor valor")
  b
} else if (a < b) {
  println("a($a) é o menor valor")
  a
} else {
  println("Os valores são iguais")
  a
}
```