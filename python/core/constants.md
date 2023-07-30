# Constantes

Em Python, não há um conceito formal de variáveis constantes, como em algumas outras linguagens de programação. Ou seja, não há uma forma nativa de definir uma variável que seja imutável e cujo valor não possa ser alterado após a sua criação. No entanto, por convenção, é adotado o uso de letras maiúsculas no padrão SCREAMING_SNAKE_CASE para definir variáveis que devem ser tratadas como constantes.

Essa convenção é uma maneira de indicar que o valor da variável não deve ser alterado durante a execução do programa e que se comporta como uma constante. É uma prática seguida pelos programadores para tornar o código mais legível e facilitar a identificação de variáveis que não devem ser modificadas.

Exemplo:

```python
PI = 3.14159
URL = "https://www.python.org/"
MAX_VALUE = 100
```

Nesse exemplo, as variáveis `PI`, `URL` e `MAX_VALUE` são tratadas como constantes. Embora não haja mecanismo de imutabilidade incorporado no Python, a convenção de usar letras maiúsculas para essas variáveis ajuda a transmitir a intenção de que seus valores não devem ser alterados.

No entanto, é importante ressaltar que a convenção de usar letras maiúsculas para constantes é apenas uma convenção e não impede que o valor dessas variáveis seja alterado no código. Portanto, é responsabilidade do programador garantir que essas variáveis não sejam modificadas, caso essa seja a intenção.

Em algumas situações, é possível criar constantes imutáveis utilizando classes imutáveis ou outras técnicas específicas, mas isso foge do escopo da convenção de nomenclatura de variáveis em letras maiúsculas. A prática de adotar letras maiúsculas para constantes é uma maneira simples e eficaz de indicar que uma variável deve ser tratada como constante, mas sua imutabilidade real deve ser garantida pelo programador de forma explícita.