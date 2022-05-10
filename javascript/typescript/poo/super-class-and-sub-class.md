# _Super class_ e _Super class_

> ## **Definição**

A **super classe** também pode ser chamada de _base class_ ou _parent class_. Ela é a classe que é herdada por outra classe, a **sub classe**.

A palavra reservada `super` tem a função de referenciar à **super classe**, ou seja, acessar os atributos e métodos dessa classe.

Para chamar o **construtor da super classe**, basta utilizar a notação `super()` e informar as propriedades da _base class_ como argumento.

> ## **Exemplo**

```ts
class Person {
  constructor(
    public name: string,
    public lastName: string,
    private age: number,
    protected cpf: string
  ) {}

  getAge(): number {
    return this.age;
  }

  getCpf(): string {
    return this.cpf;
  }

  getFullName(): string {
    return this.name + " " + this.lastName;
  }
}

class Student extends Person {
  getFullName(): string {
    return "(Aluno)" + super.getFullName();
  }
}

class Costumer extends Person {
  getFullName(): string {
    return "(Cliente)" + super.getFullName();
  }
}
```

```ts
class Person {
  constructor(
    public name: string,
    public lastName: string,
    private age: number,
    protected cpf: string
  ) {}

  getAge(): number {
    return this.age;
  }

  getCpf(): string {
    return this.cpf;
  }

  getFullName(): string {
    return this.name + " " + this.lastName;
  }
}

class Student extends Person {
  constructor(
    name: string,
    lastName: string,
    age: number,
    cpf: string,
    public room: string
  ) {
    super(name, lastName, age, cpf);
  }
}
```
