# Classes no Kotlin

### Classe

* Possui atributos e métodos

* Abstração de algo do mundo real e representa algo na aplicação

* A partir de uma classe se cria vários objetos

> Classe = "molde" para criar novos objetos

### Público e privado

* São modificadores de acesso

### *Outer class* e *inner class*

```kotlin
class Pessoa {
    var nome: String = "Jether"
    var cpf: String = "123.125.323-31"

    inner class Endereco {
        var rua: String = "Rua teste"
    }
}
```

* **`outer class`** = Pessoa
* **`inner class`** = Endereco

* Acessar um atributo de uma **`inner class`**

  ```kotlin
  val pessoa = Pessoa()

  println(pessoa.Endereco().rua ) // Rua teste
  ```

### Membros

* **Membros** = atributos e funções de uma classe

  ```kotlin
  class Pessoa {
      var nome: String = "Jether"
      var cpf: String = "123.125.323-31"

      private set

      constructor() // Construtor secundário

      fun unirNomeComCPF() = "$nome - $cpf"
  }
  ```

* `private set` = modificar o acesso do setters para privado, ou seja, esse atributo não poderá ser alterado após sua instanciação

  ```kotlin
  class Pessoa {
      var nome: String = "Jether"

      var cpf: String = "123.125.323-31"

      private set
  }
  ```