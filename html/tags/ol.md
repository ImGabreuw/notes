# Tag `<ol>`

> ## **Definição**

A tag `<ol>` serve para criar listas ordenadas (ordered lists), ou seja, os elementos são numerados (possuem índices).

Para mudar os símbolos de divisão entre os elementos da lista, basta adicionar a propriedade `list-style-type` em um arquivo `.css`.

**Documentação**: [clique aqui](https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/ol)

> ## **Atributos**

* `compact`: atributo descontinuado
 
* `type`: definir o tipo de numeração

  * `type="a"`: divisão com letras minúsculas

  * `type="A"`: divisão com letras maiúsculas

  * `type="i"`: divisão com algarismos romanos minúsculos

  * `type="I"`: divisão com algarismos romanos maiúsculos

  * `type="1"`: divisão com números (por padrão)
  
* `start`: especificar o valor inicial na contagem dos elementos da lista (aceita um valor do tipo inteiro)

  > Exemplo: [clique aqui](#exemplo-usando-start)

* `reversed`: inverter a contagem dos elementos da lista (aceita um valor do tipo booleano)

  > Exemplo: [clique aqui](#exemplo-usando-reversed)

> ## **Exemplos**

### Lista simples:

* Código
  
  ```html
  <ol>
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>
  ```

* Demonstração

  <ol>
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>
  
### Atributo `start`:

* Código
  
  ```html
  <ol start="7">
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>
  ```

* Demonstração

  <ol start="7">
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>
  
### Atributo `reversed`:

* Código
  
  ```html
  <ol reversed>
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>
  ```

* Demonstração

  <ol reversed>
    <li>primeiro item</li>
    <li>segundo item</li>
    <li>terceiro item</li>
  </ol>