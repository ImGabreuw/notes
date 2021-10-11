# Erros no Go

### Erro

* Não existe `try-catch`

* O error é tratado logo após a chamada de um método. caso o mesmo tenha como retorno um `error`

* Por convenção, o nome dado a uma variável que recebe um erro é `err`

* **Exemplo**

  ```go
  func main() {

    result, err := soma(7, 2)

    if err != nil {
      log.Fatal(err.Error())
    }

    fmt.Println(result)

  }

  func soma(x int, y int) (int, error) {
    result := x + y

    if result > 10 {
      return 0, errors.New("total maior que 10")
    }

    return result, nil
  }
  ```

### Tratamento de um erro

* O tratamento de um erro é feita a partir da verificação da variável `err`. Caso `err` não esteja vazia (`nil`) é porque foi retornado um erro de uma função ou método

```go
if err != nil {
  // Tratamento do erro
}
```

### Ignorar o tratamento de um erro

* Usa-se o *blank identifier* (`_`) para ignorar um erro

* **Exemplo**

  ```go
  func main() {

    result, _ := soma(7, 2)

    fmt.Println(result)

  }

  func soma(x int, y int) (int, error) {
    result := x + y

    if result > 10 {
      return 0, errors.New("total maior que 10")
    }

    return result, nil
  }
  ```