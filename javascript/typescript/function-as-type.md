# Funções como tipo

> ## **Definição**

A **função como tipo** geralmente é utilizada em _callback function_ (funções passadas como parâmetro de outra função), pois com isso garante a segurança de tipos fornecido pelo TypeScript.

A tipagem de uma função, de forma geral, é a adição de tipagem na assinatura da função:

```ts
type MapStringsCallback = (item: string) => string;
//                                  ^
//                                  |
//                          assinatura da função
```

> ## **Exemplo**

```ts
type MapStringsCallback = (item: string) => string;

function mapStrings(array: string[], callbackfn: MapStringsCallback): string[] {
  const newArray: string[] = [];

  for (let i = 0; i < array.length; i++) {
    newArray.push(callbackfn(array[i]));
  }

  return newArray;
}

const abc = ["a", "b", "c"];
const abcMapped = mapStrings(abc, (item) => item.toLocaleLowerCase());

console.log(abc);
console.log(abcMapped);
```
