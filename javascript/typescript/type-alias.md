# Type alias

> ## **Definição**

_Type alias_ serve para criar um "apelido" para um tipo ou um conjunto de tipos (composição de tipos com _union types_).

A declaração de um tipo customizados é feita a partir da palavra reservada `type`.

**OBS**: A nomenclatura de um _type alias_, por convenção, é iniciada com letra maiúscula.

> ## **Exemplo**

```ts
type Age = number;

type ColorRGB = 'Vermelho' | 'Verde' | 'Azul';
type ColorCMYK = 'Ciano' | 'Magenta' | 'Amarelo' | 'Preto';

type FavoriteColor = ColorRGB | ColorCMYK;

type Person = {
  name: string;
  age: Age;
  salary: number;
  favoriteColor?: FavoriteColor;
};

const person: Person = {
  name: 'Luiz',
  age: 30,
  salary: 200_000,
  favoriteColor: 'Vermelho',
};

console.log(person);
```
