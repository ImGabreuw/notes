# Funções *single-line*

> ## **Definição**

As função de 1 linha têm apenas uma única expressão, além de ter o tipo de retorno inferido, logo é opcional defini-lo. 

Nesse tipo de função, não é necessário utilizar a palavra reservada `return`.

> ## **Exemplo**

### **Função com retorno explícito**

```kotlin
fun double(x: Int): Int = x * 2
```

### **Função com retorno implícito**

```kotlin
fun double(x: Int) = x * 2
```