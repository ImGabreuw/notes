# Tipos de dados primitivo

|   Tipo    |                               Função                                |         Exemplo         |
| :-------: | :-----------------------------------------------------------------: | :---------------------: |
|  string   |                         Armazenar um texto                          | `const nome = 'Luiz';`  |
|  number   |             Armazenar um número (inteiro ou flutuante)              |    `const num = 10;`    |
| undefined | Não armazena nenhum valor (não aponta para nenhum local na memória) |       `let nome;`       |
|   null    | Não armazena nenhum valor (não aponta para nenhum local na memória) |  `const nome = null;`   |
|  boolean  |           Armazenar uma valor lógico (`true` ou `false`)            | `const toggle = false;` |

### OBS

A atribuição de um valor primitivo de uma variável para outra variável é realizado a cópia desse valor (diferentemente de valores por referência, ou seja, objetos).

Por exemplo:

- **Tipo primitivo**

  ```js
  let a = 2;
  const b = a;
  console.log(a, b); // 2, 2

  a = 3;
  console.log(a, b); // 3, 2
  ```

- **Objetos**

  ```js
  const a = [1, 2];
  const b = a;
  console.log(a, b); // [ 1, 2 ] [ 1, 2 ]

  b.push(3);
  console.log(a, b); // [ 1, 2, 3 ] [ 1, 2, 3 ]
  ```
