# Salvar dados no banco de dados

> ## **Sintaxe**

```js
create([objeto model])
```

> ## **Exemplo**

```js
const HomeModel = require("../models/HomeModel");

HomeModel.create({
  titulo: "Um título de testes",
  descricao: "Uma descrição de testes.",
})
  .then((dados) => console.log(dados))
  .catch((err) => console.log(err));

/*
{                                            "),
  titulo: 'Um título de testes',
  descricao: 'Uma descrição de testes.',     
  _id: new ObjectId("61d4594ef61c911d95a7abe3"),
  __v: 0
}
*/
```
