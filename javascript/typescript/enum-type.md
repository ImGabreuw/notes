# Tipo `Enum`

> ## **Definição**

É uma estrutura de dados para armazenar valores constantes e imutáveis.

Esses valores são indexadas, iniciando no 0.

É possível alterar o índice de um valor no `enum` (se fazer isso, é obrigatório informar um inicializar em cada valor do `enum`):

```ts
enum Cores {
  VERMELHO = 10,
  AZUL = 20,
  AMARELO = 30,
}

console.log(Cores.VERMELHO); // 10
console.log(Cores[10]); // VERMELHO
```

Ao declarar 2 `enum` com o mesmo nome, ocorre a junção dos seus valores em um único `enum` (**merge**):

```ts
enum Cores {
  VERMELHO = 10,
  AZUL = 20,
  AMARELO = 30,
}

enum Cores {
  ROXO = 40,
  VERDE = 50,
}

console.log(Cores);
/*
{
  '10': 'VERMELHO',
  '20': 'AZUL',
  '30': 'AMARELO',
  '40': 'ROXO',
  '50': 'VERDE',
  VERMELHO: 10,
  AZUL: 20,
  AMARELO: 30,
  ROXO: 40,
  VERDE: 50
}
*/
```

> ## **Exemplo**

```ts
enum Cores {
  VERMELHO,
  AZUL,
  AMARELO,
}

console.log(Cores);
/*
{
  '0': 'VERMELHO',
  '1': 'AZUL',
  '2': 'AMARELO',
  VERMELHO: 0,
  AZUL: 1,
  AMARELO: 2
}
*/

console.log(Cores.VERMELHO); // 0
console.log(Cores[0]); // VERMELHO
```

```ts
export enum Cores {
  VERMELHO = 10,
  AZUL = 20,
  AMARELO = 30,
  ROXO = 40,
  VERDE = 50,
}

function escolherCor(cor: Cores): void {
  console.log(Cores[cor]);
}

escolherCor(Cores.ROXO); // ROXO
```

> ## **OBS**

A vantagem de se utilizar `enum` em outras linguagens é a segurança de tipos, porém, mesmo o TypeScript tendo validações de tipos, isso não se aplica aos `enum`.

```ts
export enum Cores {
  VERMELHO = 10,
  AZUL = 20,
  AMARELO = 30,
  ROXO = 40,
  VERDE = 50,
}

function escolherCor(cor: Cores): void {
  console.log(Cores[cor]);
}

escolherCor(12345); // undefined
//            ^
//            |
// não ocorre nenhum erro de compilação
```
