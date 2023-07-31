# Função "load"

A função `load` da biblioteca `pickle` no Python é usada para **carregar objetos serializados** de um **arquivo em formato binário**. O módulo `pickle` permite salvar e carregar objetos Python em um formato binário que pode ser armazenado em arquivos ou transmitido através da rede.

### **Sintaxe**

```python
import pickle

with open('nome_do_arquivo.pkl', 'rb') as arquivo:
    objeto_carregado = pickle.load(arquivo)
```

**Parâmetros:**

- `'nome_do_arquivo.pkl'`: O nome do arquivo que contém o objeto serializado que você deseja carregar.

- `'rb'`: O modo de leitura de arquivo. O "r" indica que o arquivo será aberto para leitura e o "b" indica que será lido como um arquivo binário.

**Retorno:**

- A função `load` carrega o objeto serializado do arquivo e o retorna como um objeto Python. O objeto retornado é uma representação exata do objeto que foi serializado e salvo anteriormente.

### **Exemplo**

```python
import pickle

# Carregando os dados de treinamento e teste do arquivo "dados.pkl"
with open("dados.pkl", "rb") as file:
    X_train_loaded, Y_train_loaded, X_test_loaded, y_test_loaded = pickle.load(file)

# Exibindo os dados carregados
print("Dados de treinamento:")
print("X_train:", X_train_loaded)
print("Y_train:", Y_train_loaded)

print("\nDados de teste:")
print("X_test:", X_test_loaded)
print("y_test:", y_test_loaded)
```

**Saída:**

```console
Dados de treinamento:
X_train: [[1, 2], [2, 3], [3, 4], [4, 5]]
Y_train: [0, 1, 0, 1]

Dados de teste:
X_test: [[1.5, 3.5], [3.5, 6.0]]
y_test: [0, 1]
```

Neste exemplo, carregamos os dados do arquivo `dados.pkl` usando `pickle.load()` e exibimos os dados carregados na saída. Os dados carregados são idênticos aos dados originais que foram salvos, demonstrando que o processo de salvamento e carregamento usando pickle foi bem-sucedido.

### **Conclusão**

A função `load` do módulo `pickle` é uma maneira conveniente de carregar objetos Python serializados de arquivos binários, tornando mais fácil salvar e recuperar dados complexos ou modelos treinados em suas aplicações.
