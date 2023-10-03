# Criação de migrations

> ## Nomenclatura dos scripts SQL

### **Sintaxe**

```sql
V[tipo de versionamento]__[nome descritivo].sql
```

* Todo arquivo de *migration* deve começar com a letra **V**

* Formas de versionar uma *migration*:s

    * `V001`: numeração em ordem crescente
    
    * `V20210519`: data invertida

    * `V202105191449`: data invertida + horário

### **Exemplo**

```sql
# V001__cria-tabela-cliente.sql

create table cliente (
  id bigint not null auto_increment,
  nome varchar(60) not null,
  email varchar(255) not null,
  telefone varchar(20) not null,
  
  primary key (id)
)
```

> ## **OBS**

Após o registro da *migration* em um *schema* chamado `flyway_schema_history` (histórico de todas as *migrations* da aplicação) o arquivo registrado não pode ser alterado. Caso for preciso alterá-la, basta deletar essa *migration* ou criar uma nova.