# Estrutura condicional (`if / elif / else`)

As palavras reservadas `if / elif / else` servem para controlar o fluxo de execução do código a partir de uma condição (expressão booleana). Entretanto, para inserir códigos dentro dessa estrutura é utilizado a indentação (`TAB` ou 4 espaços) e assim definir o bloco de código do `if / else`.

```python
entrada = input("Você quer 'entrar' ou 'sair'? ")

if entrada == "entrar":
  print("Você entrou no sistema")
elif entrada == "sair":
  print("Você saiu do sistema")
else:
  print("Você não digitou nem 'entrar' e nem 'sair'")
```

> **OBS**: o `if` é obrigatório para declarar uma estrutura condicional, entretanto `elif` e `else` são opcionais
