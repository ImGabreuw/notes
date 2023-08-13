# Introdução às funções

## **Definição**

Funções são blocos de código reutilizáveis que realizam tarefas específicas. Elas permitem que você agrupe um conjunto de instruções em um único bloco que pode ser chamado e executado repetidamente ao longo do seu programa.

No Python, as funções são definidas utilizando a palavra-chave `def` seguida pelo nome da função e, opcionalmente, parâmetros e um valor de retorno. A estrutura básica de uma função é a seguinte:

```python
def nome_da_funcao(parametros):
    # Código da função
    return valor_de_retorno
```

O nome da função segue as mesmas regras de nomenclatura de variáveis.

**Chamando uma função**

Para chamar uma função, você usa o nome da função seguido por parênteses, contendo os argumentos (valores) que você deseja passar para a função. Se a função não aceitar argumentos, você ainda precisa usar os parênteses vazios.

```python
nome_da_funcao(argumentos)
```

## **Exemplo**

```python
def imprimir(a, b, c):
    print(a)
    print(b)
    print(c)

imprimir("Olá", "como vai?", "Tudo bem?")
# Saída:
# Olá
# como vai?
# Tudo bem?
```

Neste exemplo, a função `imprimir` recebe três argumentos e imprime cada um deles em uma nova linha. Quando a função é chamada com os argumentos "Olá", "como vai?" e "Tudo bem?", ela imprime esses valores.

As funções são uma maneira poderosa de organizar seu código, tornando-o mais legível, reutilizável e modular. Elas também permitem que você divida tarefas complexas em partes menores e mais gerenciáveis.