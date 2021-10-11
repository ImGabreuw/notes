# Null Safety no Kotlin

### _Nullability_

* Qualquer tipo pode ser nulo, porém isso deve ser explicitado na declaração de variável através do uso da interrogação (`?`)

* A inferência de tipo não atribui _nullability_

* **Exemplos**

  * Atribuição correta do valor `null`

    ```kotlin
    var month: Int? = null 
    ```

  * Atribuição incorreta do valor `null`

    ```kotlin
    var day: Int = null // ERRO: Nulo não pode ser um valor de tipo não nulo Int
    ```