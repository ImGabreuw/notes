# Métodos acessores

> ## **Definição**

Os métodos acessores são as funções `getter` e `setter` que servem para "proteger" as propriedades de uma classe.

> ## **Exemplo**

## **Problema**

A propriedade `velocidade` pode ser acessada diretamente através da notação `.` (sem nenhuma validação de _input_).

```js
class Carro {
  constructor(nome) {
    this.nome = nome;
    this.velocidade = 0;
  }

  acelerar() {
    if (this.velocidade >= 100) return;
    this.velocidade++;
  }

  freiar() {
    if (this.velocidade <= 0) return;
    this.velocidade--;
  }
}

const carro = new Carro("Fusca");
carro.velocidade = 1500; // Valor inesperado

console.log(carro); // Carro { nome: 'Fusca', velocidade: 1500 }
```

### **Solução**

Proteger a propriedade `velocidade` com métodos acessores e o encapsular esse atributo.

```js
const _velocidade = Symbol("velocidade");

class Carro {
  constructor(nome) {
    this.nome = nome;
    this[_velocidade] = 0;
  }

  get velocidade() {
    return this[_velocidade];
  }

  set velocidade(valor) {
    if (typeof valor !== "number") return;

    if (valor >= 100 || valor <= 0) return;

    this[_velocidade] = valor;
  }

  acelerar() {
    if (this[_velocidade] >= 100) return;
    this[_velocidade]++;
  }

  freiar() {
    if (this[_velocidade] <= 0) return;
    this[_velocidade]--;
  }
}

const carro = new Carro("Fusca");

carro.velocidade = 1500;
console.log(carro.velocidade); // 0

carro.velocidade = 99;
console.log(carro.velocidade); // 99
```

> **OBS**: `this[_velocidade]` é a declaração de uma propriedade a partir da notação de `array` (possibilita a sua declaração de forma dinâmica)
