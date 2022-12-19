> ## Exemplo em TypeScript

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
      console.log("Não posso escrever sem ferramenta...");
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

const writer = new Writer("Luiz");

writer.write();

const pen = new Pen("Bic");
writer.tool = pen;
writer.write();

const typeWriter = new TypeWriter("Máquina de escrita");
writer.tool = typeWriter;
writer.write();
```

- `Tool`: módulo de alto nível

- `Pen` e `TypeWriter`: módulo de baixo nível

- `Writer`: detalhes
