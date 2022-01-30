# *Null Safety*

> ## **_Nullable Types_**

### **Definição**

Kotlin é uma linguagem considerada **null safety**, ou seja, visa eliminar os NPEs (`NullPointerException`). Então como solução foi implementado os `Nullable Types` que tem como indicar explicitamente se uma variável/propriedade aceita `null.`

É possível declarar uma variável/propriedade/retorno de função como _Nullable Type_ através do uso do ponto de interrogação (`?`) após o tipo.

A inferência de tipo não é realizada em valores `null`.

> ## **Exemplo**

### **Atribuição correta de valor `null`**

```kotlin
var month: Int? = null 
```

### **Atribuição incorreta de valor `null`**

```kotlin
var day: Int = null
```

> No caso acima, ocorre um erro de compilação, pois a atribuição de `null` só é permitida em variáveis do tipo *Nullable* (`?`).

> ## *Null safe calls*

### **Definição**

Para realizar chamadas de funções que retornam um **Nullable Type** de forma segura (**Nullable Safe Calls**) é utilizado o operador `?.`

Geralmente são úteis em chamadas em cadeia, caso uma propriedade for `null`, a cadeia é interrompida e retorna `null`.

Também pode ser usado em atribuições de variáveis, ou seja, se uma das propriedades for `null` a atribuição não é feita.

### **Exemplo**

```kotlin
val linguagem = "Kotlin"
println(linguagem.length) // 6
```

```kotlin
val linguagem = "Kotlin"
println(linguagem?.substring(0. 2).?length) // 3
```