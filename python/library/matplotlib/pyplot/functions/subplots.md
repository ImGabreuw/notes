# Função "subplots"

A função `subplots()` é uma função do módulo `matplotlib.pyplot` da biblioteca Matplotlib em Python, que é utilizada para criar uma figura e um conjunto de eixos (subplots) em uma única chamada. Os subplots são usados para organizar várias visualizações em uma única figura.

### **Sintaxe**

```python
fig, ax = plt.subplots(nrows, ncols, ...)
```

**Parâmetros:**

- `nrows`: O número de linhas de subplots que serão criados na figura. Este parâmetro define quantos subplots serão empilhados verticalmente na figura.

- `ncols`: O número de colunas de subplots que serão criados na figura. Este parâmetro define quantos subplots serão dispostos horizontalmente na figura.

- `figsize`: É uma tupla `(largura, altura)` que define o tamanho da figura em polegadas. Por exemplo, `figsize=(8, 6)` criará uma figura com 8 polegadas de largura e 6 polegadas de altura. Esse parâmetro é opcional, e se não for especificado, o tamanho padrão da figura será usado.

**Retorno:**

- `fig`: A figura criada.

- `ax`: Um array de objetos de eixos (subplots) criados.

### **Exemplo:**

```python
import matplotlib.pyplot as plt

# Criando uma figura com 2 linhas e 2 colunas de subplots
fig, ax = plt.subplots(nrows=2, ncols=2)

# Plotando dados em cada subplot
ax[0, 0].plot([1, 2, 3, 4], [1, 4, 2, 3])
ax[0, 0].set_title('Subplot 1')

ax[0, 1].scatter([1, 2, 3, 4], [1, 4, 2, 3])
ax[0, 1].set_title('Subplot 2')

ax[1, 0].bar([1, 2, 3, 4], [1, 4, 2, 3])
ax[1, 0].set_title('Subplot 3')

ax[1, 1].plot([1, 2, 3, 4], [1, 4, 2, 3], 'o-')
ax[1, 1].set_title('Subplot 4')

# Exibindo a figura com os subplots
plt.tight_layout()
plt.show()
```

Neste exemplo, criamos uma figura com 2 linhas e 2 colunas de subplots usando a função `subplots()`. Em seguida, plotamos dados em cada subplot usando os objetos de eixos `ax`. O resultado é uma única figura contendo 4 subplots organizados em uma matriz 2x2.

### **Conclusão**

Essa função é muito útil para a criação de visualizações complexas ou para mostrar múltiplos aspectos de dados em um único gráfico. É amplamente utilizada em análises exploratórias de dados, na apresentação de resultados de modelos de aprendizado de máquina e em muitas outras aplicações de visualização de dados. Ao organizar subplots em uma matriz, a função `subplots()` torna a exibição dos gráficos mais clara e eficiente, facilitando a comunicação de informações importantes aos usuários ou leitores.