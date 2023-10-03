# @Valid

> ## **Definição**

A anotação `@Valid` serve para realizar as validações de cada campo de um objeto com alguma anotação de validação.

> ## **Vantagens**

* Integridade nos dados

> ## **Exemplo**

```java
// Person.java

public class Anime {

  @NotBlank
  private String title;

  // Construtores, getters e setters
}

// AnimeController.java
@PostMapping
public ResponseEntity<Anime> save(
        @RequestBody @Valid Anime anime
) {
    return ResponseEntity
            .status(HttpStatus.CREATED)
            .body(animeService.save(anime));
}
```