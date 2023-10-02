# Operador `when`

> ## **Definição**

É o substituto do `switch-case` do Java.

Esse operador é uma expressão, assim como o `if-else` e `?:`.

Não é necessário colocar a palavra reservada `break` no final de cada _branch_ (como no Java). Além disso, é possível combinar múltiplos valores, **separando com vírgula**, na mesma _branch_.

O operador `when` pode ou não receber um argumento e também é possível declarar uma variável entre os parênteses dele.

Esse operador permite a utilização de `in`, `!in`, `..` (_range_), `is` e de funções.

A _branch_ `else` é executada quando nenhuma das _branches_ anteriores for satisfeita, é equivalente ao `default` no Java.

> ## **Exemplo**

### **`when` com argumento:**

```kotlin
when (x) {
  1 -> print("x == 1")
  2 -> print("x == 2")
  else -> {
    print("x is neither 1 nor 2")
  }
}
```

### **`when` sem argumento:**

```kotlin
when {
  x.isOdd() -> print("x is odd")
  y.isEven() -> print("y is even")
  else -> print("x+y is odd")
}
```

### **_Branches_ com funções:**

```kotlin
when (x) {
  s.toInt() -> print("s encodes x")
  else -> print("s does not encode x")
}
```

### **_Branches_ com verificações de tipos:**

```kotlin
fun hasPrefix(x: Any) = when(x) {
  is String -> x.startsWith("prefix")
  else -> false
}
```

### **`when` com declaração de variável:**

```kotlin
fun Request.getBody() =
  when (val response = executeRequest()) {
    is Success -> response.body
    is HttpError -> throw HttpException(response.status)
  }
```
