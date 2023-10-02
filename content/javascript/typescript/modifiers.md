# Modificadores

> ## **readonly**

### **Definição**

A palavra reservada `readonly` tem a função de tornar o objeto imutável.

### **Exemplo**

```ts
const objetoA: {
  readonly chaveA: string;
} = {
  chaveA: 'Valor A',
};

objetoA.chaveA = 'Nova chave A'; // erro
```