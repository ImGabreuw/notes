# Introdução ao Selenium

> ## **Definição**

É uma ferramenta que abstrai o acesso ao navegador afim de facilitar a automação de teste da interface do usuário.

> ## **Exemplo**

```java
driver.get("https://www.google.com.br");

WebElement searchBox = driver.findElement(By.cssSelector("[name='q']"));

searchBox.sendKeys("Editora Globo");
searchBox.submit();
```
