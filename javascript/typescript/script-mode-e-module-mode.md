# "Script mode" e "Module mode"

### **Definição**

Esse modo é habilitado por padrão e pode gerar alguns erros indesejados, pois a IDE entende os arquivos `.ts` como os mesmos arquivos que são compilado pelo `tsc` (`.js`).

```js
// index.ts
const name = "Luiz";
        ^
        |
    // Erro: Não é possível declarar novamente a variável de escopo de bloco 'name'

// index.js (gerado pelo "tsc")
const name = "Luiz";
```

### **Solução**

Utilizar o **module mode** por meio de exportar a variável/função. Dessa forma, o escopo é alterado de global para módulo:

```js
// index.ts
const name = "Luiz";

export default name;
```
