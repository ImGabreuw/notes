# Método "strip"

## **Definição**

O método `strip()` é usado para remover espaços em branco (ou outros caracteres especificados) no início e no final de uma string. Além disso, existem variações desse método:

- `rstrip()`: Remove espaços em branco à direita da string.

- `lstrip()`: Remove espaços em branco à esquerda da string.

## **Exemplo**

```python
frase = "  Olá mundo!  "
frase_sem_espacos = frase.strip()

print(frase_sem_espacos)
# Olá mundo!
```

```python
frase = "  Olá mundo!  "
frase_sem_espacos_direita = frase.rstrip()

print(frase_sem_espacos_direita)
#   Olá mundo!
```

```python
frase = "  Olá mundo!  "
frase_sem_espacos_esquerda = frase.lstrip()

print(frase_sem_espacos_esquerda)
# Olá mundo!
```
