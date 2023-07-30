# Etapas de aprendizagem do algoritmo de Naive Bayes

Para entendermos como funciona a aprendizagem de algoritmos de Naïve Bayes, considerar o exemplo abaixo de classificação para prever o risco de crédito de uma pessoa com base em alguns atributos, como idade, renda e histórico de crédito. Suponha que temos a seguinte base de dados:

| ID  | Idade  | Renda | Histórico de Crédito | Risco de Crédito |
| --- | ------ | ----- | -------------------- | ---------------- |
| 1   | Jovem  | Alta  | Bom                  | Baixo            |
| 2   | Jovem  | Baixa | Bom                  | Baixo            |
| 3   | Jovem  | Baixa | Ruim                 | Alto             |
| 4   | Média  | Baixa | Ruim                 | Alto             |
| 5   | Média  | Baixa | Ruim                 | Alto             |
| 6   | Média  | Alta  | Bom                  | Baixo            |
| 7   | Adulto | Alta  | Bom                  | Baixo            |
| 8   | Adulto | Alta  | Muito Bom            | Baixo            |
| 9   | Adulto | Baixa | Muito Bom            | Baixo            |
| 10  | Idoso  | Baixa | Muito Bom            | Baixo            |
| 11  | Idoso  | Alta  | Bom                  | Baixo            |
| 12  | Idoso  | Alta  | Muito Bom            | Baixo            |
| 13  | Jovem  | Baixa | Bom                  | Baixo            |
| 14  | Jovem  | Alta  | Muito Bom            | Baixo            |
| 15  | Média  | Baixa | Bom                  | Baixo            |

### **Passo 1: Contagem das frequências**

Primeiro, contamos as frequências de cada valor dos atributos para cada classe de risco de crédito:

- Contagem das frequências do atributo "Idade" para cada classe de risco de crédito:

  | Idade  | Baixo | Alto |
  | ------ | ----- | ---- |
  | Jovem  | 5     | 1    |
  | Média  | 3     | 2    |
  | Adulto | 1     | 2    |
  | Idoso  | 1     | 2    |

- Contagem das frequências do atributo "Renda" para cada classe de risco de crédito:

  | Renda | Baixo | Alto |
  | ----- | ----- | ---- |
  | Baixa | 5     | 1    |
  | Alta  | 2     | 4    |

- Contagem das frequências do atributo "Histórico de Crédito" para cada classe de risco de crédito:

  | Histórico de Crédito | Baixo | Alto |
  | -------------------- | ----- | ---- |
  | Bom                  | 2     | 3    |
  | Ruim                 | 3     | 1    |
  | Muito Bom            | 2     | 1    |

### **Passo 2: Cálculo das probabilidades**

Em seguida, calculamos as probabilidades de cada valor dos atributos para cada classe de risco de crédito. Para isso, utilizamos a frequência dos valores e a quantidade total de amostras para cada classe.

Vamos calcular a probabilidade de cada valor dos atributos para cada classe de risco de crédito:

**Probabilidades Condicionais para Baixo Risco:**

- Probabilidade de ser Jovem: $P(\text{Jovem}|\text{Baixo}) = \frac{2}{7} \approx 0.286$

- Probabilidade de ser Média: $P(\text{Média}|\text{Baixo}) = \frac{1}{7} \approx 0.143$

- Probabilidade de ser Adulto: $P(\text{Adulto}|\text{Baixo}) = \frac{3}{7} \approx 0.429$

- Probabilidade de ser Idoso: $P(\text{Idoso}|\text{Baixo}) = \frac{1}{7} \approx 0.143$

- Probabilidade de ter Renda Alta: $P(\text{Alta}|\text{Baixo}) = \frac{4}{7} \approx 0.571$

- Probabilidade de ter Renda Baixa: $P(\text{Baixa}|\text{Baixo}) = \frac{3}{7} \approx 0.429$

