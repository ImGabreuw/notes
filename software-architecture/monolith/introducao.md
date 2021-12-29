# Introdução à arquitetura monolítica

> ## **Monolito**

### **Representação**

![](./assets/representacao-monolito.png)

### **Definição**

Serviços aglomerados em uma única aplicação.

Único banco de dados (único ponto de falha).

### **Vantagens**

* Desenvolvimento simplificado

### **Desvantagens**

* Alto acoplamento

  * Alterações e modelagens que podem afetar o sistema todo

  * Dificuldade de acompanhar a modernização

* Apenas uma stack tecnológica, ou seja, é possível utilizar apenas uma linguagem de programação na aplicação

* Diversas equipes trabalhando na mesma base de código

* Sem isolamento a falhas

* Disponibilidade comprometida

* Escalabilidade e performance limitadas

* Dificuldade na manutenção

* Regras de negócio espalhadas em toda a aplicação

  * Queries SQL complexas (incluindo regras de negócio)
