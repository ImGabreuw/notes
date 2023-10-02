# Tag: `<script>`

> ## **Função**

Escrever código JavaScript dentro de um arquivo HTML:

```html
<!DOCTYPE html>
<html lang="pt-BR">
  <!-- ... -->
  <script>
    console.log("Olá mundo!");
    // ...
  </script>
  <!-- ... -->
</html>
```

Existem 2 formas de utilizá-lo dentro de um arquivo HTML:

- Dentro da tag `<head>` (não é uma boa prática pois pode retardar o carregamento da página):

  ```html
  <!DOCTYPE html>
  <html lang="pt-BR">
    <head>
      <meta charset="UTF-8" />
      <title>Título</title>
      <script>
        console.log("Olá mundo!");
        // ...
      </script>
    </head>
    <body></body>
  </html>
  ```

- Dentro da tag `<body>`:

  ```html
  <!DOCTYPE html>
  <html lang="pt-BR">
    <head>
      <meta charset="UTF-8" />
      <title>TítuloL</title>
    </head>
    <body>
      <script>
        console.log("Olá mundo!");
        // ...
      </script>
    </body>
  </html>
  ```
