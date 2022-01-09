# Introdução ao Spring Bean Validation

> ## **Definição**

É um dos projetos do ecossistema Spring que fornece uma API de validação de dados.

**Documentação**: [Jakarta Bean Validation specification](https://jakarta.ee/specifications/bean-validation/3.0/jakarta-bean-validation-spec-3.0.html)

> ## **"Validações no modelo de domínio e no modelo de representação?"**

Se todas as operações do sistema forem feitas somente através da API, então a validação no model de domínio se torna desnecessária.

Caso contrário, é importante manter essas validações, mesmo se forem duplicadas.