# *Outer class* e *Inner class*

```kotlin
class Pessoa {
  var nome: String = "Jether"
  var cpf: String = "123.125.323-31"

  inner class Endereco {
      var rua: String = "Rua teste"
  }
}
```

No exemplo acima, a classe `Pessoa` é *outer class* e a classe `Endereco` é a *inner class* (acompanhada com a palavra reservada `inner`).

Uma *inner class* armazena uma referência para um objeto de sua *outer class*, com isso é possível acessar/utilizar os membros da *outer class* na *inner class*

Acessar um atributo de uma *inner class*:

```kotlin
Pessoa().Endereco().rua // Rua teste
```