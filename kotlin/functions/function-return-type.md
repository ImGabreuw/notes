# Tipos de retorno de funções

> ## `Unit`

### **Definição**

O tipo de retorno `Unit` é atribuído automaticamente em funções que não retornam nenhum valor útil.

`Unit` é equivalente ao `Void` no Java.

### **Exemplo**

```kotlin
fun olaMundo() {
  println("Olá mundo!")
}
```

```kotlin
fun olaMundo(): Unit {
  println("Olá mundo!")
  // 'return Unit' ou 'return' (opcional)
}
```