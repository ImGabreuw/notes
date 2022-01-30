# Variáveis

> ## **Definição**

Variáveis são uma forma de **representar um valor ou expressão na memória**.

Existem 2 tipos de variáveis no Kotlin:

- As **variáveis mutáveis**, declaradas a partir da palavra reservada `var`

- As **variáveis imutáveis**, declaradas através de palavra reservada `val`

O compilador pode inferir o tipo da variáveis com base no valor atribuída a ela.

> ## **`var`**

### **Definição**

Armazena um **valor mutável**, ou seja, um valor definido e alterado tem tempo de execução.

**Padrão de nomenclatura**: camelCase (**Exemplo**: `minhaVariavel`)

### **Exemplo**

```kotlin
var age = 22
```

```kotlin
var age: Int?
age = null
age = 22
```

> ## **`val`**

Armazena um **valor imutável**, ou seja, um valor uma vez definida, não é passível de ser alterada em tempo de execução.

Similar a uma variável definida com `final` no Java.

**Padrão de nomenclatura**: camelCase (**Exemplo**: `minhaVariavel`)

### **Exemplo**

```kotlin
val age = 22
```

```kotlin
val age: Int?
age = null
// OU
age = 22
```

> ## **`const val`**

Armazena uma **valor imutável**.

Variáveis declaradas com `const val` armazenam valores que só podem ser consultados em tempo de execução.

**Padrão de nomenclatura**: snakecase (**Exemplo**: `MINHA_CONSTANTE`)

### **Exemplo**

```kotlin
const val MIN_AGE = 16
```

```kotlin
const val MAX_AGE = 68
```

> ## **Prevenção de erros na declaração de variáveis**

- **Sem declarar um tipo explicitamente ou implicitamente a uma variável**

  - **Problema**

    ```kotlin
    var age
    age = 90 // ERRO: "Esta variável deve ter uma declaração de tipo ou ser inicializada"
    ```

  - **Solução**

    ```kotlin
    var age = 90 //✅
    ```

    ```kotlin
    var age: Int
    age = 90 //✅
    ```

  > **Conclusão**: uma variável **não pode** ser declarada **sem tipo e sem atribuição**

- **Mudar o tipo de uma mesma variável**

  - **Problema**

    ```kotlin
    var year = "Ano" // inferência de tipo: String
    year = 2021 // ERRO: "The integer literal does not conform to the expected type String"
    ```

  - **Solução**

    ```kotlin
    var year = "Ano"
    year = 2021.toString() //✅
    ```

  > **Conclusão**: uma variável com **inferência de tipo** só receberá **valores do mesmo tipo que sua primeira atribuição**
