# Operador "in"

Os operadores `in` e `not in` são utilizados em Python para verificar a pertinência de um elemento em uma sequência. Eles são comumente usados para verificar se um valor está presente em uma lista, string, tupla, conjunto ou qualquer outra sequência.

**Operador `in`**:

O operador `in` verifica se um elemento está presente em uma sequência. Se o elemento estiver na sequência, o operador retorna `True`; caso contrário, retorna `False`.

**Operador `not in`**:

O operador `not in` é o oposto do `in`. Ele verifica se um elemento não está presente na sequência. Se o elemento não estiver na sequência, o operador retorna `True`; caso contrário, retorna `False`.

**Exemplo**:

```python
nome = "Python"

print("P" in nome)  # True
print("Py" in nome)  # True
print("p" in nome)  # False
print("p" not in nome)  # True
```

Neste exemplo, temos uma string chamada `nome` com o valor "Python". Usamos os operadores `in` e `not in` para verificar se certos elementos estão presentes na string.

- `"P" in nome`: Retorna `True` porque o caractere "P" está presente na string "Python".

- `"Py" in nome`: Retorna `True` porque a sequência "Py" está presente na string "Python".

- `"p" in nome`: Retorna `False` porque o caractere "p" (minúsculo) não está presente na string "Python".

- `"p" not in nome`: Retorna `True` porque o caractere "p" não está presente na string "Python".

Esses operadores são úteis para testar a existência de elementos em coleções, permitindo que você tome decisões com base na presença ou ausência de um valor específico em uma sequência.
