# Repositório JPA do MongoDB

### ReactiveMongoRepository

* **Características**

  * Interface de repositório específica do Mongo com suporte reativo

  * Fornece todas as operações CRUD

* **Implementação**: [SimpleReactiveMongoRepository](https://docs.spring.io/spring-data/mongodb/docs/current/api/org/springframework/data/mongodb/repository/support/SimpleReactiveMongoRepository.html)

* **Exemplo**

  > **Fonte**: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux)

  ```java
  public interface PlaylistRepository extends ReactiveMongoRepository<Playlist, String> {}
  ```