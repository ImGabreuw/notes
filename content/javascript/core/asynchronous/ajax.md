# Ajax

> ## **Definição**

**AJAX**: Asynchronous JavaScript and XML

`XMLHttpRequest` (XHR) é representação para AJAX.

> ## **Exemplos**

```js
const request = (obj) => {
  const xhr = new XMLHttpRequest();
  xhr.open(obj.method, obj.url, true);
  xhr.send();

  xhr.onload(() => {
    if (xhr.status >= 400) {
      obj.error(xhr.statusText);
      return;
    }

    obj.success(xhr.responseText);
  });
};
```

> A forma mais tradicional de se trabalhar com AJAX é utilizar _callback functions_.

```js
const request = (obj) => {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    xhr.open(obj.method, obj.url, true);
    xhr.send();

    xhr.onload(() => {
      if (xhr.status >= 200 && xhr.status < 300) {
        resolve(xhr.responseText);
        return;
      }

      reject(xhr.statusText);
    });
  });
};

document.addEventListener("click", (e) => {
  const element = e.target;
  const tag = element.tagName.toLowerCase();

  if (tag === "a") {
    e.preventDefault();
    loadPage(element);
  }
});

async function loadPage(element) {
  const href = element.getAttribute("href");

  const objConfig = {
    method: "GET",
    url: href,
  };

  try {
    const response = await request(objConfig);
    loadResult(response);
  } catch (error) {
    console.log(error);
  }
}

function loadResult(response) {
  const result = document.querySelector(".result");
  result.innerHTML = response;
}
```

> O exemplo acima é a forma mais recomendada para se trabalhar com AJAX.
