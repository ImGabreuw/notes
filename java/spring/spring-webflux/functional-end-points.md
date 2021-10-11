# Criação de end-points funcionais com Spring WebFlux

### Introdução

* Webflux necessita de 2 componentes para trabalhar com *end-points*, no estilo funcional:

  * **Router**

  * **Handler**

### Router

* **Definição**: responsável pelo roteamento de todas as requisições HTTP para o *Handler*

* **Mapeamento das rotas (*end-points*) da aplicação**

  * **Sintaxe**

    * `RouterFunctions`: Classe do Spring para criar *end-points* de forma funcional

    * `.route(...)`

      * **Função**: criação de uma rota (*end-point*) na aplicação

      * **Necessita de 2 parâmetros**

        * `RequestPredicate`: quando a requisição combinar com o predicado, o end-point será acionado

        * `HandlerFunction`: *handler* responsável por fornecer a resposta para a requisição

      * **OBS**: `.andRoute(...)` é igual ao `.route(...)`, porém ele é utilizado para encadear várias rotas

  * **Exemplo** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

    ```java
    @Configuration
    public class PlaylistRouter {

        @Bean
        public RouterFunction<ServerResponse> route(PlaylistHandler handler) {
            return RouterFunctions
                    .route(
                            GET("playlists").and(accept(APPLICATION_JSON)),
                            handler::findAll
                    )
                    .andRoute(
                            GET("/playlists/{id}").and(accept(APPLICATION_JSON)),
                            handler::findById
                    )
                    .andRoute(
                            POST("/playlists").and(accept(APPLICATION_JSON)),
                            handler::save
                    );
        }

    }
    ```

### Handler

* **Definição**: determinar métodos e o formato da resposta para uma regra de negócio (busca, salvamento, etc)

* **Exemplos**

  * **Resposta simples de um *Handler*** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

    ```java
    @Component
    @RequiredArgsConstructor(onConstructor = @__(@Autowired))
    public class PlaylistHandler {
        
        private final PlaylistService PLAYLIST_SERVICE;
        
        public Mono<ServerResponse> findAll(ServerRequest request) {
            return ServerResponse
                    .ok()
                    .contentType(APPLICATION_JSON)
                    .body(PLAYLIST_SERVICE.findAll(), Playlist.class);
        }
        
    }
    ```

  * **Obter o *path variable* de uma *request* do *handler*** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

    ```java
    @Component
    @RequiredArgsConstructor(onConstructor = @__(@Autowired))
    public class PlaylistHandler {
        
        private final PlaylistService PLAYLIST_SERVICE;
        
        public Mono<ServerResponse> findById(ServerRequest request) {
          String id = request.pathVariable("id");

          return ServerResponse
                  .ok()
                  .contentType(APPLICATION_JSON)
                  .body(PLAYLIST_SERVICE.findById(id), Playlist.class);
        }
        
    }
    ```

  * **Obter o *body* de uma *request* do *handler*** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

    ```java
    @Component
    @RequiredArgsConstructor(onConstructor = @__(@Autowired))
    public class PlaylistHandler {
        
        private final PlaylistService PLAYLIST_SERVICE;
        
        public Mono<ServerResponse> save(ServerRequest request) {
          Mono<Playlist> playlist = request.bodyToMono(Playlist.class);

          return ServerResponse
                  .created(request.uri())
                  .contentType(APPLICATION_JSON)
                  .body(
                          fromPublisher(
                                  playlist.flatMap(PLAYLIST_SERVICE::save),
                                  Playlist.class
                          )
                  );
          }
        
    }
    ```