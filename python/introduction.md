# Introdução ao Python

> ## **Definição**

- Linguagem de programação de alto nível

- Fortemente tipada

- Interpretada e orientada à objetos

- Linguagem de _script_

- É gratuito e multiplataforma

### **_Python 2_ e _Python 3_**

Existem dois tipos principais de Python, chamados _Python 2_ e _Python 3_.

Python 2 é uma versão mais antiga do Python original. Seu desenvolvimento foi intencionalmente interrompido, embora isso não signifique que não há atualizações para ele. Pelo contrário, as atualizações são emitidas regularmente, mas não pretendem modificar a linguagem de forma significativa. Eles preferem corrigir bugs e falhas de segurança recém-descobertos. O caminho de desenvolvimento do Python 2 já chegou a um impasse, mas o próprio Python 2 ainda está vivo.

**Python 3** é a **versão atual** da linguagem. Ela está seguindo seu próprio caminho evolutivo, criando seus próprios padrões e hábitos.

Essas duas versões do Python **não são compatíveis entre si**. Os scripts Python 2 não serão executados em um ambiente Python 3 e vice-versa. Se você quiser que o código Python 2 antigo seja executado por um intérprete Python 3, a única solução possível é reescrevê-lo, não do zero, é claro, pois grandes partes do código podem permanecer intocadas, mas você precisa revisar todo o código para encontrar todas as incompatibilidades possíveis. Infelizmente, esse processo não pode ser totalmente automatizado.

É muito difícil, muito demorado, muito caro e muito arriscado migrar uma aplicação antiga do Python 2 para uma nova plataforma, e é até possível que a reescrita do código introduza novos bugs nela. É mais fácil e mais sensato deixar esses sistemas em paz e melhorar o intérprete atual, em vez de tentar trabalhar dentro do código-fonte que já está em funcionamento.

O Python 3 não é apenas uma versão melhor do Python 2, é uma linguagem completamente diferente, embora muito semelhante ao seu antecessor. Quando você os observa à distância, eles parecem ser os mesmos, mas quando você olha de perto, você percebe muitas diferenças.

> ## **Implementações do Python**

Além de Python 2 e Python 3, há mais de uma versão de cada.

> Uma implementação do Python se refere a "um programa ou ambiente, que oferece suporte para a execução de programas escritos na linguagem Python, conforme representado pela implementação de referência do CPython". - página wiki do Python

**CPython** é a **implementação tradicional do Python**, é a versão de referência da linguagem de computação Python de _Guido van Rossum_, e na maioria das vezes é chamada apenas de "Python".

> Ao citar o nome _CPython_, é provavelmente usado para diferenciá-lo de outras implementações alternativas não tradicionais.

Existem Pythons mantidos por pessoas reunidas em torno do **PSF** (_Python Software Foundation_), uma **comunidade que tem como objetivo desenvolver, melhorar, expandir e popularizar o Python e seu ambiente**. O presidente do PSF é o próprio _Guido von Rossum_ e, por essa razão, esses Pythons são chamados de **canônicos**. Eles também são considerados Pythons de referência, pois qualquer outra implementação da linguagem deve seguir todos os padrões estabelecidos pelo PSF.

_Guido van Rossum_ usou **linguagem de programação "C" como base para implementar a primeira versão** de sua linguagem, e essa decisão ainda está em vigor. **Todos os Pythons provenientes do PSF são escritos na linguagem "C"**.

Há muitas razões para essa abordagem. Uma delas (provavelmente a mais importante) é que, graças a ela, o Python pode ser **facilmente portado e migrado para todas as plataformas** com a capacidade de compilar e executar programas de linguagem "C" (praticamente todas as plataformas têm esse recurso, o que abre muitas expansões oportunidades para o Python).

É por isso que a **implementação do PSF é conhecida como CPython**. Este é o Python mais influente entre todos os Pythons do mundo.

Os membros da família Python e algumas das implementações alternativas mais populares do Python:

### **Cpython**

Cython é uma das possíveis soluções para a mais dolorosa das características da Python - a falta de eficiência. Cálculos matemáticos grandes e complexos podem ser facilmente codificados em Python (muito mais fácil do que em "C" ou em qualquer outra linguagem tradicional), mas a execução de código resultante pode ser extremamente demorada.

Como essas duas contradições são reconciliadas? Uma solução é escrever suas ideias matemáticas usando Python, e quando você tiver certeza absoluta de que seu código está correto e produz resultados válidos, você pode convertê-lo em "C". Certamente, "C" será executado muito mais rápido do que Python puro.

Isso é o que o Cython se destina a fazer para converter automaticamente o código Python (limpo e claro, mas não muito rápido) em código "C" (complicado e falante, mas ágil).

### **Jython**

Outra versão do Python é chamada Jython.

"J" é para "Java". Imagine um Python escrito em Java em vez de C. Isso é útil, por exemplo, se você desenvolver sistemas grandes e complexos escritos inteiramente em Java e quiser adicionar alguma flexibilidade Python a eles. O CPython tradicional pode ser difícil de integrar a esse ambiente, pois C e Java vivem em mundos completamente diferentes e não compartilham muitas ideias comuns.

O Jython pode se comunicar com a infraestrutura Java atual com mais eficiência. É por isso que alguns projetos acham útil e necessário.

Observação: a implementação atual do Jython segue os padrões do Python 2. Até o momento, não há nenhum Jython em conformidade com o Python 3.

### **Pypy**

O logotipo do PyPy é um jogo de quebra-cabeça. Você pode resolver o problema? Isso significa: um Python dentro de um Python. Em outras palavras, ele representa um ambiente Python escrito em uma linguagem semelhante a Python chamada RPython (Python restrito). Na verdade, é um subconjunto do Python.

