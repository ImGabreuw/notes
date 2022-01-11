# @RequestParam

> ## **Definição**

`@RequestParam` serve para mapear os parâmetros da requisição para o argumento do método com essa anotação.

> ## **Sintaxe**

```java
@RequestParam(name = [nome do parâmetro na requisição]) // parâmetro do método
```

**OBS**: nas versões mais recente do Spring, o atributo `name`, se não for informado, é definido a partir do nome do parâmetro do método anotado com `@RequestParam`.

> ## **Exemplo**

```java
@GetMapping(path = "/animes")
public ResponseEntity<List<Anime>> findByTitle(
      @RequestParam String title
) {
    return ResponseEntity
            .ok()
            .body(animeService.findByTitle(title));
}
```

> `@RequestParam String title` é equivalente a `@RequestParam(name = "title") String title`