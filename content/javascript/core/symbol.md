# Tipo de dado `Symbol`

> ## **Definição**

Criar uma chave com um identificador único, pois 2 `Symbol`s nunca serão iguais:

```js
Symbol() === Symbol(); // sempre "false"
```

> ## **Sintaxe**

```js
Symbol([descrição]);
```

> `[descrição]` (_descritor_): informar o nome da chave de uma propriedade.

> ## **Exemplo**

```js
const _velocidade = Symbol("velocidade");
```
