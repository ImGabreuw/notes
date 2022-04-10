# Herança

> ## **Definição**

A herança é utilizado para **reutilizar código** e também para aplicar **polimorfismo**, pois ao extender uma classe, a "classe filha" herda todos os atributos e comportamentos da "classe pai".

É necessário tomar cuidado ao utilizar a herança, pois isso pode causar uma complexidade desnecessária no código. Desse modo, existem outras maneiras de desacoplar o código como: 

- **Composição**

- **Agregação**

- **Associação**

> ## **Exemplo**

```ts
export class Person {
  constructor(
    public name: string,
    public lastName: string,
    private age: number,
    protected cpf: string,
  ) {}

  getAge(): number {
    return this.age;
  }

  getCpf(): string {
    return this.cpf;
  }

  getFullName(): string {
    return this.name + ' ' + this.lastName;
  }
}

export class Student extends Person {
  getFullName(): string {
    return `(Aluno) ${this.name} ${this.lastName}`;
  }
}

export class Costumer extends Person {
  getFullName(): string {
    return `(Cliente) ${this.name} ${this.lastName}`;
  }
}

const person = new Person('Luiz', 'Otávio', 30, '000.000.000-00');
console.log(person.getFullName()); // Luiz Otávio

const student = new Student('Luiz', 'Otávio', 30, '000.000.000-00');
console.log(student.getFullName()); // (Aluno) Luiz Otávio

const costumer = new Costumer('Luiz', 'Otávio', 30, '000.000.000-00');
console.log(student.getFullName()); // (Cliente) Luiz Otávio
```