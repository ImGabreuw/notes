# Principais funções no PuppeteerJS

> ## `evaluate`

### **Definição**

A função de `evaluate` é responsável por executar o corpo da função (passado como argumento) no **browser**.

### **Sintaxe**

```ts
await page.evaluate(() => {
  // Corpo
})
```

### **Exemplo**

```js
const puppeteer = require("puppeteer");
const fs = require("fs");

(async () => {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();

  await page.goto("https://instagram.com/rocketseat_oficial");

  const postsList = await page.evaluate(() => {
    const postsNodeList = document.querySelectorAll("article img");
    const postsArray = [...postsNodeList];

    const postsList = postsArray.map(({ src }) => ({
      src,
    }));

    return postsList;
  });

  fs.writeFile('instagram.json', JSON.stringify(postsList, null, 2), err => {
    if (err) throw new Error("something went wrong");

    console.log('ok')
  });

  await browser.close();
})();
``` 
