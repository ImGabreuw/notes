# Endpoint Health

### Configuração

* **Mostrar todas as informações de saúde da aplicação**

  ```yaml
  management:
    endpoint:
      health:
        show-details: always
  ```

### URL do endpoint Health

* **Padrão**: `/actuator/health`

* É possível alterar o URL base (`/actuator`) por meio do arquivo de configuração (`application.yaml`)

  * **Sintaxe**

    ```yaml
    management:
      endpoints:
        web:
          base-path: <caminho>
    ```

  * **Exemplo**

    ```yaml
    management:
      endpoints:
        web:
          base-path: /admin
    ```

    > Caminho: `/admin/health`

### Estrutura da resposta para `/actuator/health`

Caminho JSON | Tipo | Descrição
:-----: | :--: | :-------:
status | `String` | Status geral da aplicação
components | `Object` | Componentes monitorados pelo Health
components.*.status | `String` | Status do componente
components.*.components | `Object` | Subcomponentes
components.*.details | `Object` | Mais informações sobre o componente (para ocultar essas informações: `management.endpoint.health.show-details`)

* **Exemplo da resposta padrão**

  ```yaml
  {
    "status": "UP",
    "components": {
      "diskSpace": {
        "status": "UP",
        "details": {
          "total": 982900588544,
          "free": 846019592192,
          "threshold": 10485760,
          "exists": true
        }
      },
      "ping": {
        "status": "UP"
      }
    }
  }
  ```

### Adicionar um componente ao *Health*

* **Sintaxe**

  * Implementar a interface `HealthIndicator`

  * Implementar o método `health`

* **Exemplo de implementação**

  ```java
  @Component
  public class DatabaseService implements HealthIndicator {

      private final String DATABASE_SERVICE = "DatabaseService";

      @Override
      public Health health() {
          if (isDatabaseHealthGood()) {
              return Health
                      .up()
                      .withDetail(DATABASE_SERVICE, "Service is running")
                      .build();
          }

          return Health
                  .down()
                  .withDetail(DATABASE_SERVICE, "Service is not available")
                  .build();
      }

      private boolean isDatabaseHealthGood() {
          return true;
      }

  }
  ```