# Anotações do Spring Data MongoDB

### `@Document`

* **Função**: responsável pelo mapeamento entre o objeto e a estrutura do objeto no banco de dados

* **Exemplo**

  > **Fonte**: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux)
  ```java
  @Document
  public class Playlist {

      private String id;

      private String nome;

      // getters e setter
  }
  ```