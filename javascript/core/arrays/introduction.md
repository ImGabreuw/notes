# Introdução à Arrays

> ## **Definição**

É uma estrutura de dados que serve para armazenar dados e organizá-los.

Cada índice do array armazena a referência do seu respectivo elemento (valor) na memória.

O array pode ser criado de 2 formas:

- **Literal**: declarar um array a partir da notação de colchetes (`[]`)

  ```js
  const names = ["Eduardo", "Maria", "Joana"];
  ```

- **Via construtor**: declarar um array a partir do método construtor (utilizando a palavra reservada `new`)

  ```js
  const names = new Array("Eduardo", "Maria", "Joana");
  ```

> ## **Métodos**

- `pop()`: remover o último elemento

- `shift()`: remover o primeiro elemento

- `length()`: obter o tamanho (número de elementos)

- `push()`: adicionar um elemento no final

- `unshift()`: adicionar um elemento no começo

- `slice()`: recortar um intervalo de valores

  > **OBS**: o parâmetro `end` do método não pertence ao intervalo a ser "fatiado"

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Wallace", "Rosana"];
  const first3Names = names.slice(0, 3);

  console.log(first3Names);
  // [ 'Eduardo', 'Maria', 'Joana' ]
  ```

  ```js
  const names = ["Eduardo", "Maria", "Joana", "Wallace", "Rosana"];
  const first3Names = names.slice(0, -2);

  console.log(first3Names);
  // [ 'Eduardo', 'Maria', 'Joana' ]
  ```

- `split()`: separar uma `string` em um `array` a partir de um delimitador (argumento do método)

  ```js
  const name = "João da Silva";
  const names = name.split(" ");

  console.log(names);
  // [ 'joão', 'da', 'Silva' ]
  ```

  > No código acima, o delimitador passado no método é o **espaço**.

- `spread operador`: copiar os valores de um array para outro

  ```js
  const names = ["Eduardo", "Maria", "Joana"];
  const clone = [...names];

  names.pop();

  console.log(names);
  // [ 'Eduardo', 'Maria' ]

  console.log(clone);
  // [ 'Eduardo', 'Maria', 'Joana' ]
  ```
