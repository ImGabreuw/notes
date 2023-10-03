# Introdução ao CSS

> ## **Definição**

**CSS**: "*Cascading Style Sheets*" ou "Folha de Estilo em Cascata"

É o código utilizado para estilizar páginas web.

Os arquivos *CSS* têm a extensão `.css`.

A hierarquia de seletores (*selectors*) é definido por `id > class > tag`.

> ## **Sintaxe**

```css
[seletor] {
  [propriedade]: [valor]
}
```

> ## **Exemplo**

```css
h1 {
  background: red;
}
```

> Todos os as tags `<h1>` terão a cor vermelho.

> ## **Estilos no HTML**

A tag `<style>` serve para adicionar estilos aos elementos HTML sem ter que criar um arquivo separado.

```html
<head>
  <style>
    /* Estilos */
  </style>
</head>
```