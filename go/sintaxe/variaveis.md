# Variáveis no Go

> ## **Declaração de uma variável**

### **Sintaxe**

```go
var [nome da variável] [tipo]
```

### **Exemplo**

```go
var lang string
```

> ## Atribuição de uma valor a uma variável

### **Sintaxe**

```go
[nome da variável] = [valor]
```

### **Exemplo**

```go
var lang string
lang = "Go"
```

> ## **Declarações de variáveis curtas (ou shorthand)**

### **Sintaxe**

```go
[nome da variável] := [valor]
```

> Ao usar `:=`, o Go já infere o tipo da variável com base no valor atribuído a ela.

### **Exemplo**

```go
lang := "Go" // tipo = string
lang = "JavaScript"
```
