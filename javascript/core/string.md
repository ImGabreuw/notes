# Tipo de dado `string`

> ## Template Strings (interpolação de Strings)

### **Função**

- Concatenar `string`s de forma mas elegante.

- Utilizar **aspas simples** e/ou **duplas dentro** dentro da mesma `string`:

  ```js
  console.log(`'Luiz' "Otávio"`); // 'Luiz' "Otávio"
  ```

> ## **Método: `split`**

### **Função**

Separar uma `string` em um `array` a partir de um delimitador (argumento do método)

### **Exemplo**

```js
const name = "João da Silva";
const names = name.split(" ");

console.log(names);
// [ 'joão', 'da', 'Silva' ]
```

> No código acima, o delimitador passado no método é o **espaço**.
