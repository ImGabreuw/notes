# Boas práticas no REST

### Sempre utilizar substantivos

* `/getAllCars` ❌

* `/createNewCar` ❌

* `/deleteAllRedCars` ❌

### NUNCA alterar o estado de um recurso com GET

* `GET /users/2/activate` ❌

* `GET /users/2/enable` ❌

### Usar plural

* `/cars`✅

* `car` ❌

### Usar sub-recursos para relacionamento entre recursos

* `GET /books/33/pages`

### Todo sub-recurso é um recurso em potencial (depende do negócio)

* `GET /states/10/cities` ("cities" como **sub-recurso** de "states")

* `GET /cities?region=north` ('cities' como **recurso isolado** do "states")

### Paginação, filtros e ordenação

* NUNCA retornar todos os registros do banco de dados em uma única resposta

* `GET /regions?page=0&size=1&sort=name,desc`

  * `page=0`(número da página) = paginação

  * `size=1` (número de registros por página) = paginação

  * `sort=name,desc` = ordenação

* `GET /cities?page=0&size=10&sort=name,asc&state_id=5`

  * `page=0`(número da página) = paginação

  * `size=10` (número de registros por página) = paginação

  * `sort=name,desc` = ordenação

  * `state_id=5` = filtro

### Versionamento da API (não quebrar o contrato da API)

* Versionamento por *Header* (+ comum): `curl -X GET /cities -H "accept: application/vnd.brazil.api-v1.0+json"`

* Versionamento por *Path*: `curl -X GET /v1/cities`

* Versionamento via parâmetro: `curl -X GET /cities?api_version=1.0.0`

### Sempre escolher o  *HTTP Status Code* corretamente

* Utilizar o código `201 CREATED` para criação de um recurso, e não o `200 OK`

### Entender o domínio em questão afim de representar a API da melhor forma

### Documentar a API 

* Swagger: ferramenta (mais utilização) para implementar a especificação *OpenAPI*