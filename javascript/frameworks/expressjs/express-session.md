# Express Session

> ## **Express Session**

### **Definição**

É um _middleware_ do _Express_ para armazenar dados da sessão no servidor.

O _Express Session_ salva apenas o ID da sessão no cookie.

Esses dados são salvos em memória, portanto não é recomendado seu uso em produção.

### **Configuração**

```sh
$ npm i express-session connect-mongo connect-flash
```

> ## **Biblioteca: `connect-mongo`**

### **Definição**

É uma biblioteca para salvar os dados de sessão em um banco de dados MongoDB.

O `connect-mongo` é muito utilizado com _Express Session_ (dados salvos em memória), pois os dados de sessão são salvos no HD, sendo mais sustentável do que armazená-los na memória em ambiente de produção.

> ## **Biblioteca: `connect-flash`**

### **Definição**

É uma biblioteca para enviar _flash messages_.

> **flash messages** são mensagens salvas em sessão (em memória), dessa forma é perfeito para enviar feedback de erros para o usuário.
