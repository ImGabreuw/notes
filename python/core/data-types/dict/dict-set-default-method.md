# Método `setdefault()`

O método `setdefault( [chave], [valor_padrao] )` retorna o valor associado à chave especificada. Se a chave não estiver presente no dicionário, o método insere a chave com o valor padrão fornecido e retorna esse valor. Isso pode ser útil quando você precisa definir um valor padrão para uma chave que ainda não existe. Aqui está um exemplo:

```python
meu_dicionario = {'chave1': 'valor1', 'chave2': 'valor2'}
valor = meu_dicionario.setdefault('chave3', 'valor_padrao')
print(valor)  # Saída: valor_padrao
print(meu_dicionario)  # Saída: {'chave1': 'valor1', 'chave2': 'valor2', 'chave3': 'valor_padrao'}
```