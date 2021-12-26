# Introdução ao REST

> REST = Representational State Transfer (Transferência de Estado Representacional)

### Definição

* É um **estilo arquitetural** (NÃO é um protocolo) que define um conjunto de restrições e propriedades baseados no protocolo HTTP

### Curiosidade

* É uma das formas mais usadas para integrações de sistemas modernos. (utiliza verbos, código, cabeçalhos e URIs para compor uma API web)

### Recursos

* **Definição**: são representações dos modelos e/ou coleções de modelos que serão expostos aos clientes

* **Formas de representação de um recurso**

  * **JSON**

    * Mais utilizada no momento

    * **Exemplo**

      ```json
      {
        "id": 1,
        "name": "Han Solo"
      }
      ```

  * **XML**

    * **Exemplo**

      ```xml
      <character>
          <id>1</id>
          <name>Han Solo</name>
      </character>
      ```