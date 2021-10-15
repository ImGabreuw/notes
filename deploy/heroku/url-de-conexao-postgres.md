# URL de conexão do Postgres 

### Importante

* Essa URL é gerada automaticamente ao adicionar o Postgres na aplicação no Heroku

  * **Adicionar o Postgres**: `Resources > Add-ons > pesquisar por "Heroku Postgres" > clicar em "Heroku Postgres"`

### Obter a URL

```
Settings > Config Vars > Reveal Config Vars > buscar pela variável de ambiente "DATABASE_URL"
```

### Explicação da URL

```
postgres://

<usuário>

:

<senha>

@

<host>

:

<porta>

/

<nome da base de dados>


```
