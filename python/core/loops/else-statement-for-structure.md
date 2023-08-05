# Declaração "else" no "for"

Em Python, é possível utilizar a declaração `else` juntamente com um loop `for`. A cláusula `else` no contexto do loop `for` não é executada quando o loop é interrompido por um `break`. Essa funcionalidade é específica do Python e pode ser útil em certas situações.

A estrutura geral do loop `for` com a cláusula `else` é a seguinte:

```python
for elemento in iteravel:
    # Bloco de código a ser executado repetidamente para cada elemento do iterável
else:
    # Bloco de código a ser executado após a conclusão do loop for, caso não haja interrompido pelo "break"
```

Se o loop `for` percorrer todos os elementos do iterável sem encontrar um `break`, o bloco de código associado à cláusula `else` será executado. Se houver um `break` dentro do loop que interrompa a iteração prematuramente, o bloco de código associado ao `else` não será executado.

## **Exemplos**

### **Exemplo 1: Loop interrompido pelo "break"**

```python
numeros = [1, 2, 3, 4, 5]

for num in numeros:
    print(num)
    if num == 3:
        break
else:
    print("Este bloco não será executado porque não houve break no loop")
```

Output:

```
1
2
3
```

No exemplo acima, o loop `for` é interrompido quando o valor do elemento `num` é igual a 3 (devido ao `break`). Nesse caso, o bloco de código associado ao `else` não é executado.

### **Exemplo 2: Execução da cláusula "else"**

```python
numeros = [1, 2, 3, 4, 5]

for num in numeros:
    print(num)
else:
    print("Este bloco será executado porque o loop concluiu sem interrupções")
```

Output:

```
1
2
3
4
5
Este bloco será executado porque o loop concluiu sem interrupções
```

Agora o bloco de código associado ao `else` é executado, pois o loop `for` percorreu todos os elementos do iterável sem ser interrompido por um `break`. Essa funcionalidade pode ser útil quando queremos executar alguma ação após o loop ter concluído normalmente, sem a necessidade de utilizar uma variável de controle adicional.