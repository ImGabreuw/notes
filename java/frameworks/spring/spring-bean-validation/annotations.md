# Anotações no Spring Bean Validation

> ## **`@NotBlank`**

### **Definição**

Verificar se um atributo do tipo `String` não contém um valor `null`, vazio (`""`) ou com apenas caracteres de espaço (`" "`).

É possível definir uma mensagem customizada a partir da propriedade `message`.

### **Exemplo**

```java
@NotBlank
private String name;
```

```java
@NotBlank(message = "O campo 'name' é obrigatório")
private String name;
```

> ## **`@Size`**

### **Definição**

Verificar se um atributo do tipo `String` ou uma `Collection` contém uma determinada quantidade de caracteres ou elementos.

É possível definir uma mensagem customizada a partir da propriedade `message`.

### **Exemplo**

```java
@Size(max = 60, message = "O campo 'name' deve ter no máximo 60 caracteres")
private String name;
```

> ## **`@Email`**

### **Definição**

Verificar se um atributo do tipo `String` contém um e-mail válido.

É feito a checagem apenas da sintaxe básica: `@` e um domínio válido (**Exemplo**: `gmail.com`)

### **Exemplo**

```java
@Email
private String email;
```