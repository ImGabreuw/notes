# @ExceptionHandler

> ## **Definição**

A anotação `@ExceptionHandler` é responsável por captar toda vez que uma exceção (definido no argumento dela) for lança, e tratá-la por meio do método com essa anotação.

> ## **Vantagens**

* Maior segurança (não expõem os dados de *stacktrace* do erro para o cliente)

* Facilitar a trativa de erro para o consumidor da API

> ## **Sintaxe**

```java
@ExceptionHandler([exceção tratada por esse método])
// Método
```

* É uma boa prática utilizar o seguinte padrão de nomenclatura: `handle[nome da exceção]`

* Em projeto que utilização o padrão arquitetural REST, é recomendável utilizar a *wrapper class* `ResponseEntity`

> ## **Exemplo**

```java
@ExceptionHandler(EntityNotFoundException.class)
public ResponseEntity<ErrorMessage> handleEntityNotFoundException(EntityNotFoundException exception) {
  HttpStatus status = HttpStatus.NOT_FOUND;
  ErrorMessage errorMessage = new ErrorMessage();

  errorMessage.setStatus(status.value());
  errorMessage.setTime(LocaDateTime.now());
  errorMessage.setMessage("Entidade não encontrada.")

  return ResponseEntity
            .status(status)
            .body(exception);
}
```