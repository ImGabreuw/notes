# @ResponseStatus

> ## **`@ResponseStatus` em exceções customizadas**

### **Definição**

Deixar a API com exceções intuitivas para serem mais fáceis de se manipular no front-end.

**IMPORTANTE**: NUNCA deixar de tratar exceções, prefira utilizar `@ExceptionHandler`, `@ResponseStatus` ou logs

### **Exemplo**

```java
@ResponseStatus(code = HttpStatus.NOT_FOUND)
public class EntityNotFound extends RuntimeException {
    public EntityNotFound(String message) {
        super(message);
    }
}
```