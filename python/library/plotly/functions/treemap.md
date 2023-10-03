# Função `treemap`

A função `treemap` da biblioteca Plotly é usada para **criar visualizações gráficas de treemaps**, que são diagramas retangulares hierárquicos que exibem dados em uma estrutura de árvore. Cada retângulo no treemap representa uma categoria e é dimensionado proporcionalmente ao valor numérico associado a essa categoria. Essa representação ajuda a visualizar a distribuição de dados em uma hierarquia, mostrando o tamanho relativo de cada categoria e suas subcategorias.

### **Sintaxe**

```python
import plotly.express as px

fig = px.treemap(data_frame, path=['coluna1', 'coluna2', ...], values='coluna_valor')
```

- `data_frame`: O DataFrame que contém os dados a serem plotados.

- `path`: Uma lista com as colunas que representam a hierarquia das categorias no treemap. Cada elemento da lista representa um nível na hierarquia.

- `values`: A coluna do DataFrame que contém os valores numéricos associados a cada categoria.

### **Exemplo**

```python
import plotly.express as px

# Carregando a base de dados
base_census = pd.read_csv("./assets/census.csv")

# Criando o treemap
fig = px.treemap(base_census, path=["occupation", "relationship"])

# Exibindo o gráfico
fig.show()
```

**Saída:**

![](./assets/exemplo_grafico_treemap.png)

O treemap é uma ótima ferramenta para **visualizar dados hierárquicos e entender a contribuição de cada categoria** para o todo. Ele pode ser útil em várias áreas, como análise de vendas, distribuição de gastos, entre outros. A biblioteca Plotly fornece uma forma simples e interativa de criar treemaps de maneira eficiente.