# Método "split"

## **Definição**

O método `split()` é utilizado em objetos de string para dividir a string em partes, com base em um caractere delimitador fornecido como argumento. Por padrão, se nenhum argumento for fornecido, ele divide a string em partes usando espaços em branco como delimitadores.

## **Exemplo**

```python
frase = "Olha só que coisa interessante"
palavras = frase.split()

print(palavras)
# ['Olha', 'só', 'que', 'coisa', 'interessante']
```

```python
frase = "Olha só, que coisa interessante"
partes = frase.split(",")

print(partes)
# ['Olha só', ' que coisa interessante']
```
