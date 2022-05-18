# Membros estáticos

> ## **Definição**

Membros (atributos e métodos) estáticos de uma classe **são acessados sem ter que instância-la**.

É utilizado a palavra reservada `static` para definir um atributo ou método como estático, e para acessá-lo basta utilizar a seguinte notação:

```ts
// Atributo estático
NomeDaClasse.atributo;

// Método estático
NomeDaClasse.metodo();
```

> ## **Exemplo**

```ts
class Person {
  static defaultAge = 0;
  static defaultCpf = "000.000.000-00";

  constructor(
    public name: string,
    public lastName: string,
    public age: number,
    public cpf: string
  ) {}

  // Factory method
  static createPerson(name: string, lastName: string): Person {
    return new Person(name, lastName, Person.defaultAge, Person.defaultCpf);
  }
}

const person = Person.createPerson("Luiz", "Miranda");
```

> **OBS**: o padrão de projeto chamado `factory method` sugere a ideias de criar objetos (instância de uma classe) via **método estático**.
