# Introdução à programação

> ## **Funcionamento de um programa de computador**

**Um programa torna um computador utilizável**. Sem um programa, um computador, mesmo o mais poderoso, não passa de um objeto. Da mesma forma, sem um jogador, um piano nada mais é do que uma caixa de madeira.

Os computadores são capazes de executar tarefas muito complexas, mas essa capacidade não é inata. A natureza de um computador é bem diferente.

Ele pode executar apenas operações extremamente simples. Por exemplo, um computador não consegue entender sozinho o valor de uma função matemática complicada, embora isso não esteja além dos limites das possibilidades no futuro próximo.

Os **computadores contemporâneos só entendem operações como soma e divisão**, porém eles podem realizar essas operações inúmeras vezes e com muita rapidez.

### **Exemplo**

Imagine que você quer saber a velocidade média que atingiu durante uma longa jornada. Você sabe a distância, você sabe o tempo, você precisa da velocidade.

Naturalmente, o computador poderá calcular isso, mas não está ciente de coisas como distância, velocidade ou tempo. Portanto, é necessário instruir o computador para:

- aceitar um número que represente a distância;

- aceitar um número que represente o tempo de viagem;

- divida o valor anterior pelo último e armazene o resultado na memória;

- exibem o resultado (representando a velocidade média) em um formato legível.

**Essas quatro ações simples formam um programa**. Obviamente, esses exemplos não são formalizados e estão muito longe do que o computador pode entender, mas são bons o suficiente para serem traduzidos para um idioma que o computador possa aceitar.

**Linguagem** é a palavra-chave.

### **Linguagens Naturais vs Linguagens de Programação**

Uma **linguagem é um meio para expressar e registrar pensamentos**.

Há muitos idiomas ao nosso redor. Alguns deles não exigem fala nem escrita, como a linguagem corporal; é possível expressar seus sentimentos mais profundos sem dizer uma palavra.

Outra linguagem que você usa todos os dias é a sua língua nativa, que você usa para manifestar sua vontade e refletir sobre a realidade.

Os computadores também têm sua própria linguagem, chamada de **linguagem de máquina**, o qual é muito rudimentar.

Um **computador**, mesmo o mais tecnicamente sofisticado, **não tem nenhum traço de inteligência**.

Ele reconhece apenas comandos muitos simples, podemos imaginar que o computador responde a pedidos como "pegue esse número, divida por outro e salve o resultado".

Um **conjunto completo de comandos** conhecidos é chamado de **lista de instruções** (IL).

Diferentes tipos de computadores podem variar de acordo com o tamanho das ILs, e as instruções podem ser completamente diferentes em modelos diferentes.

Ambas as linguagens possuem vários idiomas distintos, porém a diferença está na forma que se desenvolveram no qual as linguagens naturais foram resultados de um processo natural e de constantes adaptações, já a outra foram desenvolvidas pelos seres humanos.

> ## **Definição de linguagem**

Cada linguagem (máquina ou natural, não importa) consiste nos seguintes elementos:

- Um **alfabeto**: um conjunto de símbolos usado para criar palavras de um determinado idioma (por exemplo, o alfabeto latino para inglês, o alfabeto cirílico para russo, o kanji para japonês e assim por diante)

- Um **lexis**: um conjunto de palavras que o idioma oferece aos usuários (por exemplo, a palavra "computador" vem do dicionário de português, enquanto "cmoptrue" não; o termo "chat" está presente nos dicionários de inglês e francês , mas com significados diferentes)

- Uma **sintaxe**: um conjunto de regras (formais ou informais, escritas ou intuitivamente) usadas para determinar se uma determinada sequência de palavras forma uma sentença válida (por exemplo, "eu sou uma píton" é uma frase sintaticamente correta, enquanto "eu uma píton estou" não é)

- Uma **semântica**: um conjunto de regras que determina se uma determinada frase faz sentido (por exemplo, "comi uma rosquinha" faz sentido, mas "uma rosquinha me comeu" não faz)

> ## **Linguagem da máquina vs. linguagem de alto nível**

A IL é, na verdade, o alfabeto de uma linguagem de máquina. Este é o conjunto de símbolos mais simples e primário que podemos usar para dar comandos a um computador. É a língua nativa do computador.

Infelizmente, essa língua nativa está muito longe de ser a língua nativa humana. Nós dois (computadores e seres humanos) precisamos de algo mais, uma linguagem comum para computadores e seres humanos, ou uma ponte entre os dois mundos diferentes.

Precisamos de uma linguagem na qual os **humanos possam escrever seus programas e de uma linguagem que os computadores possam usar para executar os programas**, uma linguagem que é muito mais complexa do que a linguagem de máquina e, no entanto, muito mais simples do que a linguagem natural.

Essas linguagens são frequentemente chamadas de **linguagens de programação de alto nível**. Eles são pelo menos um pouco semelhantes aos naturais, pois usam símbolos, palavras e convenções legíveis para os seres humanos. Essas linguagens permitem que seres humanos expressem comandos para computadores que são muito mais complexos do que aqueles oferecidos por ILs.

Um **programa escrito em uma linguagem de programação de alto nível** é chamado de **código-fonte** (em contraste com o código de máquina executado por computadores). Da mesma forma, o **arquivo que contém o código-fonte** é chamado de **arquivo-fonte**.

> ## **Compilação vs Interpretação**

