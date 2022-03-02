# Tipos Literais

> ## **Definição**

Os **tipos literais** são subtipos de _type annotations_ no TypeScript, ou seja, o tipo literal `100` é um subtipo de `number`.

Ao definir uma variável `let` com um tipo literal, a mesma só permite a atribuição da valor desse tipo literal, dessa forma, essa variável exerce a função de uma `const`. Por exemplo:

```ts
let a: 120 = 120;
a = 100; // Error
```

A forma de declarar uma variável com _literal type_ mostrada acima não é recomendada pelo TypeScript, então para isso é necessário utilizar a seguinte notação:

```ts
let a = 120 as const;
```

> Esse tipo de declaração é geralmente utilizada em objetos onde é necessário garantir a imutabilidade de uma propriedade, pois os objetos, no JavaScript, são mutáveis.

> ## **OBS**

A junção dos _literal types_ com _union types_ exercem a mesma função dos enums.

```ts
enum Cores {
  VERMELHO,
  AMARELO,
  AZUL,
}

console.log(Cores.VERMELHO); // VERMELHO
```

```ts
function escolherCor(cor: 'Vermelho' | 'Amarelo' | 'Azul') {
  return cor;
}

console.log(escolherCor('Vermelho')); // Vermelho
```

> ## **Exemplo**

```ts
const person = {
  name: 'Luiz' as const,
  lastName: 'Miranda',
};

person.name = 'João'; // Error: Type '"João"' is not assignable to type '"Luiz"'
```
