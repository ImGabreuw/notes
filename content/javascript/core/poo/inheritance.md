# Herança

> ## **`extends`**

### **Definição**

A palavra reservada `extends` serve para indicar que uma classe herdará de outra.

**IMPORTANTE**: não é recomendável extender uma classe mais de 1 vez, pois isso torna a lógica do código muito complexa, dificultado a depuração e a manutenção.

### **Sintaxe**

```js
class [nome da subclasse] extends [nome da superclasse] {
  // ...
}
```

### **Exemplo**

```js
class DispositivoEletronico {
  constructor(nome) {
    this.nome = nome;
    this.ligado = false;
  }

  ligar() {
    if (this.ligado) {
      console.log(this.nome + " já está ligado.");
      return;
    }

    this.ligado = true;
  }

  desligar() {
    if (!this.ligado) {
      console.log(this.nome + " já está desligado.");
      return;
    }

    this.ligado = false;
  }
}

class Smartphone extends DispositivoEletronico {}

const smartphone = new Smartphone("Smartphone");
smartphone.ligar();
smartphone.ligar(); // Smartphone já está ligado.
smartphone.desligar();
smartphone.desligar(); // Smartphone já está desligado.

console.log(smartphone); // Smartphone { nome: 'Smartphone', ligado: false }
```

> ## `super`

### **Definição**

A palavra reservada `super` é a representação da **super classe** em uma subclasse.

O método `super()` é a representação do **construtor da super classe** em uma subclasse.

### **Exemplo**

```js
class DispositivoEletronico {
  constructor(nome) {
    this.nome = nome;
    this.ligado = false;
  }

  ligar() {
    if (this.ligado) {
      console.log(this.nome + " já está ligado.");
      return;
    }

    this.ligado = true;
  }

  desligar() {
    if (!this.ligado) {
      console.log(this.nome + " já está desligado.");
      return;
    }

    this.ligado = false;
  }
}

class Smartphone extends DispositivoEletronico {
  constructor(nome, cor, modelo) {
    super(nome);

    this.cor = cor;
    this.modelo = modelo;
  }
}

const smartphone = new Smartphone("Smartphone", "preto", "Galaxy S10");
smartphone.ligar();
smartphone.ligar(); // Smartphone já está ligado.
smartphone.desligar();
smartphone.desligar(); // Smartphone já está desligado.

console.log(smartphone);

/*
Smartphone {
  nome: 'Smartphone',        
  ligado: false,
  cor: 'preto',
  modelo: 'Galaxy S10'       
}
*/
```
