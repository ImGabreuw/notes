# Inversão de dependência

> ## **Definição**

Módulos de alto nível **não devem depender** de módulos de baixo nível. Ambos devem depender de **abstrações**.

Abstrações não devem depender de detalhes. Detalhes devem depender de abstrações.

- **Módulos de alto nível**: são as **rotinas mais fáceis** de entender, mais próximas da realidade de qualquer programador. Tendem a exigir menos carga mental para serem usadas.

- **Módulos de baixo nível**: são as **rotinas mais complexas** e difíceis de entender. Geralmente são compostas de **implementações** de cálculos ou comportamentos específicos.

- **Detalhes**: são os **artefatos** que **não** deveriam **fazem parte da arquitetura** de forma acoplada, mas que, no entanto, são **necessários** para um sistema funcionar.

> ## **Benefícios**

- **Desacoplamento** na utilização de **serviços externos** (a partir da criação de uma **camada anticorrupção**)

  > **OBS**: o **Polimorfismo** é o responsável por isso

- **Melhor testabilidade**

> ## **Exemplos**

### **TypeScript**

- [Exemplo TypeScript](./examples/example-ts-1.md)

- [Exemplo em TypeScript com Nest](./examples/example-ts-nestjs-1.md)
