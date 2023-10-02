# Normalização e padronização em algoritmo k-Nearest Neighbors

A normalização e a padronização são técnicas usadas para ajustar os atributos dos dados antes de aplicar o algoritmo k-Nearest Neighbors (kNN). Ambos os métodos têm o objetivo de colocar os atributos em uma escala comum para que eles não tenham pesos diferentes na medida de distância euclidiana, que é utilizada no kNN para encontrar os vizinhos mais próximos.

### **Normalização**

A normalização (também conhecida como "escalonamento") é o processo de ajustar os valores dos atributos para que eles estejam dentro de uma faixa específica, geralmente entre 0 e 1. Isso é feito aplicando a seguinte fórmula para cada atributo:

$$
X_{\text{norm}} = \frac{X - X_{\text{min}}}{X_{\text{max}} - X_{\text{min}}}
$$

Onde:

- $X_{\text{norm}}$ é o valor normalizado do atributo.

- $X$ é o valor original do atributo.

- $X_{\text{min}}$ é o valor mínimo do atributo no conjunto de dados.

- $X_{\text{max}}$ é o valor máximo do atributo no conjunto de dados.

Ao usar a normalização, todos os atributos são mapeados para o intervalo [0, 1], o que garante que os valores dos atributos não influenciem muito mais do que outros na medida de distância euclidiana.

### **Padronização**

A padronização (também conhecida como "z-score normalization") é o processo de ajustar os valores dos atributos para que eles tenham média zero e desvio padrão igual a um. Para cada atributo, a padronização é realizada aplicando a seguinte fórmula:

$$
X_{\text{pad}} = \frac{X - \mu}{\sigma}
$$

Onde:

- $X_{\text{pad}}$ é o valor padronizado do atributo.

- $X$ é o valor original do atributo.

- $\mu$ é a média dos valores do atributo no conjunto de dados.

- $\sigma$ é o desvio padrão dos valores do atributo no conjunto de dados.

A padronização é útil quando os atributos têm escalas diferentes e podem variar significativamente em magnitude. Ela coloca todos os atributos na mesma escala e facilita a comparação entre eles na medida de distância euclidiana.

### **Necessidade de Normalização ou Padronização**

O kNN é sensível à escala dos atributos, porque ele usa a distância euclidiana para encontrar os vizinhos mais próximos. Se os atributos têm escalas muito diferentes, aqueles com valores maiores podem dominar a distância e influenciar mais nas decisões do algoritmo. Como resultado, os atributos com valores menores podem ter um impacto mínimo ou serem ignorados.

Portanto, a normalização ou padronização são necessárias antes de aplicar o kNN para garantir que todos os atributos tenham uma contribuição igual na medida de distância. Dessa forma, os atributos são tratados de maneira justa e o kNN pode fazer previsões mais precisas e equilibradas com base nos vizinhos mais próximos. A escolha entre normalização e padronização depende do problema específico e da distribuição dos dados, mas ambas as técnicas são essenciais para melhorar o desempenho do algoritmo kNN.

### **Exemplo**

Vamos utilizar um exemplo simples com um conjunto de dados fictício contendo dois atributos: "Idade" e "Salário". A seguir, temos o conjunto de dados original:

| Idade | Salário |
| ----- | ------- |
| 25    | 35000   |
| 30    | 50000   |
| 20    | 40000   |
| 40    | 60000   |
| 22    | 38000   |

Neste exemplo, iremos aplicar a normalização e a padronização para que ambos os atributos fiquem em uma escala comum.

**Normalização:**

Como exemplo, vamos calcular a normalização para o atributo "idade".

- Valor mínimo ($X_{\text{min}}$) = 20

- Valor máximo ($X_{\text{max}}$) = 40

$$X_{\text{norm}} = \frac{X - X_{\text{min}}}{X_{\text{max}} - X_{\text{min}}}$$

- Para a primeira entrada (Idade = 25):
  $$X_{\text{norm}} = \frac{25 - 20}{40 - 20} = \frac{5}{20} = 0.25$$

- Para a segunda entrada (Idade = 30):
  $$X_{\text{norm}} = \frac{30 - 20}{40 - 20} = \frac{10}{20} = 0.5$$

E assim por diante para as demais entradas. O conjunto de dados normalizado ficaria assim:

| Idade (Normalizada) | Salário |
| ------------------- | ------- |
| 0.25                | 35000   |
| 0.5                 | 50000   |
| 0.0                 | 40000   |
| 1.0                 | 60000   |
| 0.1                 | 38000   |

**Padronização:**

Agora, vamos calcular a padronização do atributo "idade".

- Média ($\mu$) = (25 + 30 + 20 + 40 + 22) / 5 = 27.4

- Desvio Padrão ($\sigma$) = $\sqrt{\frac{(25-27.4)^2 + (30-27.4)^2 + (20-27.4)^2 + (40-27.4)^2 + (22-27.4)^2}{5}}$ ≈ 7.53

$$X_{\text{pad}} = \frac{X - \mu}{\sigma}$$

- Para a primeira entrada (Idade = 25):
  $$X_{\text{pad}} = \frac{25 - 27.4}{7.53} ≈ -0.32$$

- Para a segunda entrada (Idade = 30):
  $$X_{\text{pad}} = \frac{30 - 27.4}{7.53} ≈ 0.34$$

E assim por diante para as demais entradas. O conjunto de dados padronizado ficaria assim:

| Idade (Padronizada) | Salário |
| ------------------- | ------- |
| -0.32               | 35000   |
| 0.34                | 50000   |
| -1.06               | 40000   |
| 1.41                | 60000   |
| -0.37               | 38000   |

**Comparativo:**

Agora vamos comparar os atributos "Idade" antes e depois da normalização e padronização:

| Idade (Original) | Idade (Normalizada) | Idade (Padronizada) |
| ---------------- | ------------------- | ------------------- |
| 25               | 0.25                | -0.32               |
| 30               | 0.5                 | 0.34                |
| 20               | 0.0                 | -1.06               |
| 40               | 1.0                 | 1.41                |
| 22               | 0.1                 | -0.37               |

Podemos observar que os valores da "Idade" foram normalizados para um intervalo entre 0 e 1 e padronizados para ter média zero e desvio padrão igual a um. Isso torna os atributos comparáveis em uma mesma escala, o que é essencial para que o algoritmo kNN possa calcular corretamente as distâncias euclidianas entre os pontos. Com a normalização e padronização aplicadas, o algoritmo kNN será capaz de tratar os atributos de maneira justa e fazer previsões mais precisas e equilibradas com base nos vizinhos mais próximos.
