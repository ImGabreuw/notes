# Tipo de dado: `float`

O tipo `float` é projetado para representar e armazenar os números que (como diria um matemático) têm uma **fração decimal não vazia**.

Eles são os números que têm (ou podem ter) uma parte fracionária após o ponto decimal e, embora essa definição seja muito ruim, certamente é suficiente para o que queremos discutir.

Sempre que usamos um termo como dois e meio ou menos o ponto zero quatro, pensamos em números que o computador considera números de **ponto flutuante**:

```python
2.5
-0.4
```

> Dois e meio parecem normais quando você o escreve em um programa, embora se o seu idioma nativo preferir usar vírgula em vez de um ponto no número, você deve garantir que seu **número não contenha nenhuma vírgula**.

O Python não aceitará isso, ou (em casos muito raros, mas possíveis) pode interpretar mal suas intenções, pois a própria vírgula tem seu próprio significado reservado em Python.

Se você quiser usar apenas um valor de dois e meio, escreva-o como mostrado acima. Observe mais uma vez: há um ponto entre 2 e 5, não uma vírgula.

Como você provavelmente pode imaginar, o valor de zero ponto quatro poderia ser escrito em Python como:

0.4
Mas não se esqueça desta regra simples - você pode omitir zero quando for o único dígito antes ou depois da vírgula.

Em essência, você pode escrever o valor `0.4` como:

```python
.4
```

Por exemplo: o valor de `4.0` pode ser escrito como:

```python
4.
```

Isso não mudará seu tipo nem seu valor.

### **Int e Float**

O ponto decimal é essencial para reconhecer números de ponto flutuante no Python.

Veja estes dois números:

```python
4
4.0
```

Você pode pensar que eles são exatamente iguais, mas Python os vê de uma maneira completamente diferente.

`4` é um número **inteiro**, enquanto `4.0` é um número de **ponto flutuante**.

O ponto é o que faz um ponto flutuante.

Por outro lado, não são apenas os pontos que fazem um float. Você também pode usar a letra e.

Quando você quiser usar números muito grandes ou muito pequenos, use **notação científica**.

Veja, por exemplo, a velocidade da luz, expressa em metros por segundo. Escrito diretamente, ficaria assim: `300000000`.

Para evitar escrever tantos zeros, os livros de física usam uma forma abreviada, que você provavelmente já viu: `3 x 10^8`.

Diz: Três vezes dez à potência de oito.

Em Python, o mesmo efeito é obtido de uma maneira ligeiramente diferente - veja:

```python
3E8
```

A letra `E` (você também pode usar a letra minúscula `e` - vem da palavra expoente) é um registro conciso da frase vezes dez à potência de.

Nota:

- O **expoente** (o valor após o E) tem que ser um número inteiro;

- A **base** (o valor na frente do E) pode ser um número inteiro ou um valor flutuante.

### **Codificação de flutuantes**

Vamos ver como essa convenção é usada para registrar números muito pequenos (no sentido de seu valor absoluto, que é próximo de zero).

Uma constante física chamada constante de Planck (e indicada como _h_), de acordo com os livros didáticos, tem o valor de: `6,62607 x 10^-34`.

Se você gostaria de usá-lo em um programa, escreva desta forma:

```python
6.62607E-34
```

> O fato de você ter escolhido uma das formas possíveis de codificação de valores flutuantes não significa que o Python a apresentará da mesma forma.

Às vezes, o Python pode escolher uma **notação diferente** da sua.

Por exemplo, digamos que você decidiu usar o seguinte literal de flutuação:

```python
0.0000000000000000000001
```

Quando você executa esse literal pelo Python:

```python
print(0.0000000000000000000001)
```

Esse é o resultado:

```python
1e-22
```

O Python sempre escolhe **a forma mais econômica de apresentação do número**, e você deve levar isso em consideração ao criar literais.
