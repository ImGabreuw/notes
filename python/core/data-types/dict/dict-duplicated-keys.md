# Chaves duplicadas

Caso em um dicionário tenha 2 ou + chaves com o mesmo valor, o último será utilizado, uma vez que o Python sobrescreve os valores anteriores.

```python
pessoa = {
  "nome": "Luiz Otávio",
  "sobrenome": "Miranda 1",
  "sobrenome": "Miranda 2",
  "sobrenome": "Miranda 3",
}

print(pessoa["sobrenome"]) # Miranda 3
```
