# Camadas

> ## **Nível 1: Contexto**

Focado em mostrar de forma sucinta as **interações de forma macro**, dando enfoque às **comunicações e dependências entre sistemas** e usuários que compõem e interagem com o software.

Um bom termômetro para verificar tais fundamentos é que o diagrama deve ser **compreendido de forma direta** por pessoas, tanto no nível técnico quanto de negócio.

![](nivel-1-c4model.png)

> ## **Nível 2: Container**

Tem a finalidade de mostrar um determinado sistema com mais detalhes, descrevendo os containers que o compõem.

Neste nível deve-se **aprofundar na arquitetura e tecnologias** utilizadas.

![](nivel-2-c4model.png)

> Um container pode ser uma aplicação web, um database, um sistema de arquivos, entre outros.

> ## **Nível 3: Componente**

Tem a finalidade de mostrar um determinado container com mais detalhes, detalhando os processos e interações que o compõem.

Nesta camada deve-se apresentar as **informações sobre interações, responsabilidades e tecnologias** utilizadas.

> **OBS**: os diagramas dessa camada é recomendado apenas em casos que os mesmos geram valor para a equipe, juntamente com o comprometimento em mantê-los.

![](nivel-3-c4model.png)

> ## **Nível 4: Código**

Neste último nível, mostra a **nível de código** como cada componente é implementado, por meio de classes documentadas no **diagrama UML**.

Geralmente, essa camada **não é recomendada**, exceto em situações em que há uma complexidade muito elevada de um componente.

Entretanto, em caso de necessidade de utilizar essa camada, no diagrama UML deve apresentar **apenas as relações entres as entidades** do componente, como se pode ver a seguinte imagem:

![](nivel-4-c4model.png)
