# Classes e membros abstratos

> ## **Definição**

As _subclasses_ possuem o **mesmo tipo** da _superclasse_.

As classes e membros abstratos (`abstract`) formam um **"contrato"** com as _subclasses_, ou seja, as classe que herdam dessa _superclasse_ devem implementar os membros abstratos dela.

Classe abstrata **não pode ser instanciada diretamente**, ou seja, só é possível instanciar as _subclasses_ (**classes concretas**) dela:

- Forma incorreta:

  ```ts
  abstract class Character {
    // ...
  }

  const character = new Character(...); // Erro de compilação
  ```

- Forma correta:

  ```ts
  abstract class Character {
    // ...
  }

  class Warrior extends Character {
    // ...
  }
  class Monster extends Character {
    // ...
  }

  const warrior = new Warrior(...);
  const monster = new Monster(...);
  ```

Método abstrato **não pode ter implementação (corpo)** na superclasse (abstrata):

- Forma incorreta:

  ```ts
  abstract class Character {
    abstract attackPhrase(): void {
      // Corpo -> erro de compilação
    }
  }
  ```

- Forma correta:

  ```ts
  abstract class Character {
    abstract attackPhrase(): void;
  }
  ```

> **OBS**: o **tipo de retorno** deve ser **definido explicitamente** em métodos abstratos

> ## **Exemplo**

```ts
abstract class Character {
  protected abstract emoji: string;

  constructor(
    protected name: string,
    protected damage: number,
    protected life: number
  ) {}

  removeLife(damage: number): void {
    this.life -= damage;
    console.log(`${this.name} sofreu um dano de ${damage} pontos de vida...`);
  }

  abstract attackPhrase(): void;

  attack(target: Character): void {
    this.attackPhrase();
    target.removeLife(this.damage);
  }
}

class Warrior extends Character {
  protected emoji = "\u{1F9DD}";

  attackPhrase(): void {
    console.log(`${this.emoji} Atacarrrr!`);
  }
}

class Monster extends Character {
  protected emoji = "\u{1F9DF}";

  attackPhrase(): void {
    console.log(`${this.emoji} Krr Krr!`);
  }
}

const warrior = new Warrior("Guerreiro", 12, 100);
const monster = new Monster("Monstro", 9, 50);

warrior.attack(monster);
monster.attack(warrior);

/*
🧝 Atacarrrr!
Monstro sofreu um dano de 12 pontos de vida...
🧟 Krr Krr!
Guerreiro sofreu um dano de 9 pontos de vida...
*/
```
