# Operações de incremento e decremento

### Definição

* Operação para aumento e diminuir um número de 1 em 1

* É uma forma simplificada de `+= 1` e `-= 1`

* Possuem 2 formas: `prefix` e `postfix`

### Incremento

* Operador incremento = `++`

* Incrementar um número é somar 1 ao valor atual

* É o "substituto" do `+= 1`

* **Exemplo**

  ```kotlin
  var num = 3

  num++  // 4
  // OU
  num += 1 // 4
  ```

### Decremento

* Operador decremento = `--`

* Decrementar um número é subtrair 1 do valor atual

* É o substituto do `-= 1`

* **Exemplo**

  ```kotlin
  var num = 3

  num--  // 3
  // OU
  num -= 1  // 3
  ```

<br>

---

# Forma de *prefix*

### Definição

* O valor é alterado antes de ser usado

### Incremento como `prefix`

* O operador de incremento (`++`) vem antes do nome da variável

* **Exemplo**

  ```kotlin
  var a = 10
  val b = ++a

  println(a)  // 11
  println(b)  // 11
  ```

  > **Explicação**: primeiro, o valor da variável `a` é aumentado em `1` e, em seguida, seu valor é atribuído à variável `b`. Então, `a` e `b` são 11

### Decremento como `prefix`

* O operador de decremento (`--`) vem antes do nome da variável

* **Exemplo**

  ```kotlin
  var a = 10
  val b = --a

  println(a)  // 9
  println(b)  // 9
  ```

  > **Explicação**: primeiro o valor da variável `a` é diminuído em `1`, e então seu valor é atribuído à variável `b`. Portanto, `a` e `b` são 9

<br>

---

# Forma de *postfix*

### Definição

* O valor é alterado após ser usado

### Incremento como `postfix`

* O operador de incremento (`++`) vem depois do nome da variável

* **Exemplo**

  ```kotlin
  var a = 10
  val b = a++

  println(a)  // 11
  println(b)  // 10
  ```

  > **Explicação**: primeiro, o valor da variável `a` é atribuído à variável `b` e, em seguida, seu valor é aumentado em `1`. Então, `a` é 11 e `b` é 10

### Decremento como `postfix`

* O operador de decremento (`--`) vem depois do nome da variável

* **Exemplo**

  ```kotlin
  var a = 10
  val b = a--

  println(a)  // 9
  println(b)  // 10
  ```

  > **Explicação**: primeiro, o valor da variável `a` é atribuído à variável `b` e, em seguida, seu valor é diminuído em `1`. Então, `a` é 10 e `b` é 9