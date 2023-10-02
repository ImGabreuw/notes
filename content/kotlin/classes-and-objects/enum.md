# Enum

> ## **Definição**

É um **agrupamento de constante**.

A palavra `enum` só é considerado uma palavra reservada somente se vier acompanhada da palavra reservada `class`, por isso essa palavra é denominada **soft-keyword**.

Por convenção, a nomenclatura de uma constante é definido por todas as letras em maiúscula.

É possível **declarar atributos e métodos** dentro do corpo do `enum`, mas para isso é necessário adicionar `;` após declarar as constantes, como no [seguinte exemplo](#exemplo).

> ## **Soft keyword `enum`**

### `enum class`

Declaração de um **classe enum**:

```kotlin
enum class Cor {
  VERMELHOR,
  LARANJA,
  AMARELO,
  VERDE,
  AZUL
}
```

### `enum`

Pode ser utilizado como nome de variável, método, etc:

```kotlin
val enum = "abc"
```

> ## **Exemplo**

```kotlin
enum class Cor(
  val vermelho: Int,
  val verde: Int,
  val azul: Int
) {

    VERMELHO(255, 0, 0),
    LARANJA(255, 165, 0),
    AMARELO(255, 255, 0),
    VERDE(0, 255, 0),
    AZUL(0, 0, 255); // ";" é obrigatório para separação dos atributos e métodos

    fun rgb() = ((vermelho * 256 + verde) * 256 + azul)

}
```