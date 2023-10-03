# Função fábrica (_Factory Functions_)

### **Definição**

As _factory functions_ são funções com o propósito de padronizar e/ou definir regras específicas ao instanciar um objeto.

### **Exemplo**

```js
function criarPessoa(nome, sobrenome, altura, peso) {
  return {
    nome,
    sobrenome,
    altura,
    peso,

    falar(assunto) {
      return `${this.nome} está falando sobre ${assunto}`;
    },

    imc() {
      const imc = this.peso / this.altura ** 2;

      return imc.toFixed();
    },
  };
}

const pessoa = criarPessoa("Luiz", "Otávio", 1.8, 80);

console.log(pessoa.falar("JS"));
console.log(pessoa.imc());
```
