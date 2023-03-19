# Conversão de tipos

Outros termos usados são: coerção, _type convertion_, _typecasting_, _coercion_

A conversão de tipos é o ato de converter um tipo em outro tipo imutável e primitivo. Exemplo: `str`, `int`, `float`, `bool`.

O Python por ser uma linguagem dinâmica e forte, ele não realiza a coerção de forma autônoma, por exemplo:

```python
print('1' + 1) # Error
```

No código acima, é gerado um erro a ambiguidade oriunda da operação de `+` no Python, uma vez que é possível concatenar 2 strings ou somar 2 números.

A classe `str`, `int`, `float`, `bool` são Callable, desse modo, é possível chamá-las como funções `str()`, `int()`, `float()`, `bool()` para realizar a conversão de tipos.
