# Metodologias para criar CSS

> ## **Oriented Object CSS**

> _OOCSS_: Oriented Object CSS

> ## **Scalable and Modular Architecture for CSS**

> _SMACSS_: Scalable and Modular Architecture for CSS

> ## **Style Tools for UI Components**

> _SUITCSS_: Style Tools for UI Components

> ## **Block Element Modifier**

> _BEM_: Block Element Modifier

> ## **Atomic CSS / Functional CSS / Utility First**

### **Definição**

Essa metodologia é baseada essencialmente em classes CSS imutáveis e com geralmente 1 responsabilidade.

Há o predomínio da composição de classes de estilos, e não mais a herança, o que acarreta um ganho de produtividade e maior facilidade em dar manutenção ao código.

### **Exemplo**

- **Forma "raiz" de definir o CSS**:

  ```html
  <html>
    <head>
      <style type="text/css">
        .card {
          color: yellow;
          margin: 1px;
          border-bottom: 1px;
        }
      </style>
    </head>
    <body>
      <div class="card"></div>
    </body>
  </html>
  ```

- **Definir o CSS com base no _Utility First_**:

  ```html
  <html>
    <head>
      <style type="text/css">
        .yellow {
          color: yellow;
        }

        .m-1 {
          margin: 1px;
        }

        .border-b {
          border-bottom: 1px;
        }
      </style>
    </head>
    <body>
      <div class="yellow m-1 border-b"></div>
    </body>
  </html>
  ```
