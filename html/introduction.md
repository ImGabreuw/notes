# Introdução ao HTML

> ## **Definição**

**HTML**: *HyperText Markup Language*

O HTML é o componente base da web, com ele é possível criar o "esqueleto" de uma página wwb.

Os arquivos HTML têm a extensão `.html`.

> ## **Estrutura base**

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <title>Título</title>
</head>
</html>
```

> ## ***Emmet Abbreviation*: template estrutura base do HTML**

### **Sintaxe**

1. Criar um arquivo `.html`

2. Digitar `!` no arquivo e em seguida apertar `ENTER`

3. Como resultado, o Emmet deve entregar um template parecido com:

    ```html
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
    </head>
    <body>
      
    </body>
    </html>
    ```

> ## **Tags**

```html
<!-- TAG com corpo -->
<nome-da-tag> <!-- começo da TAG -->

  <!-- Corpo da TAG -->
  
  <nome-de-outra-tag>

    <!-- TAG sem corpo -->
    <tag-sem-corpo />

    <!-- TAG com atributos -->  
    <tag-sem-corpo atributo="valor"/> <!-- Pode ou não ter atributos que recebem valores -->
    <tag-sem-corpo atributo="valor1 valor2"/> <!-- Atributos que podem receber 1 ou + valores -->

  </nome-de-outra-tag>

</nome-da-tag> <!-- fim da TAG -->
```

### **Hierarquia**

A indentação é uma forma de facilitar a visibilidade das "tags filhas".

### **Atributos**

Existem atributos específicos para uma determinada tag.

Geralmente, os atributos vem na abertura da tag.

> ## **OBS**

* Os arquivos `.html` pode ser abertos/editados por qualquer ferramenta que entenda `.txt`

* HTML é case insensitive

* Site para validação do código HTML: [clique aqui](https://validator.w3.org/)

> ## **Semântica**

### **Antes do HTML 5**

Os sites eram construídos basicamente por `<div>` atribuídas com um `ID`, portanto não eram semânticos.

```html
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>Título</title>
</head>

<body>
  <div id="header"></div>
  
  <div id="main"></div>
  
  <div id="footer"></div>
</body>

</html>
```

### **A partir do HTML 5**

Com o surgimento do HTML 5 veio várias novas tags, que por sua vez cada uma possuía um significado, tornando os sites mais semânticos.

```html
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>Título</title>
</head>

<body>
  <header></header>
  
  <main></main>
  
  <footer></footer>
</body>

</html>
```