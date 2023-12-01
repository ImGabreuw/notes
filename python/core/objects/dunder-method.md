# Dunder method

Dunder (Double underscore) methods, também conhecidos como "métodos mágicos" ou "métodos especiais", são métodos predefinidos em Python que possuem um nome especial começando e terminando com dois underscores. Esses métodos permitem que você defina o comportamento específico de objetos em relação a operações comuns, como adição, subtração, iteração, comparação, entre outros.

Os _dunder methods_ são chamados automaticamente pelo interpretador Python em certas situações, quando certas operações são realizadas em objetos. Eles permitem que você adicione funcionalidades especiais às suas classes, tornando-as mais intuitivas e poderosas.

Por exemplo, o método `__init__` é um _dunder method_ especial que é chamado automaticamente quando um objeto é criado a partir de uma classe. Ele é usado para inicializar os atributos do objeto.

Aqui está um exemplo de uma classe `Ponto` com o método `__init__`:

```python
class Ponto:
    def __init__(self, x, y):
        self.x = x
        self.y = y
```

Ao criar um objeto `p` da classe `Ponto`:

```python
p = Ponto(2, 3)
```

O método `__init__` é chamado automaticamente, passando os argumentos `2` e `3` para `x` e `y`, respectivamente. Isso inicializa os atributos `x` e `y` do objeto `p`.

Existem muitos outros _dunder methods_ em Python, como `__str__`, que retorna uma representação em string do objeto, `__add__` para definir a adição entre objetos, `__len__` para retornar o tamanho do objeto, entre outros. Esses métodos permitem que você personalize o comportamento dos objetos em relação às operações comuns da linguagem.

Usando _dunder methods_, você pode criar classes que se comportam de maneira semelhante aos tipos de dados embutidos em Python, como listas, strings e dicionários, permitindo uma maior flexibilidade e expressividade na programação.