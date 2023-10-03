# Seletores no CSS

> ## **Element Selector**

### **Definição**

Atribuir um estilo para um determinada tag HTML de forma global.

### **Sintaxe**

```css
[tag HTML] {
  /* Estilos */
}
```

### **Exemplo**

```css
h1 {
  background: red;
}
```

> Todas as tags `<h1>` terão a cor de fundo vermelho.

> ## **Class Selector**

### **Definição**

Atribuir um estilo para todos os elementos que possuem uma determinada classe.

**OBS**: a nomenclatura de classe não deve conter acentos e nem espaços, caso necessário utilizar hífen para nomes composto.

### **Sintaxe**

```css
.[nome da classe] {
  /* Estilos */
}
```

### **Tag com uma classe**

```html
<h1 class="azul">Título 1</h1>
```

```css
.azul {
  background: blue;
}
```

> Todo elemento com a classe `azul` terá a cor de fundo azul.

### **Tag com múltiplas classes**

```html
<h1 class="azul sem-margem">Título 1</h1>
```

```css
.azul {
  background: blue;
}

.sem-margem {
  margin: 0;
}
```

> ## **ID Selector**

### **Definição**

Atribuir um estilo para um única tag com o ID correspondente.

O ID é único, ou seja, não pode ter mais de 1 elemento com o mesmo ID.

Esse seletor é utilizado apenas quando apenas um elemento possui um estilo único em toda a aplicação.

### **Sintaxe**

```css
#[ID] {
  /* Estilos */
}
```

### **Exemplo**

```html
<h1 id="cabecalho-ola-mundo">Olá mundo</h1>
```

```css
#cabecalho-ola-mundo {
  background: purple;
} 
```