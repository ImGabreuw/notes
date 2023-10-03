# Kotlin

> ## **Definição**

- Linguagem de programação moderna destinada a **plataforma Java** (JVM)

- Atualmente mantida pela _Kotlin Foundation_

- Linguagem multiplataforma, orientado a objetos e funcional

- Gratuito e _Open Source_

- Atual em diversos tipos de aplicações como, aplicativos móveis, servidor, _desktop_, além de estruturas e bibliotecas

> ## **Características**

- **Concisa**, **segura**, **pragmática** e focada na **interoperabilidade com Java**

- Tem praticamente a mesma performance do Java

- **Estaticamente tipada e tem inferência de tipo**:

  - Tipo de cada expressão é conhecido em tempo de compilação (assim como no Java)

  - Não é obrigatório especificar o tipo da variável (diferente do Java)

  - O tipo da variável é determinado pelo contexto, ou seja, pelo valor (conteúdo)

  - Exemplo:

    ```kotlin
    val x = 1 // O compilador infere que essa variável é do tipo Int
    ```

- **Paradigma Orientado a Objetos**:

  - Facilita na transição de linguagem, principalmente para desenvolvedores Java (Herança, Classes, Métodos, Polimorfismo, Padrões de Projeto, etc)

- **Paradigma Funcional**:

  - Esse paradigma ainda é pouco conhecido, pois há um domínio específico onde linguagens puramente funcionais são utilizadas

  - Vantagens:

    - **Performance**: não exite a necessidade de "descobrir" em tempo de execução que método necessita ser chamado

    - **Confiabilidade/Manutenibilidade**: mínima chance de ocorrer um _crash_ em tempo de execução

    - **Suporte de ferramentas**: possibilitam refatorações confiáveis, *auto-complete* e outras funcionalidades

  - Principais conceitos:

    - **Funções de 1º classe**: atribuição de funções nas variáveis, com isso é possível passá-las como parâmetro ou retorno

    - **Imutabilidade**: um objeto uma vez criado, não pode ser mais alterado

    - **Idempotência (sem efeitos colaterais)**: retornam o mesmo resultado dada a mesma entrada (devido a imutabilidade)

> ## **História**

- Nome em homenagem a ilha russa _Kotlin_ (perto de São Petersburgo, na Rússia)

- Criado pela _JetBrains_ em 2011

- Primeira versão do Kotlin foi lançada em 2016

- A comunidade, principalmente Android, tinha grande interesse na linguagem

- Em 2017, na conferência Google I/O, foi anunciado o Kotlin como linguagem oficial do Android

> ## **Estrutura da linguagem**

- Não utiliza ponto e vírgula

- Não possui operador ternário tradicional

- **Type Safe** e **Null Safe**

- Interferência de tipo

- Linguagem pragmática (focado em resolver problemas do mundo real)

- Multiparadigma

  - Programação Imperativa

  - Programação orientado a objetos

  - Programação genérica

  - Programação funcional

> ## **Aplicabilidade**

- Android

- Mobile multiplataforma (KMM)

- Frontend Web com Kotlin/JS

- Nativo (Kotlin compilado, por meio do _Intel Multi-OS Engine_, para arquivo binário para Windows, Linux, IOS e MacOS)

- **Frameworks**

  - [Kvison](https://kvision.io/)

  - [Fritz2](https://www.fritz2.dev/)

- Backend com target node.js do Kotlin/JS
  {"mode":"full","isActive":false}
