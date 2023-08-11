# Classe "SVC"

A classe `SVC` (Support Vector Classification) faz parte do módulo `sklearn.svm` da biblioteca Scikit-learn, uma ferramenta poderosa para implementar algoritmos de aprendizado de máquina. Especificamente, a classe `SVC` é usada para problemas de classificação, nos quais o objetivo é categorizar dados em diferentes classes.

## **Principais Parâmetros**

1. **Kernel**: Define o tipo de função de kernel a ser usado para mapear os dados para um espaço de maior dimensão, onde eles podem ser mais facilmente separados. Opções comuns incluem 'linear', 'poly' (polinomial), 'rbf' (Gaussiano/Radial Basis Function), entre outros.

2. **C**: Parâmetro de regularização que controla a importância dada à classificação correta de cada ponto. Valores menores de C permitem que alguns pontos de treinamento sejam classificados incorretamente, enquanto valores maiores tentam classificar corretamente todos os pontos de treinamento.

3. **Gamma (gamma)**: Coeficiente usado em kernels 'rbf', 'poly' e 'sigmoid'. Controla o alcance de influência de cada exemplo de treinamento nos vetores de suporte escolhidos.

4. **Class_weight**: Permite atribuir pesos diferentes às classes para lidar com classes desequilibradas. Isso influencia como a função de custo leva em consideração os erros em diferentes classes.

5. **Probability**: Se definido como `True`, permite a estimação das probabilidades das classes.

6. **Shrinking**: Técnica que reduz o conjunto de vetores de suporte para melhorar a eficiência computacional. Pode ser ativada ou desativada.

7. **Decision_function_shape**: Define a estratégia de treinamento para problemas de várias classes. Pode ser 'ovo' (one-vs-one) ou 'ovr' (one-vs-rest).

8. **Verbose**: Se definido como `True`, fornece informações verbosas durante o ajuste do modelo.

## **Exemplo**

```python
from sklearn.svm import SVC
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Carregar dados
data = load_iris()
X, y = data.data, data.target

# Dividir os dados em conjuntos de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Criar o modelo SVC com kernel linear e C=1
model = SVC(kernel='linear', C=1)

# Treinar o modelo
model.fit(X_train, y_train)

# Fazer previsões
predictions = model.predict(X_test)

# Calcular a acurácia
accuracy = accuracy_score(y_test, predictions)
print("Acurácia:", accuracy)
```

## **Conclusão**

A classe `SVC` é uma ferramenta essencial para tarefas de classificação, especialmente quando se lida com problemas complexos e não linearmente separáveis. A escolha adequada do kernel e dos hiperparâmetros é crucial para obter o melhor desempenho do modelo. Com sua versatilidade e poder de generalização, o `SVC` é uma excelente opção para uma ampla gama de problemas de classificação.
