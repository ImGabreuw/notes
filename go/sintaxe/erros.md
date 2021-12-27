# Erros e Tratamento de erros

> ## **Erros**

### **Definição**

Não existe o bloco `try-catch`.

O error é tratado logo após a chamada de um método/função, caso o mesmo tenha como retorno um `error`.

**OBS**: Por convenção, o nome dado a uma variável que armazena um erro é  `err`

### **Exemplo**

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

> ## **Tratamento de um erro**

### **Definição**

O tratamento de um erro é feita a partir da verificação da variável `err`. Caso `err` não esteja vazia (`nil`) é porque foi retornado um erro de uma função/método.

### **Exemplo**

```go
if err != nil {
  // Tratamento do erro
}
```

> ## **Ignorar um erro**

### **Definição**

Usa-se o *blank identifier* (`_`, *underline*) para ignorar um erro, ou seja, não tratá-lo.

### **Exemplo**

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