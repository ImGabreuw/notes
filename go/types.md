# Tipos de dados no Go

> ## **Type**

### **Sintaxe**

```go
type [nome] [tipo]
```

### **Exemplo**

```go
type CarName string
type CarYear int

func main() {
    var carName CarName
    carName = "Fusion"
    fmt.Println(carName)

    var carYear CarYear
    carYear = 2020
    fmt.Println(carYear)
}
```

> ## **Struct**

### Definição

Uma `struct` pode ser comparada a uma classes, mas **CUIDADO** com essa comparação, pois o Go não é orientado a objetos.

### **Sintaxe**

```go
type [nome] struct {
    // Campos...
}
```

> Para acessar um campo da `struct`: `[nome da variável].[nome do campo]`.

### **Exemplo**

```go
type Car struct {
  CarName string
  CarYear int
}

func main() {
  car := Car{
      CarName: "Fusion",
      CarYear: 2020,
  }
  fmt.Println(car.CarYear)
  fmt.Println(car.CarName)
}
```

### **Métodos**

* **Definição**: são funções que estão ligadas a uma `struct`

* **Sintaxe**

  ```go
  func ([nome da variável] [nome da struct]) [nome do método[([parâmetros...) ([tipos de retorno...]) {
    // Código ...
  }
  ```

* **Exemplo**

  ```go
  func (car *Car) changeCarName()  {
    car.CarName = "Fusion2"
    fmt.Println(car.CarName)
  }

  func main() {
    car := Car{
        CarName: "Fusion",
        CarYear: 2020,
    }

    car.changeCarName() // Fusion2
  }
  ```

### **Composição de `struct`**

  ```go
  type Cliente struct {
    Nome  string
    Email string
    CPF   int
  }

  type ClienteInternacional struct {
    Cliente
    Pais string
  }
  
  cliete3 := ClienteInternacional{
		Cliente: Cliente{
			Nome:  "Davi",
			Email: "davi@gmail.com",
			CPF:   12312312300,
		},
		Pais: "EUA",
	}
	fmt.Printf("Nome: %s, Email: %s, CPF: %d, Pais %s\n", cliete3.Nome, cliete3.Email, cliete3.CPF, cliete3.Pais) // Nome: {Davi davi@gmail.com %!s(int=12332112300)}, Email: davi@gmail.com, CPF: 12332112300, Pais> EUA
  ```

  ```go
  type Cliente struct {
  	Nome  string
    Email string
    CPF   int
  }

  func (c Cliente) Exibe() {
    fmt.Println("Exibindo cliente pelo método: ", c.Nome)
  }

  type ClienteInternacional struct {
    Cliente
    Pais string
  }

  cliente1 := Cliente{
      Nome:  "Wesley",
      Email: "wesley@gmail.com",
      CPF:   12345678900,
    }
    fmt.Println(cliente1)

    cliente2 := Cliente{
      "Mari",
      "mari@gmail.com",
      98765432111,
    }
    fmt.Printf("Nome: %s, Email: %s, CPF: %d\n", cliente2.Nome, cliente2.Email, cliente2.CPF)

    cliente3 := ClienteInternacional{
      Cliente: Cliente{
        Nome:  "Davi",
        Email: "davi@gmail.com",
        CPF:   12312312300,
      },
      Pais: "EUA",
    }
    cliente1.Exibe() // Exibindo cliente pelo método:  Wesley
    cliente2.Exibe() // Exibindo cliente pelo método:  Mari
    cliente3.Exibe() // Exibindo cliente pelo método:  Davi
  ```

> ## **Interfaces**

### **Sintaxe**

```go
type [nome] interface {
    [nome da função]([parâmetros...]) [tipos retorno...]
}
```

### **Exemplo**

> **Declaração de uma `interface`**:

```go
type vehicle interface {
  start() string
}
```

> **Implementação da `interface` em uma `struct` vehicle**:

```go
func (car Car) start() string {
  return "Iniciou"
}
```

> Como a `Car` implementou a função `start()`, logo `Car` é um `Vehicle`.

```go
func acceptOnlyVehicleImplementation(car vehicle) {
  fmt.Println("É um veículo")
}

func main() {
  car := Car{
      CarName: "Fusion",
      CarYear: 2020,
  }

  acceptOnlyVehicleImplementation(car) // car é um veículo
}
  ```