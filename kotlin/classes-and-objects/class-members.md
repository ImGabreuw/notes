# Membros

> ## **Definição**

Os membros são os **atributos** e **funções** de uma classe.

> ## **Exemplo**

```kotlin
class Pessoa {
    var nome: String = "Jether"
    var cpf: String = "123.125.323-31"

    private set

    constructor() // Construtor secundário

    fun unirNomeComCPF() = "$nome - $cpf"
}
```

> ## Atributos

### **Visibilidade**

`private set`: modificar o acesso do setters para privado, ou seja, esse atributo não poderá ser alterado após sua instanciação

```kotlin
class Pessoa {
    var nome: String = "Jether"

    var cpf: String = "123.125.323-31"

    private set
}
```

### **Acesso**

Para acessar um atributo de uma classe, basta utilizar a notação `.` (ponto) após a variável que armazena uma instância dessa classe:

```kotlin
val pessoa = Pessoa("Jether")

println("Pessoa: ${pessoa.nome}") // Pessoa: Jether
```