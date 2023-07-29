# Função `train_test_split`

A função `train_test_split()` faz parte do módulo `sklearn.model_selection` da biblioteca Scikit-learn (sklearn) em Python. Essa função é amplamente utilizada na avaliação de algoritmos de aprendizado de máquina e é usada para **dividir um conjunto de dados em bases de treinamento e teste**.

### **Sintaxe**

```python
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.25, random_state=None)
```

**Parâmetros:**

- `X`: Array ou DataFrame com as _features_ (atributos) do conjunto de dados.

- `Y`: Array ou DataFrame com o _target_ (variável de saída ou classe) correspondente às _features_.

- `test_size`: Define a proporção do conjunto de teste em relação ao conjunto total. Pode ser um valor entre 0 e 1 ou um inteiro (representando o número absoluto de amostras de teste).

- `random_state`: Parâmetro opcional para controlar a aleatoriedade da divisão. Se 0 for fornecido, garante que a divisão seja sempre a mesma, sendo útil para reproduzir resultados.

**Retorno:**

- `X_train`: Conjunto de dados de treinamento contendo as _features_.

- `X_test`: Conjunto de dados de teste contendo as _features_.

- `y_train`: Conjunto de dados de treinamento contendo o _target_ correspondente às _features_.

- `y_test`: Conjunto de dados de teste contendo o _target_ correspondente às _features_.

### **Exemplo**

```python
from sklearn.model_selection import train_test_split

# Dados de atributos e rótulos
X = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
y = [0, 1, 0, 1]

# Dividir os dados em conjuntos de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)

# Exibir os conjuntos de treinamento e teste
print("Conjunto de treinamento:")
print(X_train)
print(y_train)

print("\nConjunto de teste:")
print(X_test)
print(y_test)
```

**Saída:**

```
Conjunto de treinamento:
[[4, 5, 6], 
 [1, 2, 3], 
 [7, 8, 9]]
[1, 0, 0]

Conjunto de teste:
[[10, 11, 12]]
[1]
```

### **Conclusão**

A função `train_test_split()` é uma ferramenta importante para a avaliação de modelos de aprendizado de máquina. Ao dividir o conjunto de dados em bases de treinamento e teste, podemos estimar o desempenho do modelo em situações do mundo real e garantir que ele generalize bem para dados não vistos durante o treinamento. Essa função é amplamente utilizada na prática para **garantir a eficiência e precisão dos modelos** de aprendizado de máquina.