# Validação cruzada

A validação cruzada, também conhecida como _k-fold cross validation_, é uma técnica de avaliação de modelos que visa estimar o desempenho de um algoritmo de aprendizado de máquina de forma mais robusta e confiável. Ela é especialmente útil quando se deseja ter uma visão mais realista do desempenho do modelo em dados não vistos.

A ideia principal do _k-fold cross validation_ é dividir o conjunto de dados em $k$ partes (chamadas "folds") de tamanho aproximadamente igual. O número $k$ é um hiperparâmetro que determina quantas vezes o processo de treinamento e avaliação será repetido, com isso haverá $k$ resultados (denotado por teste). Cada parte ou fold é utilizada como conjunto de validação uma vez, enquanto as outras $k-1$ partes são usadas como conjunto de treinamento.

> O número de 30 testes é amplamente adotado na comunidade científica para comprovar a eficácia ou aprimoramento de modelos.

O processo do _k-fold cross validation_ pode ser resumido em passos:

1. O conjunto de dados é dividido em $k$ partes.
2. O modelo é treinado $k$ vezes, sendo que em cada iteração, uma parte diferente é utilizada como conjunto de validação e as outras partes são usadas como conjunto de treinamento.
3. As métricas de desempenho (como acurácia, precisão, recall, etc.) são calculadas para cada iteração.
4. Ao final das $k$ iterações, a média das métricas de desempenho é calculada, fornecendo uma estimativa mais estável do desempenho do modelo.

Vantagens do _k-fold cross validation_:

- Melhor estimativa de desempenho: Ao repetir o processo $k$ vezes, o desempenho do modelo é avaliado em várias partes diferentes do conjunto de dados, reduzindo a influência de variações específicas de um único conjunto de treinamento/validação.
- Uso mais eficiente dos dados: Como todos os exemplos são usados tanto para treinamento quanto para validação, o conjunto de dados é melhor aproveitado.
- Menos sensível à divisão de dados: A escolha de como dividir os dados entre treinamento e validação pode ser crítica. O _k-fold cross validation_ ajuda a mitigar esse problema.

No entanto, é importante notar que a validação cruzada k-fold pode ser computacionalmente intensiva, pois requer o treinamento do modelo $k$ vezes. Além disso, o valor de $k$ deve ser escolhido com cuidado, pois valores muito baixos podem levar a estimativas enviesadas e valores muito altos podem aumentar o custo computacional. Em muitos casos, o valor de $k$ escolhido é 5 ou 10, mas essa escolha pode variar dependendo do tamanho do conjunto de dados e das características do problema.