# *Null Safety*

> ## _Nullability_

### **Definição**

Qualquer tipo pode ser `null`, porém isso deve ser explicito na declaração de variável. Dessa forma, no Kotlin, isso é feito através do uso do ponto de interrogação (`?`) após o tipo.

A inferência de tipo não atribui _nullability_.

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