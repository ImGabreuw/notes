# Recursos no REST

> ## **Definição**

São representações dos modelos e/ou coleções de modelos (mento / vídeo / imagem) que serão expostos aos clientes.

Cada recurso tem um endereço único chamado *URI* (*Uniform Resource Identifier*, um conjunto de caracteres).

**Singleton Resource**: 1 recurso

**Collection Resource**: coleção de recursos (1 ou mais)

> ## **Representação de um recurso**

### **JSON (JavaScript Object Notation)**

É a forma mais utilizada no momento.

```json
{
  "id": 1,
  "name": "Han Solo"
}
```

### **XML (eXtensible Markup Language)**

```xml
<character>
    <id>1</id>
    <name>Han Solo</name>
</character>
```
