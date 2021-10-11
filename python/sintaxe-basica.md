# Sintaxe básico

### Indentação

* A **indentação é muito importante**, pois com ela o Python consegue distinguir aonde **começa e termina um bloco de código**

* **Exemplo 1**

  * **Correto**

    ```python
    if 5 > 2:
      print("5 é maior que 2")
    ```

  * **Errado**

    ```python
    if 5 > 2:
    print("5 é maior que 2")
    ```

    **Erro**: `IndentationError: expected an indented block`

* **Exemplo 2**

  * **Correto**

    ```python
    if 5 > 2:
      print("5 é maior que 2") 
    
    if 6 > 3:
          print("6 é maior que 3") 
    ```

  * **Errado**

    ```python
    if 5 > 2:
      print("5 é maior que 2")
          print("5 é maior que 2")
    ```

    **Erro**: `IndentationError: unexpected indent`

### Aspas simples e duplas

* É possível utilizar tanto **aspas simples** (`''`) quanto **aspas duplas** (`""`)

* É **recomendado padronizar o uso**, na aplicação, de aspas simples e duplas

* No _Web Scraping_ é recomendado o uso de aspas simples, pois em caso de buscar por um elemento pelo _XPath_, pode conter **aspas duplas** o que acarreta problemas ao usá-las no método também.

### Case-sensitive

* Os nomes de variáveis são sensíveis à maiúsculo e minúsculo, ou seja, a variável `a = "Python"` é diferente de `A = "Python"` 

### Declaração de variáveis

* **Sintaxe**

  ```python
  <nome da variável> = <valor>
  ```

* **Exemplo**

  ```python
  x = 10 
  y = 10.5
  a = "Python"
  ```

### Tipos de dados

> Para saber o tipo de um variável: `type(<variável>)`

Nome | Tipo | Exemplo | Tipo explícito
:-----: | :-----: | :-----: | :-----:
String | str | `"Python"` | `str(...)`
Inteiro | int | `10` | `int(...)`
Flutuante | float | `5.6` | `float(...)`
Lista | list | `["Python", "Linguagem de programação"]` | `list(...)`
Tupla | tuple | `("Python", "Linguagem de programação")` | `tuple(...)`
Intervalo | range | `range(10)` | `range()`
Dicionário | dict | `{name="Gabriel", age=17}` | `dict(...)`
Conjunto | set | `{"Python", "Linguagem de programação"}` | `set(...)`
Boleano | bool | `True` ou `False` | `bool(...)` 
Byte | bytes | `b"Python"` | `bytes(...)`
