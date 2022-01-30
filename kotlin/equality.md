# Igualdade

> ## **Igualdade estrutural**

### **Definição**

A igualdade estrutural é verificada pelo operador `==` e sua negação é `!=`.

A função `.equals()` exerce a mesma função de `==`.

**DOCUMENTAÇÃO**: [clique aqui](https://kotlinlang.org/docs/equality.html#structural-equality)

### **Sintaxe**

```kotlin
[valor 1] == [valor 2]
```

### **Exemplo**

```kotlin
println(2 == 2) // true
```

```kotlin
println(2 != 2) // false
```

> ## **Igualdade Referencial**

### **Definição**

A igualdade referencial é verificada pelo operador `==` e sua negação é `!==`.

Esse operador verifica se 2 objetos apontam para o mesmo local na memória.

Essa expressão retorna um valor booleano, sendo `true` se os objetos estiverem armazenados no mesmo local na memória e `false` se não estiverem.

**DOCUMENTAÇÃO**: [clique aqui](https://kotlinlang.org/docs/equality.html)

### **Sintaxe**

```kotlin
[objeto 1] === [objeto 2]
```

### **Exemplo**

```kotlin
class Pessoa(val nome: String)

fun main() {
  val person1 = Pessoa("Gabriel")
  val person2 = Pessoa("Gabriel")
  
  // person1 e person2 são objetos diferentes, portanto referências distintas
  println(person1 === person2) // false
}
```

```kotlin
class Pessoa(val nome: String)

fun main() {
  val person1 = Pessoa("Gabriel")
  val person2 = Pessoa("Gabriel")
  
  // person1 e person2 são objetos diferentes, portanto referências distintas
  println(person1 !== person2) // true
}
```

> ## **OBS**

Para tipos primitivos (números, char, boolean) o operador `===` tem a mesma função do `==`.

```kotlin
val a = 12
val b = 12

println(a === b) // true
println(a == b) // true
```