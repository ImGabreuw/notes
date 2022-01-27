# Bloco `try-catch-finally`

> ## **Definição**

Esse conjunto de palavras reservadas servem para **tratar exceções**.

A **política de tratativa** varia de acordo com o contexto e aplicação, como por exemplo:

* Salvar em um arquivo de log

* Lançar uma outra excepção (geralmente customizada)

* Imprimir no console

* Realizar um *rollback*

* Política de retentativa

A utilização da palavra reservada `finally` é opcional. Geralmente essa palavra é usada para fechar conexão com banco de dados ou com `BufferedWriter` ou `BufferedReader`

> ## **Sintaxe**

```kotlin
try {
  // Código
} catch (e: Exception) {
  // Tratamento da exceção
}
```

```kotlin
try {
  // Código
} catch (e: Exception) {
  // Tratamento da exceção
} finally {
  // Código sempre executado
}
```

> ## **Exemplo**

```kotlin
fun lerIdade(): Int? {
  val reader = BufferedReader(
      FileReader(
          File("src/main/resources/idades.txt")
      )
  )

  return try {
      Integer.parseInt(reader.readLine())
  } catch (e: NumberFormatException) {
      null
  } finally {
      reader.close()
  }
}
```