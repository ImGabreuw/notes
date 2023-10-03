# Listagem de dados do banco de dados

```js
const HomeModel = require("../models/HomeModel");

HomeModel.find()
  .then((dados) => console.log(dados))
  .catch((err) => console.log(err));

/*
[
  {
    _id: new ObjectId("61d4594ef61c911d95a7abe3"),
    titulo: 'Um título de testes',
    descricao: 'Uma descrição de testes.',
    __v: 0
  },
  {
    _id: new ObjectId("61d45a2a3219b1ccdee2c4a2"),
    titulo: 'Um título de testes',
    descricao: 'Uma descrição de testes.',
    __v: 0
  }
]
*/
```
