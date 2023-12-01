# Dicionário

O dicionário é uma estrutura de dados em Python que consiste em pares de "chave" e "valor". A "chave" é única e pode ser de qualquer tipo imutável, como `str`, `int`, `float`, `bool`, `tuple` e outros.

Existem duas formas de criar um dicionário:

- Utilizando a notação `{}` (chaves):

  ```python
  meu_dicionario = {"chave1": valor1, "chave2": valor2, ...}
  ```

- Utilizando a classe `dict()`:

  ```python
  meu_dicionario = dict(chave1=valor1, chave2=valor2, ...)
  ```

No primeiro caso, utilizamos chaves para delimitar o dicionário e separamos cada par de "chave: valor" por vírgula. Já no segundo caso, usamos a função `dict()` e passamos os pares "chave=valor" como argumentos nomeados.

Podemos acessar os valores de um dicionário utilizando suas chaves. Por exemplo:

```python
valor = meu_dicionario["chave"]
```

Também é possível adicionar, modificar e remover elementos de um dicionário. Para adicionar um novo par "chave: valor", basta atribuir um valor à chave:

```python
meu_dicionario["nova_chave"] = novo_valor
```

Para modificar o valor de uma chave existente, basta atribuir um novo valor a essa chave:

```python
meu_dicionario["chave_existente"] = novo_valor
```

Para remover um par "chave: valor", podemos utilizar o comando `del`:

```python
del meu_dicionario["chave"]
```

Os dicionários são muito úteis em situações em que precisamos armazenar e recuperar valores de forma eficiente, utilizando uma chave como referência.

# Exemplo

Um exemplo comum de aplicabilidade dos dicionários em Python é o armazenamento de informações sobre estudantes, utilizando os nomes como chaves e os dados como valores. Por exemplo:

```python
estudantes = {
    "João": {
        "idade": 20,
        "curso": "Engenharia",
        "nota": 8.5
    },
    "Maria": {
        "idade": 19,
        "curso": "Medicina",
        "nota": 9.2
    },
    "Carlos": {
        "idade": 21,
        "curso": "Direito",
        "nota": 7.8
    }
}
```

Nesse exemplo, cada estudante é representado por um dicionário interno, onde as chaves são "idade", "curso" e "nota", e os valores são as informações específicas de cada estudante. Podemos acessar os dados de um estudante específico utilizando as chaves correspondentes:

```python
print(estudantes["João"]["curso"])  # Saída: Engenharia
print(estudantes["Maria"]["nota"])  # Saída: 9.2
```