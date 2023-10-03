# Events Stream

### Representação reativa de um fluxo de eventos

* **Função**: tratar de forma diferente com base em uma **requisição e resposta de um *media type* específico**

* **Sintaxe**

  * `.interval(...)`

    * **Função**: intervalo entre cada resposta (*stream*) enviada para o cliente

    * **Parâmetro(s)**

      * **Duration**: delay entre cada envio de resposta

  * `.zip(...)`

    * **Função**: enviar vários fluxos de dados (*stream*), com um intervalo específico (definido no `.interval(...)`),  até que todos os dados do evento seja carregados e enviados para o cliente

    * **Parâmetro(s)**

      * **Publisher<? extends Long>**: intervalo de tempo entre cada envio de um fluxo de dados 

      * **Publisher<? extends T>**: objeto(s) que serão enviados para o cliente

        > **T** = Classe do objeto a ser enviado

* **Exemplo** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

  ```java
  @GetMapping(
          path = "/events",
          produces = TEXT_EVENT_STREAM_VALUE
  )
  public Flux<Tuple2<Long, Playlist>> findByEvents() {
      Flux<Long> interval = Flux.interval(Duration.ofSeconds(10));
      Flux<Playlist> events = PLAYLIST_SERVICE.findAll();

      log.info("Events passou aqui");

      return Flux.zip(interval, events);
  }
  ```