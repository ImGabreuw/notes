# @Transactional

> ## **Definição**

Enquanto o método (anotado com `@Transactional`) não for processado, não será efetuado a(s) alteração(ões) no banco de dados.

Recomendado seu uso em casos de métodos que acessam o banco de dados e que podem lançar um erro durante a execução da query.

**IMPORTANTE**: essa anotação só tem suporte para tabelas que possuem o [**InnoDB**](../../../../database/mysql/innodb-engine.md) como *engine*.

> ## **Vantagens**

* Maior segurança na execução das query (evita a inconsistência dos dados)

> ## **Propriedades**

### **rollbackFor**

* **Definição**: por padrão, `@Transactional` só trata (*rollback*) as exceções não checadas (`? extends RuntimeException`).

* **Exemplo**

  ```java
  @Transactional(rollbackFor = Exception.class)
  // Método que pode lançar um exceção checada
  ```

> ## **Sintaxe**

```java
@Transactional
// Método
```

> ## **Exemplo**

```java
@Transactional
public Anime save(AnimePostRequestBody animePostRequestBody) {
    return animeRepository.save(
            AnimeMapper.INSTANCE.toAnime(animePostRequestBody)
    );
}
```
