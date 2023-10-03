# Função no Go

> ## **Função com 1 tipo de retorno**

### **Sintaxe**

```go
func [nome da função]([parâmetros...]) [tipo de retorno] {
  // Código ...

  return [retorno]
}
```

### **Exemplo**

```go
func Soma(a int, b int) int {
  return a + b
}
```

> ## **Função com múltiplos tipos de retorno**

### **Sintaxe**

```go
func [nome da função]([parâmetros...]) ([tipos de retorno... (separados por vírgula)]) {
  // Código ...

  return [retornos...]
}
```

> Geralmente, esse tipo função retorno 1 ou + valor(es) e 1 possível erro

### **Exemplo**

```go
func Soma(a int, b int) (int, error) {
  if a < 0 && b < 0 {
    return 0, errors.New("Número negativo")
  }

  return a + b, nil
}
```

> ## **Funções anônimas**

### **Sintaxe**

```go
func ([parâmetros...]) [tipo de retorno] {
  // Código ...

  return [retorno]
}
```

### **Exemplo**

  ```go
  anonymousFunction := func() int {
      return 1
  }

  fmt.Println(anonymousFunction()) // 1
  ```

> ## **Funções anônimas encadeadas**

### **Sintaxe**

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

> No caso acima, a função anônima retora uma outra função (`func() int`).

```go
fmt.Println(resultado(10, 10, 10)) // 0x497860
```

> Ao chamar apenas a 1º função (1º par de parênteses), será impresso a referência dela.

```go
fmt.Println(resultado(10, 10, 10)()) // 900
```

> Para imprimir o resultado da 2º função é necessário também encadear as invocações de cada função (`(...)(...)`).

```go
resultado(10, 10, 10)()
```

### **A sintaxe acima, pode parecer estranho, mas ela é composta pelos seguintes passos**

```go
[nome da variável]([argumentos da 1º função])([argumentos da 2º função])
```

> `[nome da variável]` é a variável que armazena a função anônima encadeada.

> ## **Função *variadic* (`...`)**

### **Definição**

Aceita infinitos argumentos.

Em outras linguagens de programação é dado o nome de *varargs*.

### **IMPORTANTE**

O operador `...` deve ser o último parâmetro da função/método

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

### **Exemplo**

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

> ## **Importar funções**

### **Sintaxe**

```go
import "[nome do projeto]/[pacotes]/..."
```

### **Exemplo**

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