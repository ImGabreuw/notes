# ObjectMapper

> ## **Definição**

É a classe responsável pelo **mapeamento de um objeto Java para JSON** e vice-versa.

> ## **Métodos**

### **`writeValue`**

Converter um objeto Java em JSON e registrar o resultado em um arquivo (definido como argumento).

### **`readValue`**

Converter JSON em um objeto Java.

> ## **Exemplos**

```java
public class User {

  private Long id;
  private String name;

  // constructors, getters e setters
}
```

### **Objeto Java para JSON**

```java
ObjectMapper objectMapper = new ObjectMapper();
User user = new User(1, "Roberto");

objectMapper.writeValue(new File("users.json"), user);
```

### **JSON para objeto Java**

```java
ObjectMapper objectMapper = new ObjectMapper();
String json = "
  {
    \"id\": 1,
    \"name\": \"Roberto\"
  }
  "

User user = objectMapper.readValue(json, User.class);
```
