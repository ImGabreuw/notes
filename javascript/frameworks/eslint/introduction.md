# Introdução ao ESLint

> ## **Desativar uma regra do ESLint**

### **Via arquivo `.eslintrc.js`**

1. Descansar o mouse em cima do aviso do ESLint e após uns segundos aparecerá uma janela informando o erro e sua documentação

2. No final dessa janela, terá algo parecido com `eslint([nome da regra])`

3. Copiar o nome da regra e adicioná-la na chave `rules` do arquivo `.eslintrc.js`:

   ```js
   module.exports = {
     // ...
     rules: {
       "no-console": "off",
     },
   };
   ```

### **Via comentário**

```js
const teste = 22;

// eslint-disable-next-line
console.log(teste);
```

```js
const teste = 22;

console.log(teste); // eslint-disable-line
```
