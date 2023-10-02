# @Size

### **Definição**

Verificar se um atributo do tipo `String` ou uma `Collection` contém uma determinada quantidade de caracteres ou elementos.

É possível definir uma mensagem customizada a partir da propriedade `message`.

### **Exemplo**

```java
@Size(max = 60, message = "O campo 'name' deve ter no máximo 60 caracteres")
private String name;
```