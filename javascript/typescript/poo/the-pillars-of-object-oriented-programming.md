# Os pilares da programação orientada a objetos (POO)

> ## **Abstração**

### **Definição**

Permite isolar somente as propriedades de um objeto que são necessários para o funcionamento do programa.

O isolamentos de membros é feita a partir de um modificador de acesso, como o `private`.

### **Exemplo**

```ts
export class Person {
  private name: string;
  private lastName: string;

  constructor(name: string, lastName: string) {
    this.name = name;
    this.lastName = lastName;
  }
}
```

> ## **Encapsulamento**

### **Definição**

Visa ocultar a lógica de um comportamento de um objeto, afim de exibir apenas o necessário para o uso externo.

### **Exemplo**

```ts
export class RemoteControl {
  constructor(private powerStatus = false) {}

  public turnOn(): void {
    this.powerStatus = true;
  }

  public turnOff(): void {
    this.powerStatus = false;
  }

  public getStatus(): boolean {
    return this.powerStatus;
  }
}
```

> ## **Herança**

### **Definição**

Visa transmitir características e comportamentos de um objeto "pai" para outro ("filho").

Essa prática, se implementada de forma correta, permite a reutilização de código.

### **Exemplo**

```ts
export abstract class Animal {
  constructor(public name: string) {}

  abstract makeNoise(): void;
}

export class Dog extends Animal {
  makeNoise(): void {
    console.log(`${this.name} está fazendo AU AU...`);
  }
}

export class Cat extends Anime {
  makeNoise(): void {
    console.log(`${this.name} está fazendo MIAU...`);
  }
}
```

> ## **Polimorfismo**

### **Definição**

Polimorfismo significa "várias formas", dessa forma, algo polimorfo tem a capacidade de assumir diferentes formas.

### **Exemplo**

```ts
class AnimalSounds {
  public playSound(animal: Animal): void {
    animal.makeNoise();
  }
}

const dog = new Dog("Tina");
const cat = new Cat("Suzy");

const animalSounds = new AnimalSounds();

animalSounds.playSound(dog); // Tina está fazendo AU AU...
animalSounds.playSound(cat); // Suzy está fazendo MIAU...
```
