# Método `get()`

Esse método tenta obter o valor de uma `chave` (passado no argumento) e caso não o encontrar, por padrão, será retornado `None`, entretanto é possível alterar esse valor.

```python
pessoa = {
  "nome": "Luiz Otávio",
  "sobrenome": "Miranda",
}

print(pessoa.get("sobrenome")) # Miranda

del pessoa[sobrenome]

print(pessoa.get("sobrenome")) # None
print(pessoa.get("sobrenome", "Não existe")) # Não existe
```