O código fonte do PyPy não é executado na maneira de interpretação, mas, em vez disso, é traduzido para a linguagem de programação C e executado separadamente.

Isso é útil porque se você quiser testar qualquer novo recurso que possa ser (mas não precise ser) introduzido na implementação principal do Python, é mais fácil verificar isso com o PyPy do que com o CPython. É por isso que o PyPy é mais uma ferramenta para as pessoas que desenvolvem o Python do que para o restante dos usuários.

Isso não torna o PyPy menos importante ou menos sério do que o CPython, é claro.

Além disso, o PyPy é compatível com a linguagem Python 3.

Há muito mais Pythons diferentes no mundo. Você os encontrará se olhar, mas este curso se concentrará no CPython.

### **MicroPython**

O MicroPython é uma implementação eficiente de software de código aberto do Python 3, que é otimizada para ser executada em microcontroladores. Ele inclui um pequeno subconjunto da biblioteca padrão do Python, mas é amplamente embalado com um grande número de recursos, como prompt interativo ou números inteiros de precisão arbitrária, bem como módulos que dão ao programador acesso ao hardware de nível inferior.

Originalmente criado por Damien George, um programador australiano que, no ano de 2013, realizou uma campanha bem-sucedida no Kickstarter e lançou a primeira versão do MicroPython com uma placa de desenvolvimento baseada em STM32F4 chamada pyboard.

Em 2017, o MicroPython foi usado para criar o CircuitPython, outra linguagem de programação de código aberto executada no hardware do microcontrolador, que é um derivado da linguagem MicroPython.

> ## **Curiosidades**

Criado pelo holandês _Guido Van Rossum_ em 1989 no Instituto de Pesquisa Nacional para Matemática e Ciência da Computação (CWI).

Apesar da logo ser a cobra Piton, o nome Python foi uma homenagem a série de comédia da BBC chamada _Monty Python's Flying Circus_.

As circunstâncias em que o Python foi criado são um pouco intrigantes. De acordo com Guido van Rossum:

> "Em dezembro de 1989, eu estava procurando por um projeto de programação "hobby" que me mantivesse ocupado durante a semana por volta do Natal. Meu escritório (...) ficava fechado, mas eu tinha um computador em casa e não muito mais. Decidi escrever um intérprete para a nova linguagem de script em que tenho pensado ultimamente: um descendente da ABC que agradaria a hackers Unix/C. Eu escolhi o Python como um título de trabalho para o projeto, por ser um pouco irreverente (e um grande fã de Circo Voador de Monty Python)." - Guido van Rossum

> ## **Objetivos**

Em 1999, _Guido van Rossum_ definiu os seguintes objetivos para o Python:

- Uma **linguagem fácil e intuitiva**, tão eficiente quanto a dos grandes concorrentes;

- **Código aberto**, para que qualquer pessoa possa contribuir com seu desenvolvimento;

- Código tão **compreensível** quanto o simples inglês;

- Adequado **para tarefas diárias**, permitindo tempos de desenvolvimento curtos.

Cerca de 20 anos depois, fica evidente que todas essas intenções foram cumpridas. Algumas fontes dizem que Python é a linguagem de programação mais popular do mundo.

De qualquer forma, ele ainda ocupa uma posição alta entre os dez primeiros da Popularidade de [Linguagem de Programação PYPL](https://pypl.github.io/PYPL.html) e do [Índice da Comunidade de Programação TIOBE](https://www.tiobe.com/tiobe-index/).

Python não é mais uma linguagem jovem, já madura e confiável.

> ## **Áreas de atuação do Python**

- **Mecanismos de pesquisa**

- **Armazenamento em nuvem e ferramentas**

- **Desenvolvimento Web**: Django, Flask, Pyramid, Tornado

- **Desenvolvimento Desktop**: Tkinter, PyQT, Kivy

- **Ciência de dados** (mais influente): SciPy, Pandas, IPython

- **Automação**: desenvolvimento de scripts para automação de tarefas

Apesar da crescente popularidade do Python, ainda há alguns nichos nos quais o **Python está ausente** ou é raramente visto:

- **Programação de baixo nível** (às vezes chamada de programação "próxima ao metal"): se você quiser implementar um driver ou mecanismo gráfico extremamente eficaz, não usará Python;

- **Desenvolvimento mobile**: embora esse território ainda esteja esperando para ser conquistado pelo Python, provavelmente acontecerá algum dia.

> ## **Empresas que utilizam Python**

- YouTube

- Canonical

- Netflix

- Nasa

- Instagram

- Yahoo

- Microsoft

- Globo

- Magazine Luisa

> ## **Alternativas do Python**

O Python tem dois concorrentes diretos, com propriedades e predisposições comparáveis:

- **Perl**: uma linguagem de script criada originalmente por _Larry Wall_;

- **Ruby**: uma linguagem de script criada por _Yukihiro Matsumoto_.

O Perl é mais **tradicional** e mais **conservador** do que o Python, e se assemelha a algumas das linguagens antigas derivadas da **linguagem de programação clássica C**.

Em contrapartida, o Ruby é mais **inovador** e mais cheio de novas ideias do que o Python.

O próprio Python está no meio termo entre essas duas linguagens.

Há várias discussões sobre a superioridade de um desses três sobre os outros na Internet.

> ## **Primeiros passos**

1. Criar um aquivo com a extensão `.py`

2. Inserir o seguinte código no arquivo

   ```python
   print("Hello World!")
   ```

3. Executar o arquivo:

   ```shell
   $ python [nome do arquivo]
   ```

   ```shell
   $ python main.py
   # Hello World!
   ```
