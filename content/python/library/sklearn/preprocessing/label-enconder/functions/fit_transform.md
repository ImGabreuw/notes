# Função `fit_transform`

O método `fit_transform` do `LabelEncoder` é uma função do módulo `sklearn.preprocessing` da biblioteca scikit-learn. Ele é usado para realizar a **codificação de atributos categóricos em valores numéricos** de forma automática. Especificamente, o `LabelEncoder` converte as categorias presentes em uma coluna de dados em valores inteiros únicos, atribuindo a cada categoria um número inteiro sequencial.

### **Sintaxe**

```
from sklearn.preprocessing import LabelEncoder

encoder = LabelEncoder()
encoded_data = encoder.fit_transform(data)
```

**Parâmetros:**

- `data`: Uma lista ou array contendo os atributos categóricos que se deseja codificar.

**Retorno:**

- `encoded_data`: Uma nova lista ou array com os atributos categóricos codificados em valores numéricos.

### **Exemplo**

Suponha que temos uma coluna de dados categóricos representando o gênero de uma pessoa, onde as categorias são "Masculino" e "Feminino". Utilizaremos o `LabelEncoder` para codificar esses valores em números inteiros:

```python
from sklearn.preprocessing import LabelEncoder

gender = ["Masculino", "Feminino", "Feminino", "Masculino", "Masculino"]

encoder = LabelEncoder()
encoded_gender = encoder.fit_transform(gender)

print(encoded_gender)
```

**Saída:**

```
[1 0 0 1 1]
```

> Explicação: "Masculino" foi codificado como 1 e "Feminino" foi codificado como 0.

O `LabelEncoder` é útil quando temos **atributos categóricos sem uma ordem específica** e queremos **atribuir valores numéricos distintos a cada categoria** para que os algoritmos de aprendizado de máquina possam processá-los adequadamente. No entanto, é importante ter em mente que essa **codificação impõe uma ordem implícita às categorias**, o que pode ser problemático em alguns cenários, especialmente quando as categorias não têm uma relação de ordem natural. Nesses casos, é recomendado o uso da técnica de `One-Hot Encoding`.
