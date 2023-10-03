# Operador lógico "or"

O operador lógico `or` em Python é utilizado para realizar uma operação lógica de "OU" entre duas ou mais expressões. Ele retorna `True` se pelo menos uma das expressões envolvidas for verdadeira e `False` apenas se todas as expressões forem falsas.

**Tabela Verdade do Operador `or`**:

| condição 1 | condição 2 | operação `or` |
| :--------: | :--------: | :----------: |
|     1      |     1      |       1      |
|     1      |     0      |       1      |
|     0      |     1      |       1      |
|     0      |     0      |       0      |

- Se pelo menos uma das condições for `True` (1), o resultado será `True` (1).
- Se todas as condições forem `False` (0), o resultado será `False` (0).

Assim como no caso do operador `and`, o Python também possui a avaliação de curto-circuito para o operador `or`. Isso significa que, se a primeira expressão for verdadeira, as demais não serão avaliadas, pois o resultado final será `True` independentemente do valor das outras expressões. Isso é útil para evitar avaliar condições desnecessárias quando o resultado final já pode ser determinado.

**Exemplo**:

```python
# Avaliação de curto circuito
print(True or False)  # True

# O interpretador do Python ao encontrar uma condição verdadeira, não avalia as demais expressões
# Pois o resultado final já será True
```

No exemplo acima, a expressão `True or False` resulta em `True`, porque a primeira condição é `True`. Nesse caso, o Python não avalia a segunda condição, pois o resultado final já é `True`.

```python
print(0 or False or 0.0 or "abc" or True)  # "abc"
print(0 or False or 0.0 or True or "abc")  # True
```

Nesses exemplos, a primeira expressão é `0`, que é um valor falsy em Python. O Python continua avaliando as demais expressões até encontrar o primeiro valor verdadeiro, que é `"abc"`. Então, o resultado final é `"abc"`, que é a primeira expressão verdadeira encontrada.

As expressões lógicas com `or` são úteis quando você deseja que uma ação seja executada se pelo menos uma das condições for verdadeira, tornando o código mais flexível e capaz de lidar com várias situações.