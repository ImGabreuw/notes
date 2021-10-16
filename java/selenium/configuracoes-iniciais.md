# Dependências e configurações iniciais

### Dependência

* **Selenium Java**

    ```xml
    <dependency>
        <groupId>org.seleniumhq.selenium</groupId>
        <artifactId>selenium-java</artifactId>
        <version>3.141.59</version>
    </dependency>
    ```

    > É obrigatório baixar o *driver* do navegador de sua preferência

* **Selenium remote driver** (optional)

  ```xml
  <dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-remote-driver</artifactId>
    <version>3.141.59</version>
  </dependency>
  ```

  > É necessário algumas configurações extras

### Configurações iniciais

* Baixar o *WebDriver* da sua preferência

  * [Chrome WebDriver](https://chromedriver.chromium.org/downloads) (recomendado)

  * [FireFox WebDriver](https://github.com/mozilla/geckodriver/releases)

* Definir uma variável de ambiente com o caminho até o WebDriver (**APENAS** para Windows)

  ```java
  System.setProperty("webdriver.chrome.driver", "/caminho/para/o/driver/chromedriver.exe");
  ```

  * **OBS**: a biblioteca [WebDriverManager](https://github.com/bonigarcia/webdrivermanager) abstrai a complexidade na configuração do WebDriver

### WebDriverManager

* **Dependência**

  * **Maven**

      ```xml
      <dependency>
        <groupId>io.github.bonigarcia</groupId>
        <artifactId>webdrivermanager</artifactId>
        <version>5.0.3</version>
      </dependency>
      ```

  * **Gradle**

    ```gradle
    dependencies {
      implementation("io.github.bonigarcia:webdrivermanager:5.0.3")
    }
    ```

* **Função**: auto-configura algumas variáveis de ambientes necessárias para o funcionamento do WebDriver. Além disso, ele baixa a versão mais atual do driver, caso o mesmo esteja desatualizado

* **Exemplo**

  ```java
  WebDriverManager.chromedriver().setup();
  WebDriver driver = new ChromeDriver();
  ```

  > **OBS**: no Windows, não é mais necessário `System.setProperty("webdriver.chrome.driver", "/caminho/para/o/driver/chromedriver.exe")`