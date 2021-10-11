# Anotações do Spring Data

### `@Id`

* **Função**: definir um atributo como a chave primário no banco de dados

* **Exemplo**

  > **Fonte**: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux)

  ```java
  public class Playlist {

      @Id
      private String id;

      private String nome;

      // getters e setter
  }
  ```