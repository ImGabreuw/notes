# Variáveis no Kotlin

### var

* **Valor mutável** (valor definido e alterado tem tempo de execução)

* **Padrão de nomenclatura**: camelcase (**Exemplo**: `minhaVariavel`)

* **Exemplo**

  ```kotlin
  var age = 22
  ```

  ```kotlin
  var age: Int?
  age = null
  age = 22
  ```

### val

* **Valor imutável** (valor definido, uma única vez, tem tempo de execução)

* Similar ao `final` no Java

* **Padrão de nomenclatura**: CamelCase (**Exemplo**: `minhaVariavel`)

* **Exemplo**

  ```kotlin
  val age = 22
  ```

  ```kotlin
  val age: Int?
  age = null
  // OU 
  age = 22
  ```

### const val

* **Valor imutável**

* Valor definido tem tempo de compilação, ou seja, esse valor só pode ser consultado

* **Padrão de nomenclatura**: snakecase (**Exemplo**: `MINHA_CONSTANTE`)

* **Exemplo**

  ```kotlin
  const val MIN_AGE = 16
  ```

  ```kotlin
  const val MAX_AGE = 68
  ```

### Prevenção de erros na declaração de variáveis

* **Sem declarar um tipo explicitamente ou implicitamente a uma variável**

  * **Problema**

    ```kotlin
    var age
    age = 90 // ERRO: "Esta variável deve ter uma declaração de tipo ou ser inicializada"
    ```

  * **Solução**

    ```kotlin
    var age = 90 //✅
    ```

    ```kotlin
    var age: Int
    age = 90 //✅
    ```

  * **Conclusão**: uma variável **não pode** ser declarada **sem tipo e sem atribuição**

* **Mudar o tipo de uma mesma variável**

  * **Problema**

    ```kotlin
    var year = "Ano" // inferência de tipo: String
    year = 2021 // ERRO: "The integer literal does not conform to the expected type String"
    ```

  * **Solução**

    ```kotlin
    var year = "Ano"
    year = 2021.toString() //✅
    ```

  * **Conclusão**: uma variável com **inferência de tipo** só receberá **valores do mesmo tipo que sua primeira atribuição**