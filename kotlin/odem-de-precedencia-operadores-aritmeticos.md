# Ordem de precedência dos operadores aritméticos

### Definição

* Alguns operadores tem prioridade em relação a outras

* A prioridade das operações deve ser levada em consideração ao executar um conjunto de expressões aritméticas

### Tabela de precedência

Prioridade (menor para o maior) | Operador | Exemplo
:-----------------------------: | :------: | :-----:
1 | Parênteses | `(expr)`
2 | Incremento/decremento como **postfix** | `expr++` e `expr--`
3 | Mais/menos e incremento/decremento como **prefix** | `-expr`, `++expr` e `--expr`
4 | Multiplicação, divisão e módulo | `*`, `/` e `%`
5 | Adição e subtração  | `+` e `-`
6 | Operações de atribuição | `=`, `+=`, `-=`, `*=`, `/=` e `%/`

### Exemplos

* **Exemplo 1**

  ```kotlin
  val a = 2
  var b = 3
  val c = a + 4 * --b  

  println(c)   // 10
  ```

* **Exemplo 2**

  ```kotlin
  var a = 5
  val b = 9
  val c = 3
  val d = a++ + (b / 2) - c - 4

  println(d)   // 2
  ```

  > **Explicação**: O decremento tem uma prioridade mais alta do que a multiplicação e adição, portanto, `--b` é calculado primeiro. Como na álgebra, os parênteses podem ser usados ​​para aumentar a prioridade de uma operação