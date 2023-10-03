# Função: `print()`

> ## **Definição**

A função `print()` serve para imprimir um conteúdo no console.

Ela pode receber argumentos nomeados e não nomeados:

```python
# argumento não nomeado
print(12)

# argumento nomeado (sep, end, ...)
print(12, 34, sep="-") # 12-34

print(12, 34, end="\n##")
print(5, 6)
# 12 34
# ##5 6
```

Além disso, essa função pode não receber argumento e o comportamento dela será pular uma linha no console:

```python
# não receber argumento
print()
```

> ## **Quebra de linha**

Existem 2 tipos de quebra de linha:

- **CRLF** (`\r\n`): Windows

- **LF** (`\n`): Unix (Mac e Linux)

O caractere `\n` serve para a quebra de linha em todos os sistemas operacionais mais recentes, entretanto, nas versões mais antigas do Windows, é necessário usar `\r\n` para atingir o mesmo comportamento.
