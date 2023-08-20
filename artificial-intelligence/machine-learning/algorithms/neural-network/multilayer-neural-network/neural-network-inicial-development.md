# Desenvolvimento inicial de uma rede multicamadas

## Determinando o Número de Neurônios na Camada Oculta

Definir o número ideal de neurônios nas camadas ocultas de uma rede neural é uma tarefa que exige um certo grau de experimentação e ajuste. Não existe uma fórmula única e rígida para determinar esse número com precisão, mas algumas regras práticas e abordagens podem orientar esse processo.

Uma regra geral sugere que o número de neurônios nas camadas ocultas deve estar situado entre o número de neurônios na camada de entrada (atributos) e o número de neurônios na camada de saída (classes ou valores a serem previstos). Entretanto, é importante ressaltar que essa é uma regra prática, não uma fórmula matemática exata.

Uma abordagem comum é usar uma proporção entre os números de neurônios de entrada e saída. Um valor típico pode ser escolher um número de neurônios ocultos que seja aproximadamente duas vezes a média entre o número de neurônios de entrada e o número de neurônios de saída:

$$
\text{Neurônios ocultos} = \frac{\text{Neurônios de entrada} + \text{Neurônios de saída}}{2}
$$

> Caso o resultado para $\text{Neurônios ocultos}$ seja decimal, é recomendável arredondar para cima.

Porém, essa abordagem pode variar conforme a complexidade do problema e a quantidade de dados disponíveis. Problemas mais complexos podem requerer um número maior de neurônios nas camadas ocultas para capturar padrões intricados.

É crucial lembrar que a otimização de hiperparâmetros, incluindo o número de neurônios nas camadas ocultas, demanda experimentação e validação cruzada. Testar diferentes configurações e avaliar o desempenho do modelo em conjuntos de validação ou teste é essencial para determinar a melhor arquitetura de rede para o problema em questão.

## Considerações

- Problemas linearmente separáveis podem ser tratados sem camadas ocultas. Nesses casos, redes neurais Perceptron de uma única camada são adequadas.

- A técnica de _cross validation_ (validação cruzada) é recomendada para definir a configuração ideal.

- A Automação do Aprendizado de Máquina (AutoML) oferece abordagens automatizadas para otimizar a construção de modelos.

- Em conjuntos de dados pequenos, uma rede neural com duas camadas geralmente produz resultados satisfatórios.

- Pesquisas em _deep learning_ indicam que o número de camadas está associado à complexidade do problema. Problemas mais complexos tendem a exigir mais camadas para uma resolução adequada.

- Uma sugestão inicial para configurar uma rede neural envolve:

  1. Utilizar a fórmula abaixo para determinar o número de neurônios na camada oculta:

     $$
     \text{Neurônios ocultos} = \frac{\text{Neurônios de entrada} + \text{Neurônios de saída}}{2}
     $$

  2. Empregar a **função de ativação ReLU** (Rectified Linear Unit) nas camadas ocultas.

  3. Utilizar a **função de ativação Sigmoid** na camada de saída, se houver apenas um neurônio de saída. Para múltiplos neurônios de saída, considerar a **função de ativação softmax**.
