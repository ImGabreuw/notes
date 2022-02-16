# Type Annotations

> ## **Definição**

O TypeScript tem a inferência de tipos, ou seja, não é necessário definir o tipo da variável explicitamente, apenas quando o mesmo já foi inicializado.

O _type annotation_ é definido com `: [tipo]` após o nome da variável.

> ## **Tipos primitivos no TypeScript**

### **`any`**

É o tipo genérico do TypeScript, ou seja, quando ele não conseguir inferir o tipo é definido como `any`.

- **any implícito**:

  ```ts
  function showMessage(msg: any) {
    return msg;
  }
  ```

- **any explícito**:

  ```ts
  function showMessage(msg) {
    return msg;
  }
  ```

> `msg` é do tipo `any`.

### **`string`**

```ts
let someString: string = "Luiz";
```

### **`number` (integer, float, hexadecimal, binário e octal)**

```ts
let integer: number = 30;
let negativeInteger: number = -30;

let float: number = 3.14;
let negativeFloat: number = -3.14;

let hexadecimal: number = 0xf00d;
let binary: number = 0b1010;
let octal: number = 0o7744;
```

### **`boolean`**

```ts
let someBoolean: boolean = true;
```

### **`symbol`**

```ts
let someSymbol: symbol = Symbol("qualquer-symbol");
```

### **`bigint` (disponível apenas nas versões ES2020 ou superior)**

```ts
let bigNumber: bigint = 10n;
```

### **`array`**

É possível utilizar **generics** ou a notação de array (`[]`).

```ts
let arrayOfNumberGeneric: Array<number> = [1, 2, 3];
let arrayOfNumber: number[] = [1, 2, 3];

let arrayOfStringsGeneric: Array<string> = ["a", "b", "c"];
let arrayOfStrings: string[] = ["a", "b", "c"];
```

### **`object`**

É possível utilizar as seguintes formas para declarar o tipo de um objeto:

- **`object`:**

  ```ts
  const objetoA: object = {
    chaveA: 'Valor A',
    chaveB: 'Valor B',
  };
  ```

  > Não é recomendado definir explicitamente o tipo de um objeto com `object`.

- **type aliases:** 

  ```ts
                                // Assinatura da propriedade: (property) adult?: boolean | undefined
                                            ^
                                            |
  let person: {name: string, age: number, adult?: boolean} = {
    name: 'Luiz',
    age: 30
  }
  ```

  > **OBS**: em `adult?: boolean` a `?` indica que um compo de um objeto é opcional

- **Notação de objeto (`{}`):**

  ```ts
  const objetoA: {} = {
    chaveA: 'Valor A',
    chaveB: 'Valor B',
  };
  ```

- **`Record`:**

  Ao utilizar o `Record` com o tipo `unknown`, desabilita o intellisense da IDE, uma vez que esse tipo está acima do tipo `any` na hierarquia.

  ```ts
  const objetoA: Record<string, unknown> = {
    chaveA: 'Valor A',
    chaveB: 'Valor B',
  };

- **_Index signature_:**

  ```ts
  const objetoA: {
    [key: string]: unknown; // chave opcional
  } = {
    chaveA: 'Valor A',
  };

  objetoA.chaveA = 'Nova chave A';
  ```


### **function**

```ts
function sum(x: number, y: number): number {
  return x + y;
}
```

```ts
  // Assinatura da função: function sum(x: number, y: number): number
          ^
          |
function sum(x: number, y: number) {
  return x + y;
}
```

```ts
          // Assinatura da função anônima: const sumArrowFunction: (x: number, y: number) => number
                ^
                |
const sumArrowFunction: (x: number, y: number) => number = (x, y) => x + y;
```

> O tipo de retorno é inferido com base nos parâmetros da função. Caso uma função não tenha o `return`, o TypeScript infere o tipo de retorno como `void` (sem retorno)

### **`void`**

Indicar que uma função não tem retorno.

```ts
function semRetorno(...args: string[]): void {
  console.log(args.join(' '));
}
```

```ts
const pessoa = {
  nome: 'Luiz',
  sobrenome: 'Otávio',

  exibirNome(): void {
    console.log(this.nome + ' ' + this.sobrenome);
  },
};
```

> ## **Exemplo**

```ts
let name: string = "Luiz";
```

```ts
  // let name: string
      ^
      |
let name = 'Luiz';
```
