# Union Types

> ## **Definição**

A **união de tipos** permite a representação de um dado em diferentes tipos,isso se aplica em retornos ou em parâmetros de funções.

A definição dos tipos aceitos na _union type_ é feito a partir do operador `|` (pipe).

> ## **Exemplo**

```ts
function sumOrConcat(
  a: number | string,
  b: number | string,
): number | string {
  if (typeof a === 'number' && typeof b === 'number') {
    return a + b;
  }

  return `${a}${b}`;
}

console.log(sumOrConcat(10, 20)); // 30
console.log(sumOrConcat('10', '20')); // 1020
```
