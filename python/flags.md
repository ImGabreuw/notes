# Flags

Em Python, uma "flag" é um termo usado para indicar ou marcar um estado específico em um programa. É uma técnica usada para sinalizar que um determinado evento ocorreu ou uma condição foi atendida durante a execução do código.

Uma flag pode ser qualquer variável ou objeto que armazena um valor que representa o estado desejado. Geralmente, a flag é inicializada com um valor padrão que indica que o evento ainda não ocorreu ou a condição não foi satisfeita. Em seguida, durante a execução do código, a flag é atualizada para indicar que o evento ocorreu ou a condição foi atendida.

**Exemplo:**

```python
condicao = True

passou_no_if = None

if condicao:
    passou_no_if = True
    ...
else:
    ...
```

A variável `passou_no_if` é usada como uma flag para indicar se o bloco do `if` foi executado ou não. Inicialmente, ela é definida como `None`, indicando que o bloco do `if` ainda não foi executado. Se a condição `condicao` for verdadeira, o bloco do `if` é executado e a flag `passou_no_if` é atualizada para `True`, indicando que o bloco do `if` foi passado. Se a condição for falsa, o bloco `else` é executado.

Em seguida, é verificado se a flag `passou_no_if` não é `None`, o que significa que o bloco do `if` foi passado em algum momento. O resultado impresso será "Passou no if? True".

As flags são úteis para monitorar o fluxo de execução do programa, rastrear eventos importantes ou controlar o comportamento do código com base em determinadas condições. Elas são especialmente úteis quando a depuração completa não é necessária, mas ainda queremos ter informações sobre o estado do programa em pontos-chave durante a execução. As flags ajudam a tornar o código mais claro, organizado e facilitam a compreensão do comportamento do programa.