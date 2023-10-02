# Modificadores de acesso

> ## **`public`**

O modificador `public` pode ser utilizado em métodos e atributos, e com isso tornando-os acessíveis no escopo global.

`public` é o modificador de acesso padrão ao declarar um atributo ou métodos.

**IMPORTANTE**: a utilização do `public` (ou `private`) é obrigatório quando for definir os atributos de uma classes via construtor:

```ts
class Collaborator {
  constructor(public readonly name: string, public readonly lastName: string) {}
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
```

> ## **`protected`**

### **Definição**

O modificador de acesso `protected` deixa a visibilidade de uma propriedade ou atributo para a class na qual foi definida e também nas subclasses.

### **Exemplo**

```ts
class Collaborator {
  constructor(public readonly name: string, public readonly lastName: string) {}
}

class Company {
  readonly name: string;
  protected readonly collaborators: Collaborator[] = [];
  private readonly cnpj: string;

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

class Udemy extends Company {
  constructor() {
    super("Udemy", "11.111.111/0001-11");
  }

  popCollaborator(): Collaborator | null {
    const collaborator = this.collaborators.pop();

    return collaborator ? collaborator : null;
  }
}
```
