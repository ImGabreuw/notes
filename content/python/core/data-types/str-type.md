# Tipo de dado: `str` (String)

Strings são usadas quando você precisa processar texto (como nomes de todos os tipos, endereços, romances, etc.), não números.

Você já sabe um pouco sobre eles, por exemplo, que **strings precisam de aspas (simples ou duplas)** assim como floats precisam de pontos.

Esta é uma string muito típica: `"Eu sou uma string."`

No entanto, há um porém. O problema é como codificar uma citação dentro de uma string que já está delimitada por aspas.

Vamos supor que queremos imprimir uma mensagem bem simples dizendo:

```python
Eu gosto de "Monty Python"
```

Como fazemos isso sem gerar um erro? Há duas soluções possíveis.

A primeira é baseada no conceito que já conhecemos do **caractere de escape**, que você deve lembrar que é representado pela **barra invertida**. A barra invertida também pode escapar das aspas. Uma citação precedida por uma barra invertida muda seu significado ‒ não é um delimitador, mas apenas uma citação. Isso funcionará como pretendido:

```python
print("Eu gosto \"Monty Python\"")
```

> Há duas aspas com escape dentro da string - você consegue ver as duas?

A segunda solução pode ser um pouco surpreendente. O Python pode usar **um apóstrofo em vez de uma aspas**. Qualquer um desses caracteres pode delimitar cadeias de caracteres, mas você deve ser **coerente**.

Se você abrir uma sequência com aspas, será necessário fechá-la com aspas.

Se você iniciar uma sequência de caracteres com um apóstrofo, precisará terminá-la com um apóstrofo.

Este exemplo também funcionará:

```python
print('Eu gosto "Monty Python"')
```

> Você não precisa de usar escape aqui.

### **Codificando strings**

Agora, a próxima pergunta é: como você incorpora um apóstrofo em uma string colocada entre apóstrofos?

Você já deve saber a resposta ou, para ser mais preciso, duas respostas possíveis.

Tente imprimir uma string contendo a seguinte mensagem:

```python
Eu sou Monty Python.
```

```python
print('I\'m Monty Python.')

# I'm Monty Python.
```
