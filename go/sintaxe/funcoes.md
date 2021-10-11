# Função no Go

### Função com 1 tipo de retorno

* **Sintaxe**

  ```go
  func <nome da função>(<parâmetro(s)>) <tipo de retorno> {
    // Código

    return <retorno>
  }
  ```

* **Exemplo**

  ```go
  func Soma(a int, b int) int {
    return a + b
  }
  ```

### Função com múltiplos tipos de retorno

* **Sintaxe**

  ```go
  func <nome da função>(<parâmetro(s)>) <tipos de retorno> {
    // Código

    return <retorno(s)>
  }
  ```

  > Geralmente, esse tipo função retorno 1 ou + valor(es) e 1 possível erro

* **Exemplo**

  ```go
  func Soma(a int, b int) (int, error) {
    if a < 0 && b < 0 {
      return 0, errors.New("Número negativo")
    }

    return a + b, nil
  }
  ```

### Funções anônimas

* **Sintaxe**

  ```go
  func(<parâmetro(s)>) <tipo de retorno> {
      // Código
  }
  ```

* **Exemplo**

  ```go
  anonymousFunction := func() int {
      return 1
  }

  fmt.Println(anonymousFunction()) // 1
  ```

### Função anônima encadeada

```go
resultado := func(x ...int) func() int {
  	result := 0
  	
  	for _, value := range x {
  		result += value
  	}
  	
  	return func() int {
  		return result * result
  	}
  }

```

> No caso acima, a função anônima retorna uma outra função anônima (`func() int {..}`)

<br>

```go
fmt.Println(resultado(10, 10, 10)) // 0x497860
```

> Ao chamar apenas a 1º função (`(...)`), será impresso a referência dela

<br>

```go
fmt.Println(resultado(10, 10, 10)()) // 900
```

> Para imprimir o resultado da 2º função é necessário também encadear os chamamentos das funções (`(...)(...)`)

* **Conclusão**

  ```go
  resultado(10, 10, 10)()
  ```
  
  **A sintaxe acima, pode parecer estranho, mas ela é comporta pelos seguintes passos:**

  ```go
  <variável>(<argumentos da 1º função>)(<argumentos da 2º função>)
  ```

  > `<variável>` é o nome da variável que armazena a função a função anônima



* **Imprimir a o resultado da função anônima**

### Função *variadic* (`...`)

* Uma função *variadic* aceita infinitos argumentos

* Em outras linguagens de programação é dado o nome de *varargs*

* **IMPORTANTE**

  * `...` deve ser o último parâmetro da função/método

  * **Forma errada**

    ```go
    func main() {
      fmt.Println(Somar(1, 2, 3, 4, 5, 6, 7, 8, "ola"))
    }

    func Somar(valores ...int, a string) (int, string) {
      resultado := 0

      for _, value := range valores {
        resultado += value
      }

      return resultado, a
    }
    ```

  * **Forma certa**

    ```go
    func main() {
      fmt.Println(Somar("Resultado:", 1, 2, 3, 4, 5, 6, 7, 8))
    }

    func Somar(a string, valores ...int) (string, int) {
        resultado := 0

        for _, value := range valores {
          resultado += value
        }

        return a, resultado
    }
    ```

* **Exemplo**

  ```go
  func main() {
    result := somaTudo(1,2, 3, 4, 5, 6, 7, 8, 9, 10)

    fmt.Println(result)
  }

  func somaTudo(x ...int) int {
    resultado := 0

    for _, value := range x {
      resultado += value
    }

    return resultado
  }
  ```

### Importar funções

* **Sintaxe**

  ```go
  import "nome-da-aplicacao/pacotes/..."
  ```

* **Exemplo**

  ```go
  package math

  func Soma(a int, b int) int {
      return a + b
  }
  ```

  ```go
  package main

  import (
    "fmt"
    "variaveis-tipos-e-pacotes/math"
  )

  func main() {
    resultado := math.Soma(1, 1)
    fmt.Printf(resultado) // 2
  }
    ```