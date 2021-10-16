# Introdução ao Selenium

### Função

* Ferramenta utilizada para automação de testes da interface do usuário (aplicações Web)

### Exemplo

```java
driver.get("https://www.google.com.br");

WebElement searchBox = driver.findElement(By.cssSelector("[name='q']"));

searchBox.sendKeys("Editora Globo");
searchBox.submit();
```

> Fonte: [medium](https://medium.com/editora-globo/introdu%C3%A7%C3%A3o-ao-selenium-webdriver-8ac2f9a8d9d0)