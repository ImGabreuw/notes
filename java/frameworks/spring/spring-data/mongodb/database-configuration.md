# Configuração do MongoDB

### Configuração no `application.yaml`

* **Sintaxe da URI de conexão**

  `mongodb://<usuário>:<senha>@<host>:<porta>/<nome do banco de dados>` 

* **Exemplo**

  * **URI de conexão** (Fonte: [spring-webflux](https://github.com/Aprendendo-programacao/spring-webflux))

    ```yaml
    spring:
      data:
        mongodb:
          uri: mongodb://root:root@localhost:27017/api_rest_webflux
    ```

  * **Definição de cada componente de configuração do MongoDB**

    ```yaml
    spring:
      data:
          mongodb:
              host: localhost
              port: 27017
              database: api_rest_webflux 
              username: root
              password: root
    ```