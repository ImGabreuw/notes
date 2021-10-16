# Explicação dos métodos fornecidos pela API do Selenium

## Métodos do *WebDriver*

### `.get(...)`

* **Função**: acessar uma página

* **Argumentos**

  * `url: String`: *URL* da página

    * **IMPORTANTE**: sempre informar o protocolo (`HTTPS` ou `HTTP`)

      * `www.google.com.br` ❌

      * `https://www.google.com.br` ✅

* **Exemplo**

  ```java
  driver.get("https://www.google.com.br");
  ```

### `.findElement(...)`

* **Função**: obter um elemento Web (*WebElement*) da página

* **Argumentos**

  * `by: By`: meio para obter esse elemento (seletor)

    > Seletores: Id, ClassName, CssSelector, Xpath, TagName, etc

* **Exemplo**

  ```java
  WebElement searchBox = driver.findElement(By.cssSelector("[name='q']"));
  ```

  > **WebElement**: é o elemento Web obtido através do seletor. A partir dela é possível realizar algumas interações, como clicar, digitar, obter o valor de um atributo, etc

---

## Métodos do *WebElement*

### `.sendKeys(...)`

> *OBS*: só funciona para tags HTML que aceitam um texto, como por exemplo a tag `<input>`

* **Função**: simular a ação de digitar

* **Argumentos**

  * `charSequence: CharSequence`: String que será digitado no elemento

* **Exemplo**

  ```java
  searchBox.sendKeys("Editora Globo");
  ```

### `.submit()`

> **OBS**: só funciona para a tag `<form>`

* **Função**: realizar a ação de *submit* (enviar) do formulário

* **Exemplo**

  ```java
  searchBox.submit();
  ```

### `.click()`

> **OBS**: só funciona para botões de *submit*

* **Função**: simular a ação de clicar

* **Exemplo**

  ```java
  searchBox.click();
  ```