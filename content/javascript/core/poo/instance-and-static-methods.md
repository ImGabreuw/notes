# Métodos de instância e Métodos estáticos

> ## **Métodos de instância ou métodos de objeto**

### **Definição**

São métodos pertencentes ao objeto.

Eles só podem ser executados quando uma classe é instanciada, ou seja, após a criação de um objeto dessa classe.

### **Exemplo**

```js
class ControleRemoto {
  constructor(tv) {
    this.tv = tv;
    this.volume = 0;
  }

  aumentarVolume() {
    this.volume += 2;
  }

  diminuirVolume() {
    this.volume -= 2;
  }
}

const controle = new ControleRemoto("LG");
controle.aumentarVolume();

console.log(controle); // ControleRemoto { tv: 'LG', volume: 2 }
```

> `aumentarVolume()` e `diminuirVolume()` são métodos de instância.

> ## **Métodos estáticos**

### **Definição**

São métodos pertencentes à classe.

Eles não precisam da instância de uma classe para serem invocados, ou seja, basta utilizar a notação `.` após o nome da classe.

Para criar um método estático utiliza-se a palavra reservada `static` antes do nome do método (ao declará-lo).

### **Exemplo**

```js
class ControleRemoto {
  constructor(tv) {
    this.tv = tv;
    this.volume = 0;
  }

  aumentarVolume() {
    this.volume += 2;
  }

  diminuirVolume() {
    this.volume -= 2;
  }

  static trocarPilha() {
    console.log("OK, vou trocar de pilha.");
  }
}

const controle = new ControleRemoto("LG");
controle.aumentarVolume();
controle.aumentarVolume();
controle.aumentarVolume();

ControleRemoto.trocarPilha();

console.log(controle);

/*
OK, vou trocar de pilha.
ControleRemoto { tv: 'LG', volume: 6 }
*/
```

> `trocarPilha()` é um método estático
