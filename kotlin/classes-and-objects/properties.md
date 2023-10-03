# Propriedades

> ## **Contexto: Propriedades em Java**

A ideia de uma classe é encapsular dados e códigos que trabalham sobre esses dados dentro de uma única entidade.

O dado é armazenado em campos, que são geralmente privados (**encapsulamento**). Dessa foma, é possível acessá-los através de métodos acessores (**getters** e **setters**).

A combinação de **campo** e seu respectivo **método assessor** é frequentemente referenciado como uma **propriedade**.

> ## **Definição**

Funcionalidade de linguagem de primeira-classe.

A declaração de um campo de uma classe, no Kotlin, já vem com o seu respectivo método acessor.

> ## **Exemplo**

```kotlin
class Pessoa(
  val nome: String,
  val idade: Int,
  var isCasado: Boolean
)
```