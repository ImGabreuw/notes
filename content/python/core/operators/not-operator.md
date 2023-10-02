# Operador lógico "not"

O operador lógico `not` em Python é utilizado para negar o valor lógico de uma expressão. Ele inverte o resultado de uma expressão booleana, ou seja, se a expressão for `True`, o `not` torna-a `False`, e se a expressão for `False`, o `not` torna-a `True`.

**Tabela Verdade do Operador `not`**:

| condição | operação `not` |
| :------: | :------------: |
|    0     |       1        |
|    1     |       0        |

- Se a condição for `False` (0), o resultado será `True` (1).
- Se a condição for `True` (1), o resultado será `False` (0).

O operador `not` é frequentemente utilizado para verificar se uma expressão é falsy. Em Python, os seguintes valores são considerados falsy:

- `False` (valor booleano False)
- `None` (valor especial que representa ausência de valor)
- `0` (valor inteiro 0)
- `0.0` (valor de ponto flutuante 0.0)
- `''` (string vazia)
- `""` (string vazia)

**Exemplo**:

```python
senha = input("Senha: ")

if not senha:
  print("Por favor insira a senha.")
```

Nesse exemplo, o operador `not` é usado para verificar se a variável `senha` é uma string vazia ou nula (falsy). Se `senha` for vazia, a condição `not senha` será avaliada como `True` e a mensagem "Por favor insira a senha." será exibida.

Por outro lado, se `senha` tiver algum valor não vazio (truthy), a expressão `not senha` será avaliada como `False`, e a mensagem não será exibida.

O operador `not` é útil para inverter condições em condicionais e loops, permitindo maior flexibilidade na lógica do programa. Ele pode ser combinado com os operadores `and` e `or` para formar expressões lógicas mais complexas.
