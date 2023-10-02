# Função callback: `forEach`

> ## **Definição**

Esse método exerce a mesma função da estrutura de repetição `for`, porém com um estilo funcional (_arrow function_).

**IMPORTANTE**: o método `forEach` está disponíveis apenas em `array`

> ## **Sintaxe**

```js
array.forEach(([valor atual], [indice atual], [array original]) => {
  // Código ...
})
```

> ## **Exemplo**

```js
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

numbers.forEach((number) => console.log(number));
```
