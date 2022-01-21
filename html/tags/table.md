# Tag `<table>`

> ## **Definição**

A tag `<table>` serve para representar dados em duas dimensões ou mais.

Essa tag, a partir do HTML 5, ela caiu em desuso para a estruturação de site por causa do surgimento das tags com mais semântica.

> ## **Atributos**

Todos os atributos estão descontinuados.

> ## **Exemplo**

### Tabela simples

* Código:
  
  ```html
  <table>
    <tr>
      <td>Elemento 1</td>
      <td>Elemento 2</td>
    </tr>
    <tr>
      <td>Elemento 3</td>
      <td>Elemento 4</td>
    </tr>
  </table>
  ```

* Demonstração:

  <table>
    <tr>
      <td>Elemento 1</td>
      <td>Elemento 2</td>
    </tr>
    <tr>
      <td>Elemento 3</td>
      <td>Elemento 4</td>
    </tr>
  </table>
  
### Tags `<thead>`, `<tfoot>` e `<tbody>`:

* Código
  
  ```html
  <table>
    <!-- TAG thead (table head) = cabeçalho da tabela -->
    <thead>
      <!-- TAG tr (table row) = linha da tabela -->
      <tr>
        <!-- TAG th (table heading) = título da tabela (coluna) -->
        <th>Título 1</th>
        <th>Título 2</th>
      </tr>
    </thead>
    
    <!-- TAG tbody (table body) = corpo da tabela -->
    <tbody>
      <tr>
        <!-- TAG td (table data) = conteúdo do corpo da tabela -->
        <td>Elemento 1</td>
        <td>Elemento 2</td>
      </tr>
      <tr>
        <td>Elemento 3</td>
        <td>Elemento 4</td>
      </tr>
    </tbody>
    
    <!-- TAG tfoot (table footer) = rodapé da tabela -->
    <tfoot>
      <tr>
        <td>Rodapé 1</td>
        <td>Rodapé 2</td>
      </tr>
    </tfoot>
  </table>
  ```

* Demonstração

    <table>
    <thead>
      <tr>
        <th>Título 1</th>
        <th>Título 2</th>
      </tr>
    </thead>
    
    <tbody>
      <tr>
        <td>Elemento 1</td>
        <td>Elemento 2</td>
      </tr>
      <tr>
        <td>Elemento 3</td>
        <td>Elemento 4</td>
      </tr>
    </tbody>
    
    <tfoot>
      <tr>
        <td>Rodapé 1</td>
        <td>Rodapé 2</td>
      </tr>
    </tfoot>
  </table>    