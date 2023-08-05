# Estrutura de repetição "for"

A estrutura de repetição `for` é utilizada em Python para iterar sobre uma sequência de elementos, como uma lista, uma string, um dicionário, ou qualquer objeto que seja **"iterável"**.

A principal vantagem do `for` em relação ao `while` é que ele é mais adequado quando o **número de repetições é conhecido previamente** ou quando se quer iterar sobre todos os elementos de uma coleção.

## **Sintaxe**

A sintaxe do `for` é a seguinte:

```python
for elemento in sequencia:
    # bloco de código a ser executado para cada elemento da sequência
```

O `for` percorre cada elemento da sequência especificada, atribuindo cada elemento a uma variável temporária (no exemplo acima, a variável temporária é chamada de `elemento`), e então executa o bloco de código associado para cada elemento.

## **Exemplos**

### **Exemplo 1: Iterando sobre uma lista**

```python
frutas = ["maçã", "banana", "laranja", "manga"]

for fruta in frutas:
    print(fruta)

# Saída:
# maçã
# banana
# laranja
# manga
```

### **Exemplo 2: Iterando sobre uma string**

```python
texto = "Python"

for letra in texto:
    print(letra)

# Saída:
# P
# y
# t
# h
# o
# n
```

### **Exemplo 3: Iterando sobre um dicionário**

```python
pessoas = {
    "Alice": 25,
    "Bob": 30,
    "Carol": 28,
    "David": 35
}

for nome, idade in pessoas.items():
    print(f"{nome} tem {idade} anos.")

# Saída:
# Alice tem 25 anos.
# Bob tem 30 anos.
# Carol tem 28 anos.
# David tem 35 anos.
```

No último exemplo, usamos o método `items()` para obter os pares chave-valor do dicionário, e em seguida, utilizamos duas variáveis (`nome` e `idade`) para armazenar cada chave e valor durante a iteração.

## **Conclusão**

O `for` é uma estrutura poderosa e muito útil em Python, permitindo realizar tarefas repetitivas de forma simples e elegante. Ele é especialmente útil quando se lida com coleções de elementos, como listas, strings e dicionários.
