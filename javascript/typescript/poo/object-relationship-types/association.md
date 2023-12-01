# Associação

> ## **Definição**

**Associação** é a relação mais fraca entre objetos.

Os elementos envolvidos são **independentes entre si**.

> ## **Exemplo**

![](diagrama-de-associacao.png)

```ts
export class Writer {
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

export abstract class Tool {
  constructor(private _name: string) {}

  abstract write(): void;

  get name(): string {
    return this._name;
  }
}

export class Pen extends Tool {
  write(): void {
    console.log(`Escrevendo com ${this.name}...`);
  }
}

export class TypeWriter extends Tool {
  write(): void {
    console.log(`Digitando com ${this.name}...`);
  }
}

const writer = new Writer("Luiz");

writer.write(); // Não posso escrever sem ferramenta...

const pen = new Pen("Bic");
writer.tool = pen;
writer.write(); // Escrevendo com Bic...

const typeWriter = new TypeWriter("Máquina de escrita");
writer.tool = typeWriter;
writer.write(); // Digitando com Máquina de escrita...
```