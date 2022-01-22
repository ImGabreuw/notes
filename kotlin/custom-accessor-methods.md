# Métodos acessores customizados

> ## **Definição**

São como os métodos `getters` e `setters` com uma implementação customizada neles.

É possível declarar um método acessor por meio das palavras reservada `get` e `set` (é necessário declarar uma variável) ou a partir de uma função.

> **OBS**: ao declarar um método acessor via função, essa função é computado toda vez que for chamada. Já no caso de utilizar as palavras reservadas, o retorno é calculado apenas 1 vez e então armazenada na variável (referente à esse método acessor).

> ## **Sintaxe**

```kotlin
[variável]
    get() {
      // implementação
    }

    set([valor]) {
      // implementação
    }
```

```kotlin
[função] {
    // implementação
}
```

> ## **Exemplo**

### **Método acessor via `get`**:

```kotlin
class Retangulo(
  val altura: Int,
  val largula: Int
) {
  val isQuadrado: Boolean
      get() = altura == largula
}
```

### **Método acessor via função**:

```kotlin
class Retangulo(
  val altura: Int,
  val largula: Int
) {
  fun isQuadrado(): Boolean = altura == largula
}
```