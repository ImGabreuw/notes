# **URL de conexão**

> ## **Sintaxe**

**IMPORTANTE**: a URL de conexão NUNCA pode conter espaços e caracteres especiais

```
jdbc:mysql://[host]:[porta]/[nome do banco de dados]?[propriedades]
```

* `[host]`: nome do host no qual o banco de dados é hospedado

  > **OBS**: se o IP for `localhost`, a porta pode ser omitida e será utilizado porta padrão do MySQL (`3306`).

* `[porta]`: porta onde o serviço está sendo exposto

* `[propriedades]`: é um campo `[chave]=[valor]`, e cada propriedade é separado por `&`

> ## **Exemplo**

```
jdbc:mysql://localhost/clientes?createDatabaseIfNotExist=true&serverTimezone=UTC
```

> ## **Propriedades de URL**

* `createDatabaseIfNotExist=true`: criar o *schema* do banco de dados caso o mesmo não exista

* `serverTimezone=UTC`: salvar data e hora baseado no **fuso horário GMT 0** (boa prática)