A programação de computadores é o ato de compor os elementos da linguagem de programação selecionada na ordem que causará o efeito desejado. O efeito pode ser diferente em cada caso específico - depende da imaginação, do conhecimento e da experiência do programador.

Essa composição precisa ser correta em muitos sentidos:

- **Em ordem alfabética**: um programa precisa ser **escrito em um script reconhecível**, como romano, cirílico etc.

- **Lexicalmente**: cada linguagem de programação tem seu **dicionário** e você precisa dominá-lo; felizmente, é muito mais simples e menor do que o dicionário de qualquer linguagem natural;

- **Sintaticamente**: cada idioma possui **regras** a serem obedecidas obedecidas;

- **Semanticamente**: o programa tem que ter **coesão**.

Um programador está sujeito à cometer erros com cada um dos quatro tópicos citados o qual pode provocar a inutilidade do programa.

A **tradução da linguagem de programação** para a de máquina pode ser feita por um computador, tornando todo o processo rápido e eficiente.

Há duas maneiras diferentes de transformar um programa de uma linguagem de programação de alto nível em linguagem de máquina:

- **Compilação**: o código-fonte (escrito em linguagem de programação de alto nível) é convertido a partir de um programa chamado **compilador** em um arquivo contendo a máquina código (um executável `.exe` por exemplo) e pode ser compartilhado para qualquer pessoa.

- **Interpretação**: para cada execução do programa, é necessário que o **interpretador** faça a transformação do código-fonte em linguagem de máquina durante o tempo de execução desse programa. Desse modo, não é possível que o usuário final rode a aplicação sem ter o interpretador instalado na máquina

**Existem poucas linguagens que podem ser compiladas e interpretadas**. Normalmente, uma linguagem de programação é projetada com esse fator na mente dos criadores.

> ## **Função do interpretador**

Vamos supor mais uma vez que você escreveu um programa. Agora, ele existe como um **arquivo de computador**.

Um programa de computador é na verdade um pedaço de texto, então o código-fonte geralmente é colocado em **arquivos de texto**.

> **OBS**: o código-fonte precisa ser texto puro, sem nenhuma decoração, como fontes diferentes, cores, imagens incorporadas ou outras mídias. Agora você precisa chamar o intérprete e permitir que ele leia o arquivo de origem.

O **intérprete lê** o código-fonte de uma **forma comum na cultura ocidental**:

1. Da parte superior para a inferior

2. Da esquerda para a direita.

> Há algumas exceções em relação a essa abordagem

Primeiramente, o **intérprete analisa o código-fonte** para verificar se **não há nenhuma divergência em relação as regras do idioma** em questão (usando os quatro aspectos abordados anteriormente).

Se o compilador encontrar um erro, ele terminará o trabalho imediatamente. O único resultado nesse caso é uma **mensagem de erro**.

Em caso de erro, o intérprete informa a **localização do erro e a sua causa**. No entanto, essas mensagens podem ser enganosas, pois ele não é capaz de seguir suas intenções exatas e pode detectar erros a alguma distância de suas causas reais.

Por exemplo, se você tentar usar uma entidade de nome desconhecido, ela causará um erro, mas o erro será descoberto no local em que tenta usar a entidade, e não onde o nome da nova entidade foi introduzido.

Também é possível que uma parte significativa do código seja executada com sucesso antes que o intérprete encontre um erro. Esse é o comportamento normal neste modelo de execução.

> ## **Compilação vs Interpretação - Vantagens e Desvantagens**

### **Vantagens**

|                                                                                       Compilação                                                                                        |                                                                                                                    Interpretação                                                                                                                     |
| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|                                                                      a execução do código convertido é mais rápida                                                                      |                                                                             você pode executar o código assim que tiver concluído - não há fases adicionais de conversão                                                                             |
|                                                 apenas o usuário precisa ter o compilador - o usuário final pode usar o código sem ele                                                  | o código é armazenado usando linguagem de programação, e não linguagem de máquina - isso significa que pode ser executado em computadores que usam linguagens de máquina diferentes; você não compila seu código separadamente para cada arquitetura |
| o código traduzido é armazenado usando linguagem de máquina - como é muito difícil de entender, suas próprias invenções e truques de programação provavelmente permanecerão em segredo. |                                                                                                                         -/-                                                                                                                          |

### **Desvantagens**

|                                                                Compilação                                                                 |                                                                                 Interpretação                                                                                  |
| :---------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| a compilação em si pode ser um processo muito demorado - talvez você não consiga executar o código imediatamente após fazer uma alteração | não espere que a interpretação aumente seu código a alta velocidade - seu código vai compartilhar a capacidade do computador com o intérprete, então não pode ser muito rápido |
|            você precisa ter tantos compiladores quanto plataformas de hardware nas quais deseja que seu código seja executado             |                                                    Você e o usuário final precisam ter o intérprete para executar o código                                                     |

**Python é uma linguagem interpretada**. Isso significa que ele herda todas as vantagens e desvantagens descritas. Obviamente, ele adiciona alguns de seus recursos exclusivos aos dois conjuntos. Dessa forma, você precisa de um **interpretador Python** instalado na máquina para executar o código.

Devido a razões históricas, as linguagens projetadas para serem utilizadas na maneira de interpretação são frequentemente chamadas de **linguagens de script**, enquanto os **programas de origem** codificados usando-as **são chamados de scripts**.
