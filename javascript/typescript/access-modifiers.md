# Modificadores de acesso

> ## **`public`**

O modificador `public` pode ser utilizado em métodos e atributos, e com isso tornando-os acessíveis no escopo global.

`public` é o modificador de acesso padrão ao declarar um atributo ou métodos.

**IMPORTANTE**: a utilização do `public` (ou `private`) é obrigatório quando for definir os atributos de uma classes via construtor:

```ts
class Collaborator {
  constructor(
    public readonly name: string,
    public readonly lastName: string
  ) {}
}
```

> ## **`private`**

O modificador `private` pode ser utilizado em métodos e atributos, e com isso tornando-os acessíveis apenas ao escopo (classe/arquivo) em que foi criado.

> ## **Exemplo**

```ts
class Collaborator {
  constructor(public readonly name: string, public readonly lastName: string) {}
}

class Company {
  readonly name: string;
  private readonly collaborators: Collaborator[] = [];
  protected readonly cnpj: string;

  constructor(name: string, cnpj: string) {
    this.name = name;
    this.cnpj = cnpj;
  }

  addCollaborator(collaborator: Collaborator): void {
    this.collaborators.push(collaborator);
  }

  showCollaborators(): void {
    for (const collaborator of this.collaborators) {
      console.log(collaborator);
    }
  }
}

const company = new Company('Udemy', '11.111.111/0001-11');

const collaborator1 = new Collaborator('Luiz', 'Otávio');
const collaborator2 = new Collaborator('Maria', 'Miranda');
const collaborator3 = new Collaborator('João', 'Vieira');

company.addCollaborator(collaborator1);
company.addCollaborator(collaborator2);
company.addCollaborator(collaborator3);

console.log(company);

company.showCollaborators();
```