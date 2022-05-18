# _Getter_ e _Setter_

> ## **Definição**

O encapsulamento dos atributos de uma classe tem como objeto dar uma maior consistência aos objetos, uma vez que há a padronização na obtenção e na alteração do valor dessa propriedade.

O **getter** é um método acessor para obter o valor de uma propriedade.

O **setter** é um método acessor para definir/atualizar um valor de uma propriedade.

Nas versões mais recetes do JavaScript, a declaração dos métodos _getter_ e _setter_ é feito pelas palavras chave `get` e `set`, respectivamente:

```ts
class Person {
  constructor(
    private _name: string;
  )

  get name(): string {
    return this._name;
  }

  set name(name: string) {
    this._name = name;
  }
}
```

Por convenção, os atributos que possuem os métodos _getter_ e _setter_ declarados explicitamente, deveram ser antecedidos por um _underline_ (`_`). Isso ocorre porque os métodos _getter_ e  _setter_ comportam-se como uma propriedade da classe.

**IMPORTANTE**: o JavaScript/TypeScript não suporta a declaração explícita do tipo de retorno do método **setter**:

* **Forma incorreta**:

  ```ts
  set name(name: string): void {
    this._name = name;
  }
  ```

* **Forma correta**:

  ```ts
  set name(name: string) {
    this._name = name;
  }
  ```

**OBS**: ao declarar um atributo com métodos acessores declarados explicitamente (`_[nome do atributo]`), é importante não esquecer do _underline_, pois caso você não o utilize, em tempo de execução será lançado um erro de `StackOverFlow`, devido a uma sequência de chamadas recursivas:

```ts
class Person {
  constructor(
    private _name: string;
  )

  get name(): string {
    return this.name; // chama o próprio método ('get name()')
  }

  set name(name: string) {
    this.name = name; // chama o próprio método ('set name()')
  }
}
```

> ## **Exemplo**

### **Forma antiga de declarar getters e setters**

```ts
class Person {
  constructor(
    private name: string,
    private lastName: string,
    private age: number,
    private cpf: string,
  ) {}

  getCpf(): string {
    return this.cpf.replace(/\D/g, ''); // remover qualquer caractere que não seja número
  }

  setCpf(cpf: string): void {
    this.cpf = cpf;
  }
}

const person = new Person('Luiz', 'Otávio', 30, '000.000.000-00');
person.setCpf('000.000.000-11');
console.log(person.getCpf());
```

### **Forma nova de declarar getters e setters**

```ts
class Person {
  constructor(
    private name: string,
    private lastName: string,
    private age: number,
    private _cpf: string,
  ) {}

  get cpf(): string {
    return this._cpf.replace(/\D/g, ''); // remover qualquer caractere que não seja número
  }

  set cpf(cpf: string) {
    this._cpf = cpf;
  }
}

const person = new Person('Luiz', 'Otávio', 30, '000.000.000-00');
person.cpf = '000.000.000-11';
console.log(person.cpf);
```