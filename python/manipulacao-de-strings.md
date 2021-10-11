# Manipulação de Strings

### Concatenação de Strings

* **Sintaxe**

  ```python
  "texto" + <variável do tipo String> + "texto"
  ```

* **Exemplo**

  ```python
  soma = 5 + 5
  print("Soma = " + str(soma)) # Soma = 10
  ```

  * **OBS**: só é possível concatenar variáveis do **tipo String**

    ```python
    soma = 5 + 5
    print("Soma = " + soma) # Erro: tipos incompatíveis (int e str)
    ```

### Formatação de Strings

* **Sintaxe**

  ```python
  "Texto {}".format(<valor 1>)
  "Texto {} {}".format(<valor 1>, <valor 2>)
  ```

* **Exemplo**

  ```python
  soma = 5 + 5
  print("Soma: {}".format(soma)) # "Soma: 10"
  ```

### Formatação de Strings com alias

* **Sintaxe**

  ```python
  "Texto {alias}".format(<alias>=<valor 1>)
  "Texto {alias1} {alias2}".format(<alias1>=<valor 1>, <alias2>=<valor 2>)
  ```

* **Exemplo**

  ```python
  print("Soma: {soma}".format(soma=5 + 5)) # "Soma: 10"

  print("Soma: {soma} | Subtração: {subtracao}".format(soma=5 + 5, subtracao=8 - 3)) # "Soma: 10 | Subtração: 5"
  ```

### Quebra de linha

* **Sintaxe**: `\n`

* **Exemplo**

  ```python
  print("Linha 1 \nLinha 2 \nLinha 3")

  # Saída:
  # Linha 1
  # Linha 2
  # Linha 3
  ```