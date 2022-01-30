# _Smart Cast_

> ## **Definição**

O compilador faz o _cast_ automático de uma variável após a verificação de um determinado tipo. Sendo assim, não é preciso fazer o cast explícito, como no Java:

```java
// Java
if (object instanceof Person) {
  Person person = (Person) object;
}
```

```kotlin
// Kotlin
if (object is Person) {
  val person: Person = object
}
```

A Verificação de tipos é feito a partir da palavra reservada `is` (equivalente ao `instanceof` do Java).

A palavra reservada `as` serve para realizar a atribuição de um tipo para outro (muitas das vezes um "cast forçado").

> ## **Exemplo**

### **Smart Cast:**

```kotlin
interface Expressao

class Numero(val valor: Int) : Expressao

class Soma(val equerdo: Expressao, val direito: Expressao): Expressao

fun avaliacao(expressao: Expressao): Int {
    if (expressao is Numero) {
        return expressao.valor
    }

    if (expressao is Soma) {
        return avaliacao(expressao.equerdo) + avaliacao(expressao.direito)
    }

    throw IllegalArgumentException("Expressão é desconhecida")
}

fun main() {
    // ((1 + 2) + 4)
    val avaliacao = avaliacao(
        Soma(
            Soma(Numero(1), Numero(2)),
            Numero(4)
        )
    )
    println(avaliacao)
}
```

### **Cast explícito:**

```kotlin
if (valor is Int) {
  val numeroInteiro = valor as Int // Desnecessário
}
```
