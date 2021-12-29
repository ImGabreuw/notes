# Conceitos da Arquitetura Hexagonal

### Definição

* Padrão de design de negócio

* A aplicação é dividida em camadas

  * **1º camada**: camada interna da aplicação (*application core*) (não se comunica com o mundo externo)

  * **2º camada**: camada externa (*ports* e *adapters*) da aplicação (responsável pela comunicação com o mundo externo)

    * **Exemplos**

      * Banco de dados

      * Broker (mensageria)

      * Terminal

      * API

* Com a divisão da aplicação em camadas, o núcleo da aplicação (*application core*) é isolado e com isso é garantido uma maior testabilidade e também um menor acoplamento

### Estrutura

![](./assets/hexagonal-architecture.png)

* **Application core**

  * Núcleo da aplicação

  * Sempre deixar com o menor nível de acoplamento

* **Port**

  * **Definição**

    * São abstrações do *application core*

    * É a forma do *application core* se comunicar com o "mundo externo"

  * **Função**: encapsular as regras de negócio da aplicação (baixo acoplamento)

* **Adapter**

  * **Definição**

    * É a implementação do *port*

    * Existem 2 tipos de *adapters*

      * *Inbound adapter*

        * Camada externa executa uma ação na qual chama a camada interna (uma funcionalidade do *application core*)

        * **Exemplos** 

          * *Browser*

          * *Queue* (*Consumer*)

      * *Outbound adapter*

        * Camada interna executa uma ação na qual chama a camada externa (serviço externo)

        * **Exemplo**

          * Banco de dados

          * *Queue* (*Producer*)

  * **Função**: responsável pela comunicação entre a aplicação e o "mundo externo" 