- Probabilidade de ter Bom Histórico de Crédito: $P(\text{Bom}|\text{Baixo}) = \frac{5}{7} \approx 0.714$

- Probabilidade de ter Ruim Histórico de Crédito: $P(\text{Ruim}|\text{Baixo}) = \frac{2}{7} \approx 0.286$

**Probabilidades Condicionais para Alto Risco:**

- Probabilidade de ser Jovem: $P(\text{Jovem}|\text{Alto}) = \frac{2}{8} = 0.25$

- Probabilidade de ser Média: $P(\text{Média}|\text{Alto}) = \frac{3}{8} = 0.375$

- Probabilidade de ser Adulto: $P(\text{Adulto}|\text{Alto}) = \frac{2}{8} = 0.25$

- Probabilidade de ser Idoso: $P(\text{Idoso}|\text{Alto}) = \frac{1}{8} = 0.125$

- Probabilidade de ter Renda Alta: $P(\text{Alta}|\text{Alto}) = \frac{2}{8} = 0.25$

- Probabilidade de ter Renda Baixa: $P(\text{Baixa}|\text{Alto}) = \frac{6}{8} = 0.75$

- Probabilidade de ter Bom Histórico de Crédito: $P(\text{Bom}|\text{Alto}) = \frac{1}{8} = 0.125$

- Probabilidade de ter Muito Bom Histórico de Crédito: $P(\text{Muito Bom}|\text{Alto}) = \frac{7}{8} = 0.875$

### **Passo 3: Classificação**

No passo de classificação do algoritmo de Naive Bayes, usamos o Teorema de Bayes para calcular a probabilidade de um exemplo pertencer a cada classe e, em seguida, atribuímos o exemplo à classe com a maior probabilidade.

Suponha que temos um exemplo com os seguintes atributos:

- **Idade: Média**

- **Renda: Baixa**

- **Histórico de Crédito: Bom**

Vamos calcular a probabilidade para cada classe, considerando as probabilidades condicionais que calculamos anteriormente:

**Para Baixo Risco:**

$$P(\text{Baixo}|\text{Média}, \text{Baixa}, \text{Bom}) = P(\text{Média}|\text{Baixo}) \times P(\text{Baixa}|\text{Baixo}) \times P(\text{Bom}|\text{Baixo}) \times P(\text{Baixo})$$

$$P(\text{Baixo}|\text{Média}, \text{Baixa}, \text{Bom}) = 0.143 \times 0.429 \times 0.714 \times \frac{7}{15} \approx 0.0903$$

**Para Alto Risco:**

$$P(\text{Alto}|\text{Média}, \text{Baixa}, \text{Bom}) = P(\text{Média}|\text{Alto}) \times P(\text{Baixa}|\text{Alto}) \times P(\text{Bom}|\text{Alto}) \times P(\text{Alto})$$

$$P(\text{Alto}|\text{Média}, \text{Baixa}, \text{Bom}) = 0.375 \times 0.75 \times 0.125 \times \frac{8}{15} \approx 0.0469$$

### **Passo 4: Escolha da classe com maior probabilidade**

Agora, comparamos as probabilidades para cada classe e concluímos que o exemplo tem maior probabilidade de ser classificado como "Baixo Risco" tendo uma probabilidade de aproximadamente 0.0903 ou 66%.

$$
Total  = P(\text{Baixo}|\text{Média}, \text{Baixa}, \text{Bom}) + P(\text{Alto}|\text{Média}, \text{Baixa}, \text{Bom}) \\
\text{Maior Probabilidade em \%} = \frac{\text{Maior Probabilidade}}{\text{Total}} \times 100 \\
$$

$$
Total = 0.0903 + 0.0469 \\
\text{Maior Probabilidade em \%} = \frac{0.0903}{0.1372} \times 100 = 0.658163265 \times 100 = 65.82 \approx 66\%
$$

Portanto, de acordo com o algoritmo de Naive Bayes, a previsão é que o exemplo pertence à classe "Baixo Risco".