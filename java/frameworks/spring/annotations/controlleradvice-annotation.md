# @ControllerAdvice

> ## **Definição**

A anotação `@ControllerAdvice` é responsável por definir a classe anotada como um *Spring Bean*, além de ter uma semântica melhor para classes que tratam os erros na aplicação.

> ## **Exemplo**

```java
@ControllerAdvice
public class RestExceptionHandler {
}
```