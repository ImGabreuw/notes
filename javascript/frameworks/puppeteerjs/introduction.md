# Introdução ao PuppeteerJS

> ## **Definição**

[Puppeteer](https://www.npmjs.com/package/puppeteer) é uma biblioteca Node que fornece uma API de alto nível para controlar o **Chrome** ou o **Chromium** sobre o **protocolo DevTools**. 

O Puppeteer é executado, por padrão, em modo _"headless"_, mas pode ser configurado para executar o Chrome ou o Chromium aparecendo na tela do usuário.

> ## **Configuração inicial**

* **NPM**:

  ```shell
  $ npm i puppeteer 
  ```

* **Yarn**:

  ```shell
  $ yarn add puppeteer
  ```

> ## **Exemplo**

O código abaixo tem a função de tirar uma _screenshot_ da página inicial do site `https://example.com` e salvá-la na máquina local com o nome `example.png`:

```js
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  await page.goto('https://example.com');
  await page.screenshot({path: 'example.png'});

  await browser.close();
})();
```