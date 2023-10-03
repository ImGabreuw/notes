# Classes públicas e privadas

> ## **Definição**

As palavras reservadas `public` e `private` são modificadores de acesso de classes (não apenas para elas), assim como no Java.

Por padrão, a visibilidade de toda classe no Kotlin é `public`, ou seja, é visível em qualquer local da aplicação.

> ## **Sintaxe**

Para modificar a visibilidade de uma classe para privada basta adicionar a palavra reservada `private` antes de `class`.

**OBS**: por padrão toda classe no Kotlin tem a visibilidade como `public`, logo não é necessário utilizá-la.

> ## **Exemplo**

### **Classe pública**:

```kotlin
class Person(val name: String)
```

### **Classe privada**:

```kotlin
private class Person(val name: String)
```