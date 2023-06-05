# Tipo de dado: `int`

Você já deve saber um pouco sobre como os computadores realizam cálculos em números. Talvez você já tenha ouvido falar do **sistema binário** e saiba que é o sistema que os computadores usam para armazenar números e que esses computadores podem realizar qualquer operação neles.

Não exploraremos as complexidades dos sistemas numéricos de posição aqui, mas vamos dizer que os números manipulados por computadores modernos são de dois tipos:

- Inteiros, ou seja, aqueles que são desprovidos da parte fracionária;

- E números de ponto flutuante (ou simplesmente float), que contêm (ou são capazes de conter) a parte fracionária.

Essa definição não é totalmente precisa, mas é suficiente por enquanto. A distinção é muito importante, e a fronteira entre esses dois tipos de números é muito rigorosa. Esses dois tipos de números diferem significativamente na forma como são armazenados na memória do computador e na faixa de valores aceitáveis.

A característica do valor numérico que determina seu tipo, intervalo e aplicação é chamada de tipo.

Se você codificar um literal e o colocar dentro do código Python, a forma do literal determinará a representação (tipo) que o Python usará para **armazená-lo na memória**.

Por enquanto, vamos deixar os números de ponto flutuante de lado (vamos voltar para eles em breve) e considerar a questão de como o Python reconhece números inteiros.

O processo é quase como se você os escrevesse com um lápis no papel - é simplesmente uma sequência de dígitos que compõe o número. Mas há uma reserva - você não deve inserir caracteres que não sejam dígitos dentro do número.

Tomemos, por exemplo, o número onze milhões cento e onze mil cento e onze. Se você pegasse um lápis na mão agora, escreveria o número assim: `11,111,111`, ou assim: `11.111.111`, ou até mesmo assim: `11 111 111`.

É claro que essa disposição facilita a leitura, especialmente quando o número consiste em muitos dígitos. No entanto, o Python não aceita coisas como essas. É **proibido**. O que o Python permite, porém, é o uso de **sublinhados em literais numéricos**.

Portanto, você pode escrever este número da seguinte forma: `11111111` ou desta forma: `11_111_111`.

> O Python 3.6 introduziu sublinhados em literais numéricos, permitindo a colocação de sublinhamentos únicos entre dígitos e especificadores de base para melhorar a legibilidade. Esse recurso não está disponível em versões mais antigas do Python.

E como codificamos números negativos em Python? Como de costume - adicionando um sinal de menos. Você pode escrever: `-11111111` ou `-11_111_111`.

Os números positivos não precisam ser precedidos pelo sinal de mais, mas é permitido, se você quiser fazer isso. As seguintes linhas descrevem o mesmo número: `+11111111` e `11111111`.

### **Números octais e hexadecimais**

Há duas convenções adicionais em Python que são desconhecidas para o mundo da matemática. A primeira nos permite usar números em uma representação **octal**.

Se um número inteiro for precedido por um prefixo `0O` ou `0o` (zero-o), ele será tratado como um valor octal. Isso significa que o número deve conter dígitos retirados apenas do intervalo [0..7].

`0o123` é um número octal com um valor (decimal) igual a `83`.

A função print() faz a conversão automaticamente. Tente isto:

```python
print(0o123)
```

A segunda convenção nos permite usar números **hexadecimais**. Esses números devem ser precedidos pelo prefixo `0x` ou `0X` (zero-x).

`0x123` é um número hexadecimal com um valor (decimal) igual a `291`. A função print() também pode gerenciar esses valores. Tente isto:

```python
print(0x123)

# 291
```