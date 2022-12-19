# Introdução à Arquitetura de Microsserviços

> ## **Microsserviços**

### **Definição**

- Termo relativamente novo (criado em 2005), mas muito comum hoje em dia

- Aplicações complexas sendo compostas por diversas aplicações mais simples (serviços distribuídos)

- Serviços independentes, cujas funcionalidades são acessíveis pela rede

- Uma alternativa à arquitetura monolítica

- Geralmente com 1 banco de dados por serviço

### **Vantagens**

- Tempo entre desenvolvimento e implantação baixo

- **Foco nas regras do negócio**

  - Divisão da complexidade do negócio

- **Flexibilidade**

  - Multicloud

  - Padrões de observabilidade, monitoramento e documentação

    > Iniciativas como _OpenTelemetry_ e _CloudEvents_ devem ganhar cada vez mais espaço

  - Stack tecnológica

- Equipes autônomas

- **Baixo acoplamento**

- **Independências** entre **serviços** e **modelagem de dados**

- Agilidade de mudanças

- **Altamente disponíveis e escaláveis**

- Alta resiliência

- Manutenibilidade

- Isolamento a falhas

- Melhor performance

- Melhor testabilidade

### **Desvantagens**

- Maior complexidade no desenvolvimento

  - Comunicação

  - Infraestrutura

> ## **Ferramentas**

- **Serverless** ganhando cada vez mais destaque

- **Ferramentas de mensageria** (Kafka, Kafka Streams, RabbitMQ) cada vez mais performática e features avançadas

- **Traceability**

- **Testes** (de integração entre microsserviços)

> ## **Como trabalhar com microsserviços**

- Conceitos como DDD cada vez mais importante no mundo dos microsserviços

- Expandindo para diversas áreas do negócio

- Planejamento estratégico
