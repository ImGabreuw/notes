# ArrayList

> ## **Definição**

É uma das implementações da interface `List`.

> ## **Formas de criar um `ArrayList`**

### **Via construtor**

```kotlin
val arrayList = ArrayList<String>()

arrayList.add("Elemento 1")
arrayList.add("Elemento 2")
```

### **Via função `arrayListOf()`**

```kotlin
val arrayList = arrayListOf("Elemento 1", "Elemento 2")
```

> ## **Métodos**

### **`last()`**

Obter o último elemento da lista.

```kotlin
val arrayList = ArrayList<String>()

arrayList.add("Elemento 1")
arrayList.add("Elemento 2")

print(arrayList.last())
```