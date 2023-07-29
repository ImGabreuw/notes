# Conversão de atributos categóricos com One-Hot Encoding

A técnica _One-Hot Encoding_ é um método de transformação utilizado para **converter atributos categóricos em valores numéricos**, permitindo que esses atributos sejam utilizados em algoritmos de aprendizado de máquina que requerem dados numéricos como entrada.

O processo de _One-Hot Encoding_ envolve três etapas principais:

1. **Identificação das categorias únicas**: Primeiramente, é feita a identificação de todas as categorias únicas presentes no atributo categórico.

2. **Criação de novas variáveis binárias**: Para cada categoria única, é criada uma nova variável binária, também chamada de _"dummy variable"_ ou "indicadora". Essa variável assume o valor 1 se a instância pertence à categoria correspondente e 0 caso contrário.

3.**Substituição das categorias pelo código one-hot**: As categorias originais são substituídas pelas novas variáveis binárias criadas.

Essa técnica é especialmente útil quando os atributos categóricos **não têm uma ordem específica** e quando **não se deseja impor uma relação de ordem a eles**. Além disso, ela permite que algoritmos de aprendizado de máquina processem esses dados de forma adequada, já que muitos desses algoritmos requerem que os atributos sejam numéricos.

Veja um exemplo para ilustrar o processo:

Suponha que temos um atributo categórico chamado "cor" com as categorias "vermelho", "azul" e "verde". Após aplicar o _One-Hot Encoding_, teremos três novas colunas binárias representando essas categorias:

| Cor      | Vermelho | Azul | Verde |
| -------- | -------- | ---- | ----- |
| Vermelho | 1        | 0    | 0     |
| Azul     | 0        | 1    | 0     |
| Verde    | 0        | 0    | 1     |

Neste exemplo, cada instância possui apenas uma das novas variáveis com valor 1, indicando a categoria à qual pertence.

A codificação _One-Hot Encoding_ é amplamente utilizada em tarefas de pré-processamento de dados em ciência de dados e aprendizado de máquina, sendo uma das abordagens mais comuns para lidar com atributos categóricos em modelos preditivos. No entanto, é importante considerar o **possível aumento na dimensionalidade dos dados**, principalmente quando há muitas categorias únicas, o que pode levar a **problemas de desempenho** em algoritmos de machine learning.

Na literatura de pré-processamento de dados, a maneira mais utilizada para o conversão de atributos categóricos é primeiro aplicar o _Label Encoding_ para converter o atributo categórico em uma valor inteiro simples e em seguida aplicar a técnica de _One-Hot Encoding_.
