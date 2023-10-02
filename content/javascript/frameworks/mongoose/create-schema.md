# Criação de _schema_

> ## **Sintaxe**

1. Importar o `mongoose` no módulo:

   ```js
   const mongoose = require("mongoose");
   ```

2. Definir o _schema_ do Model:

   ```js
   new mongoose.Schema({
     [nome da propriedade]: [definições dessa propriedade],
     // ...
   })
   ```

   > `[definições dessa propriedade]` é um objeto que armazena o tipo de dado e as validações de uma propriedade.

3. Configurar esse _schema_ como novo `model` no contexto do `mongoose`:

   ```js
   ongoose.model(
     [nome do model],
     [referência do schema]
   );
   ```

> ## **Exemplo**

```js
const mongoose = require("mongoose");

const HomeSchema = new mongoose.Schema({
  titulo: { type: String, required: true },
  descricao: String,
});

const HomeModel = mongoose.model("Home", HomeSchema);

module.exports = HomeModel;
```
