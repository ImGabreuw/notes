# Visibilidade de funções e variáveis

> Pelo Go ser uma linguagem case-sensitive, a nomenclatura é muito importante.

> ## **Função exportada (funções públicas)**

### **Definição**

A 1º letra do nome da função em **maiúsculo**.

### **Exemplo**

```go
func Soma(a int, b int) int {
  return a + b
}
```

### **OBS**

É uma boa prática **documentar as função exportadas**.

```go
// Soma <descrição sucinta sobre o que ela faz>
func Soma(a int, b int) int {
  return a + b
}
```

> ## **Função não exportada (funções privadas)**

### **Definição**

A 1º letra do nome da função em **minúsculo**.

### **Exemplo**

```go
func soma(a int, b int) int {
  return a + b
}
```

> ## Variável / atributo / `type`

A regra de nomenclatura das funções é valida também para os **métodos** (funções de objeto), **`type`**, **variáveis** e **atributos**.