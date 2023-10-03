# InnoDB Engine

> ## **Definição**

É um mecanismo de armazenamento para o MySQL (MySQL 5.5+) que fornece as funcionalidades padrões de transação complacentes com **ACID**.

> ## **Verificação da *engine* de uma tabela no *MySQL Workbench***

1. Abrir o *MySQL Workbench*

2. Selecionar o *schema* que deseja ser verificado

3. Executar a seguinte query:

    ```sql
    show table status
    ```

4. Selecionar a coluna *Engine* (2ª coluna) e verificar se o conteúdo nela é igual a `InnoDB`