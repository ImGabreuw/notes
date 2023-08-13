# Valores padrão para parâmetros em funções

Ao definir uma função em Python, você pode atribuir valores padrão aos seus parâmetros. Isso significa que, se um valor não for fornecido para um parâmetro quando a função é chamada, o valor padrão será usado em seu lugar.

Exemplo:

```python
def saudacao(nome, mensagem="Olá"):
    print(f"{mensagem}, {nome}!")

saudacao("Alice")          # Saída: Olá, Alice!
saudacao("Bob", "Oi")     # Saída: Oi, Bob!
```

No exemplo acima, a função `saudacao` possui um parâmetro chamado `mensagem` com um valor padrão de "Olá". Se nenhum valor for fornecido para `mensagem` ao chamar a função, o valor padrão "Olá" será usado. No entanto, se um valor for fornecido, esse valor substituirá o valor padrão.

Os valores padrão podem ser muito úteis para tornar suas funções mais flexíveis e permitir que elas sejam usadas de maneira mais conveniente.

## **NoneType e None**

Em Python, o valor `None` é usado para representar a ausência de valor ou um valor nulo. É usado quando você deseja indicar que uma variável ou um objeto não tem um valor válido.

Ao definir um valor padrão para um parâmetro, você pode usar `None` para indicar que nenhum valor foi especificado. Isso é útil quando você quer distinguir entre a ausência de valor e um valor específico.

```python
def imprimir_nome(nome, sobrenome=None):
    if sobrenome is None:
        print(f"Nome: {nome}")
    else:
        print(f"Nome completo: {nome} {sobrenome}")

imprimir_nome("João")                 # Saída: Nome: João
imprimir_nome("Maria", "Silva")       # Saída: Nome completo: Maria Silva
```

No exemplo acima, a função `imprimir_nome` tem um parâmetro opcional `sobrenome` com valor padrão `None`. Se nenhum sobrenome for fornecido, a função imprime apenas o nome. Se um sobrenome for fornecido, a função imprime o nome completo.

Essa abordagem ajuda a diferenciar entre casos em que o usuário não fornece um valor para o parâmetro e casos em que um valor específico é fornecido (mesmo que seja `None`).