# Ponteiros no Go

![](https://media.geeksforgeeks.org/wp-content/uploads/20190705160332/Pointers-in-Golang.jpg)

* **Variável = armazena um valor**

* **Ponteiro = armazena o endereço de memória** de um valor

### Operador `&`

* É utilizado antes do nome da variável

* Obter o endereço de memória de uma variável

* **Exemplo**

  ```go
  a := 10
  fmt.Println(&a) // 0xc00018c000
  ```

  > `0xc00018c000` é o **endereço de memória** onde o valor 10 está **alocado**

### Operador `*`

* É utilizado antes do nome da variável que armazena um endereço de memória

* Obter o valor do apontamento do ponteiro

* **Exemplo**

  ```go
  a := 10
  fmt.Println(&a) // 0xc00018c000

  var b *int = &a
  fmt.Println(b) // 0xc0000b6010
  ```

  > A variável `b` armazena um **endereço de memória** de um valor do **tipo `int`**

  <br>

  ```go
  a := 10
  var b *int = &a
  fmt.Println(*b) // 10

  *b = 50
  fmt.Println(*b) // 50
  ```

  > `*b = 50` = atribuir 50 como novo valor do apontamento do ponteiro `b`

  <br>

  ```go
  a := 10

  var b *int = &a
  *b = 50

  c := &a
  *c = 60

  fmt.Println(a)
  fmt.Println(*b)
  fmt.Println(*c)
  ```

  > Como `a`, `b` e `c` estão apontando para o mesmo endereço de memória (`0xc0000b6010`) logo, se o valor armazenado nesse endereço for alterado, todas as variáveis que apontam para ela também serão alteradas

### Operador `*` antes de um `type`

* É utilizado para definir o tipo do valor que o ponteiro faz referência

* **Exemplo**

  ```go
  a := 10
  var b *int = &a
  fmt.Println(*b) // 10
  ```

  > Ao colocar o `*` na frente de um ponteiro, é **recuperado o valor do apontamento** da variável `b`  que armazena o **endereço de memória do valor 10**

  <br>

  ```go
  func main() {
    a := 10

    fmt.Println(a) // 10
    alterarValor(&a)
    fmt.Println(a) // 15
  }

  func alterarValor(a *int) {
    *a = 15
  }
  ```

### Operador `*` e `struct`

* **Problema**: alteração de um atributo apenas no escopo local

  ```go
  type Carro struct {
    Name string
  }

  func (c Carro) andar() {
    c.Name = "BMW" // O atributo "Name" só foi alterado no escopo local (função "andar()")
    fmt.Println(c.Name, "andou!")
  }

  func main() {

    carro := Carro{
      Name: "Ford Ka",
    }

    carro.andar() // BMW andou!
    fmt.Println(carro.Name) // BMW andou!
  }
  ```

* **Solução**: alteração do valor no endereço de memória

  ```go
  type Carro struct {
    Name string
  }

  func (c *Carro) andar() {
    c.Name = "BMW" // a alteração do atributo se torna global, pois foi alterado o valor na memória
    fmt.Println(c.Name, "andou!")
  }

  func main() {

    carro := Carro{
      Name: "Ford Ka",
    }

    carro.andar()
    fmt.Println(carro.Name)
  }
  ```