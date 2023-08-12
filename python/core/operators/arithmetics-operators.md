# Operadores aritméticos

A seguir está uma tabela explicativa dos operadores aritméticos:

|             Nome              | Operador |   Código    |   Resultado   |
| :---------------------------: | :------: | :---------: | :-----------: |
|            Adição             |   `+`    |  `10 + 10`  |     `10`      |
|           Subtração           |   `-`    |  `10 - 5`   |      `5`      |
|         Multiplicação         |   `*`    |  `10 * 10`  |     `100`     |
|            Divisão            |   `/`    | `10 / 2.2`  | `4.545454...` |
| Divisão truncada (apenas int) |   `//`   |  `10 // 3`  |      `3`      |
| Divisão truncada (com float)  |   `//`   | `10 // 2.2` |     `4.0`     |
|         Exponenciação         |   `**`   |  `2 ** 10`  |    `1024`     |
|            Módulo             |   `%`    |  `10 % 3`   |      `1`      |

Abaixo está uma tabela explicativa dos operadores de atribuição com operadores aritméticos:

| Operador de Atribuição | Descrição                    | Exemplo   | Equivalente a |
| ---------------------- | ---------------------------- | --------- | ------------- |
| `+=`                   | Adição e atribuição          | `x += 5`  | `x = x + 5`   |
| `-=`                   | Subtração e atribuição       | `y -= 3`  | `y = y - 3`   |
| `*=`                   | Multiplicação e atribuição   | `a *= 2`  | `a = a * 2`   |
| `/=`                   | Divisão e atribuição         | `b /= 4`  | `b = b / 4`   |
| `//=`                  | Divisão inteira e atribuição | `c //= 3` | `c = c // 3`  |
| `**=`                  | Exponenciação e atribuição   | `d **= 2` | `d = d ** 2`  |

> ## **Ordem de precedência**

| Precedência |                    Símbolos                    |
| :---------: | :--------------------------------------------: |
|     1º      |                      `()`                      |
|     2º      |                      `**`                      |
|     3º      |              `*`, `/`, `//`, `%`               |
|     4º      |                    `+`, `-`                    |
|     5º      | `==`, `!=`, `>`, `<`, `>=`, `<=` (relacionais) |
|     6º      |                 `not` (lógico)                 |
|     7º      |                 `and` (lógico)                 |
|     8º      |                 `or` (lógico)                  |
|     9º      |                `=` (atribuição)                |

## **Concatenação de Strings**

A concatenação de strings é uma operação muito comum na programação, especialmente quando você deseja juntar pedaços de texto para formar uma única string. O operador `+` é usado para unir duas ou mais strings em uma nova string resultante.

```python
primeiro_nome = "João"
sobrenome = "Silva"

nome_completo = primeiro_nome + " " + sobrenome
print(nome_completo)  # Saída: João Silva
```

Neste exemplo, as variáveis `primeiro_nome` e `sobrenome` foram concatenadas usando o operador `+` e uma string de espaço vazia `" "` foi inserida entre elas para separar os nomes.

## **União de Listas**

O operador `+` também pode ser usado para unir duas listas, criando uma nova lista que contém todos os elementos das listas originais.

```python
lista_a = [1, 2, 3]
lista_b = [3, 4, 5]

lista_resultante = lista_a + lista_b
print(lista_resultante)  # Saída: [1, 2, 3, 3, 4, 5]
```

Neste exemplo, os elementos das duas listas, `lista_a` e `lista_b`, foram unidos para formar a lista resultante `lista_resultante`. Note que os elementos repetidos não são removidos, eles aparecem tantas vezes quanto estão presentes nas listas originais.

## **Repetição**

### **Definição**

O operador `*`, assim como o `+`, exerce funções distintas dependendo do tipo de dado a ser manipulado. Por exemplo:

- Ao trabalhar com números (`int` ou `float`), o operador exerce a função de multiplicação

- Ao trabalhar com strings, o operador exerce a função de **repetição**, ou seja, repetir N vezes um determinado caractere ou texto.

### **Exemplo**

```python
linha = "-" * 10
print(linha) # ----------
```
