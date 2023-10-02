# Construtor

> ## **Construtor privado e Singleton**

### **Definição**

Ao tornar o **construtor** da classe privado, isso inviabiliza a criação de novas instâncias fora dessa dessa:

```ts
private constructor(...) {}
```

Tal conceito é utilizado no padrão de projeto `Singleton` que sugere a criação de uma **instância única** em toda a aplicação.

Esse padrão é amplamente usado para realizar a **conexão com o banco de dados**, pois em aplicações reais o número de conexões são limitadas devido ao alto custo para criá-las.

### **Exemplo**

```ts
// Singleton
export class Database {
  private static database: Database;

  private constructor(
    private host: string,
    private user: string,
    private password: string,
  ) {}

  connect(): void {
    console.log(`Connection: ${this.host}, ${this.user}, ${this.password}`);
  }

  // Method factory
  static getDatabase(host: string, user: string, password: string): Database {
    if (!Database.database) {
      Database.database = new Database(host, user, password);
    }

    return Database.database;
  }
}

const db1 = Database.getDatabase('localhost', 'root', 'root');
db1.connect();

const db2 = Database.getDatabase('localhost', 'root', 'root');
db2.connect();

console.log(db1 === db2); // true
```