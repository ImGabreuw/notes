# Método: `stat()`

> ## **Definição**

Obter as informações de um arquivo/diretório.

> ## **Exemplo**

```js
const fs = require("fs").promises;
const path = require("path");

fs.stat(__filename)
  .then((info) => console.log(info))
  .catch((err) => console.error(err));

/*
Stats {
  dev: 2519208228,
  mode: 33206,
  nlink: 1,
  uid: 0,
  gid: 0,
  rdev: 0,
  blksize: 4096,
  ino: 562949953543413,
  size: 164,
  blocks: 0,
  atimeMs: 1641155104824.3376,
  mtimeMs: 1641155103491.0784,
  ctimeMs: 1641155103491.0784,
  birthtimeMs: 1641155013479.4893,
  atime: 2022-01-02T20:25:04.824Z,
  mtime: 2022-01-02T20:25:03.491Z,
  ctime: 2022-01-02T20:25:03.491Z,
  birthtime: 2022-01-02T20:23:33.479Z        
}
*/
```
