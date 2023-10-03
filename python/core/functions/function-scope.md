# Escopo de funções

Dentro de uma função, você pode criar variáveis que são consideradas locais a essa função. Isso significa que essas variáveis só são acessíveis dentro do corpo da função e não podem ser usadas fora dela.

```python
def saudacao():
    mensagem = "Olá, como vai?"
    print(mensagem)

saudacao()     # Saída: Olá, como vai?
print(mensagem) # Erro: nome 'mensagem' não está definido
```

No exemplo acima, a variável `mensagem` está definida apenas dentro da função `saudacao`. Tentar acessá-la fora da função resultará em um erro, pois ela não existe no escopo global.

## **Escopo de funções aninhadas**

Funções podem ser aninhadas dentro de outras funções. Uma função interna pode acessar variáveis do escopo da função externa, mas a função externa não pode acessar variáveis do escopo da função interna.

```python
def externa():
    x = 10

    def interna():
        y = 5
        print(x + y)  # Acesso a 'x' do escopo externo e 'y' do escopo interno

    interna()

externa()  # Saída: 15
print(x)   # Erro: nome 'x' não está definido no escopo global
```

No exemplo acima, a função interna `interna()` tem acesso à variável `x` do escopo da função externa `externa()`. No entanto, a função externa não pode acessar a variável `y` do escopo da função interna.

## **Uso da palavra-chave `global`**

A palavra-chave `global` é usada para indicar que uma variável dentro de uma função está se referindo à variável global de mesmo nome, em vez de criar uma nova variável local.

```python
x = 10

def altera_global():
    global x
    x = 20

altera_global()
print(x)  # Saída: 20
```

No exemplo acima, ao usar `global x` dentro da função `altera_global()`, estamos informando ao Python que a variável `x` a ser modificada é a variável global, e não criar uma nova variável local.

Lembre-se de que o uso excessivo de variáveis globais não é recomendado, pois pode tornar o código mais difícil de entender e depurar. É uma prática melhor passar valores como argumentos para funções e retornar valores delas em vez de depender muito de variáveis globais.