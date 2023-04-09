# Operadores aritméticos

> ## **Visão geral**

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

> ## **Concatenação**

### **Definição**

O operador `+` exerce funções distintas dependendo do tipo de dado a ser manipulado. Por exemplo:

- Ao trabalhar com números (`int` ou `float`), o operador exerce a função de soma

- Ao trabalhar com strings, o operador exerce a função de **concatenação**, ou seja, junção dos valores nas strings

### **Exemplo**

```python
nome = "Luiz" + " " + "Otávio"
print(nome) # Luiz Otávio
```

> ## **Repetição**

### **Definição**

O operador `*`, assim como o `+`, exerce funções distintas dependendo do tipo de dado a ser manipulado. Por exemplo:

- Ao trabalhar com números (`int` ou `float`), o operador exerce a função de multiplicação

- Ao trabalhar com strings, o operador exerce a função de **repetição**, ou seja, repetir N vezes um determinado caractere ou texto.

### **Exemplo**

```python
linha = "-" * 10
print(linha) # ----------
```
