 # @NotBlank

> ## **Definição**

Verificar se um atributo do tipo `String` não contém um valor `null`, vazio (`""`) ou com apenas caracteres de espaço (`" "`).

É possível definir uma mensagem customizada a partir da propriedade `message`.

> ## **Exemplo**

```java
@NotBlank
private String name;
```

```java
@NotBlank(message = "O campo 'name' é obrigatório")
private String name;
```
