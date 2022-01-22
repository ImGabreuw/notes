# Classes

> ## **Contexto: Programação Orientada a Objetos**

Também conhecido como *POO*, é um paradigma de programação baseado no conceito de **"objetos"**.

Objetos podem conter **dados** (atributos) e **procedimentos** (métodos) e são elementos fundamentais na construção de uma solução.

> ## **Definição**

Possui atributos e métodos (características em comum de um conjunto de objetos)

**Objetos são instâncias de classes**

Um objeto é uma **abstração de algo** (fato ou entidade) do mundo real.

**OBS**: Uma classe é como "molde" para criar novos objetos.

> ## **Sintaxe**

```kotlin
class [nome da classe](
  [atributos]
) {
  [métodos]
}
```

> ## **Exemplo**

```kotlin
class Pessoa(
    val nome: String,
    val idade: Int
)
```

Para instância um classe basta colocar o nome da classe, e em seguida `()` (não é necessário utilizar o `new` como no Java):

```kotlin
val  pessoa = Pessoa()
```