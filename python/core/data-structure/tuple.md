# Estrutura de dados "tuple"

Uma tupla é uma sequência ordenada de elementos imutáveis em Python. Isso significa que, uma vez criada, não é possível modificar, adicionar ou remover elementos individualmente dentro da tupla. 

Em contraste com as listas, que usam colchetes `[]`, as tuplas são definidas usando parênteses `()` ou simplesmente uma série de valores separados por vírgulas.

Suas principais características são:

- **Imutabilidade:** Uma vez criada, a tupla não pode ser alterada. Isso significa que você não pode modificar, adicionar ou remover elementos individualmente dentro dela.

- **Indexação e Iteração:** Assim como nas listas, você pode acessar elementos de uma tupla por índices, onde o índice começa em 0. Além disso, é possível usar loops para percorrer os elementos de uma tupla.

- **Tamanho Fixo:** O tamanho de uma tupla é fixo após a criação. Você não pode adicionar ou remover elementos posteriormente.

- **Heterogeneidade:** Assim como as listas, as tuplas também podem conter elementos de diferentes tipos de dados.

### **Criação de Tuplas**

Há várias maneiras de criar tuplas em Python:

- **Com Vírgulas:**

  ```python
  nomes = "Luiz", "João", "Maria"
  ```

  ```python
  nomes = "Luiz",
  ```

  No primeiro exemplo, uma tupla de três elementos é criada. No segundo exemplo, uma tupla com um único elemento é criada. 
  
  > Lembre-se de colocar uma **vírgula após o único elemento** para indicar que é uma tupla.

- **Com Parênteses:**

  ```python
  nomes = ("Luiz", "João", "Maria")
  ```

- **Usando a função `tuple`:**

  ```python
  nomes = tuple(("Luiz", "João", "Maria"))
  ```

### **Exemplo de Uso de Tuplas**

```python
# Criando uma tupla
nomes = "Luiz", "João", "Maria"

# Acessando elementos por índice
print(nomes[0])  # Luiz
print(nomes[1])  # João
print(nomes[2])  # Maria

# Iterando através dos elementos
for nome in nomes:
    print(nome)

# Tamanho da tupla
tamanho = len(nomes)
print(tamanho)  # 3

# Concatenando tuplas
outras_nomes = ("Ana", "Pedro")
todos_nomes = nomes + outras_nomes
print(todos_nomes)  # ("Luiz", "João", "Maria", "Ana", "Pedro")
```

As tuplas são úteis quando você deseja garantir que os dados não sejam modificados acidentalmente após a criação, ou quando precisa de uma estrutura de dados mais leve e eficiente para armazenar informações que não precisarão ser alteradas.