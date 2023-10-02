# Classes

> ## **Definição**

A classe é considerado um tipo no TypeScript, ou seja, é possível utilizá-la para definir o tipo de uma função ou de um atributo.

> ## **Atributos não inicializados**

Declarar um atributo de uma classe sem atribuir um valor no momento da declaração do mesmo:

```ts
export class Company {
  readonly name: string;

  constructor(name: string) {
    this.name = name;
  }
}

const company = new Company("Udemy");

console.log(company); // Company { name: 'Udemy' }
console.log(company.name); // Udemy
```

> **OBS**: todo atributo/método de um classe tem como modificador de acesso padrão o `public`, ou seja, não é necessário defini-lo explicitamente na assinatura do atributo/método.

Existe outra forma de declarar atributos no TypeScript que é por meio do da função construtora (`construtor()`):

```ts
export class Collaborator {
  constructor(readonly name: string, readonly lastName: string) {}
}
```

> ## **Atributos inicializados**

Declarar um atributo de uma classe atribuindo um valor no momento da declaração do mesmo:

```ts
export class Company {
  public readonly name: string = "Udemy";
}
```

> ## **Composição de classes**

A composição de classes é quando em um classe existem atributos associados a outras classes:

```ts
export class Collaborator {}

export class Company {
  public readonly name: string;
  private readonly collaborators: Collaborator[] = [];
  protected readonly cnpj: string;

  constructor(name: string, cnpj: string) {
    this.name = name;
    this.cnpj = cnpj;
  }
}

const company = new Company("Udemy", "11.111.111/0001-11");

console.log(company);
/*
Company {
  collaborators: [],
  name: 'Udemy',
  cnpj: '11.111.111/0001-11'
}
*/
```

> ## **Exemplo**

```ts
export class Collaborator {
  constructor(public readonly name: string, public readonly lastName: string) {}
}

export class Company {
  public readonly name: string;
  private readonly collaborators: Collaborator[] = [];
  protected readonly cnpj: string;

  constructor(name: string, cnpj: string) {
    this.name = name;
    this.cnpj = cnpj;
  }

  public addCollaborator(collaborator: Collaborator): void {
    this.collaborators.push(collaborator);
  }

  showCollaborators(): void {
    for (const collaborator of this.collaborators) {
      console.log(collaborator);
    }
  }
}

const company = new Company("Udemy", "11.111.111/0001-11");

const collaborator1 = new Collaborator("Luiz", "Otávio");
const collaborator2 = new Collaborator("Maria", "Miranda");
const collaborator3 = new Collaborator("João", "Vieira");

company.addCollaborator(collaborator1);
company.addCollaborator(collaborator2);
company.addCollaborator(collaborator3);

console.log(company);

company.showCollaborators();
```
