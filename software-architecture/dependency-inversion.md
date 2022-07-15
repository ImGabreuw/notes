# Inversão de dependência (Dependency Inversion)

> ## **Definição**

Módulos de alto nível **não devem depender** de módulos de baixo nível. Ambos devem depender de **abstrações**.

Abstrações não devem depender de detalhes. Detalhes devem depender de abstrações.

* **Módulos de alto nível**: são as **rotinas mais fáceis** de entender, mais próximas da realidade de qualquer programador. Tendem a exigir menos carga mental para serem usadas.

* **Módulos de baixo nível**: são as **rotinas mais complexas** e difíceis de entender. Geralmente são compostas de **implementações** de cálculos ou comportamentos específicos.

* **Detalhes**: são os **artefatos** que **não** deveriam **fazem parte da arquitetura** de forma acoplada, mas que, no entanto, são **necessários** para um sistema funcionar.

> ## **Exemplo**

```ts
class Writer {
  private _tool: Tool | null = null;

  constructor(private _name: string) {}

  set tool(tool: Tool | null) {
    this._tool = tool;
  }

  get tool(): Tool | null {
    return this._tool;
  }

  write(): void {
    if (this.tool === null) {
      console.log('Não posso escrever sem ferramenta...');
      return;
    }

    this.tool.write();
  }
}

abstract class Tool {
  constructor(private _name: string) {}

  abstract write(): void;

  get name(): string {
    return this._name;
  }
}

class Pen extends Tool {
  write(): void {
    console.log(`Escrevendo com ${this.name}...`);
  }
}

class TypeWriter extends Tool {
  write(): void {
    console.log(`Digitando com ${this.name}...`);
  }
}

const writer = new Writer('Luiz');

writer.write();

const pen = new Pen('Bic');
writer.tool = pen;
writer.write();

const typeWriter = new TypeWriter('Máquina de escrita');
writer.tool = typeWriter;
writer.write();
```

* `Tool`: módulo de alto nível

* `Pen` e `TypeWriter`: módulo de baixo nível

* `Writer`: detalhes
