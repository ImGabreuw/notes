# Declaração "else" no "while"

A declaração `else` no contexto do `while` é uma funcionalidade peculiar do Python e é pouco utilizada. O bloco `else` é executado quando o loop `while` é concluído normalmente, ou seja, quando a condição do `while` se torna falsa e o loop não é interrompido por um `break`.

## **Exemplos**

### **Exemplo 1**

```python
i = 0

while i < 5:
  i += 1
  print(i)
else:
  print("Bloco 'else' foi executado")
```

Neste exemplo, o loop `while` é executado até que `i` seja igual a 5. Em cada iteração, o valor de `i` é impresso. Quando `i` atinge o valor 5 e a condição do `while` se torna falsa, o loop é concluído normalmente, e o bloco `else` é executado, imprimindo "Bloco 'else' foi executado".

### **Exemplo 2**

```python
i = 0

while i < 5:
  i += 1
  print(i)

  if i == 3:
    break
else:
  print("Bloco 'else' foi executado")
```

Neste exemplo, o loop `while` também é executado até que `i` seja igual a 5, mas existe um `if` dentro do loop que verifica se `i` é igual a 3. Quando `i` é igual a 3, o `break` é acionado, interrompendo o loop antes que ele seja concluído normalmente. Como o loop é interrompido com `break`, o bloco `else` não é executado.

### **Exemplo 3**

```python
i = 0

while i < 5:
  i += 1

  if i == 3:
    continue

  print(i)
else:
  print("Bloco 'else' foi executado")
```

Neste exemplo, novamente o loop `while` é executado até que `i` seja igual a 5. No entanto, quando `i` é igual a 3, o `continue` é acionado, fazendo com que a iteração atual seja pulada e o loop continue para a próxima iteração. Como o loop é concluído normalmente sem ser interrompido por `break`, o bloco `else` é executado, imprimindo "Bloco 'else' foi executado" após o loop.
