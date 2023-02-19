# NPM - Node Package Manager

> ## **`npm init`**

### **Definição**

Iniciar um projeto em Node.

### **Exemplo**

```sh
$ npm init -y
```

> A flag `-y` serve para indicar para o NPM para utilizar as configurações padrão.

> ## **`npm install`**

### **Definição**

Instalar um pacote como dependência do projeto.

### **Sintaxe**

```sh
$ npm install [nome do pacote]@[versão]
```

> **OBS**: `[versão]` é opcional. Caso não for informado, é utiliza a última versão desse pacote (_latest_).

### **Exemplo**

```js
$ npm install express
```

### **OBS**: `npm i`

É o atalho para o comando:

```sh
$ npm install
```

### **Flag `--save-dev`**

Instalar um pacote como dependência de desenvolvimento do projeto.

```sh
$ npm install express --save-dev
```

```json
{
  "devDependencies": {
    "express": "^4.17.2"
  }
}
```

### **Flag `--save-prod`**

Instalar um pacote como dependência (de produção) do projeto.

```sh
$ npm install express --save-prod
```

```json
{
  "dependencies": {
    "express": "^4.17.2"
  }
}
```

> ## **`npm uninstall`**

### **Definição**

Desinstalar um pacote das dependência do projeto.

### **Sintaxe**

```sh
$ npm uninstall [nome do pacote]
```

### **Exemplo**

```sh
$ npm uninstall express
```

> ## **`npm ls`**

### **Definição**

Listar todos os pacotes instalados (diretamente ou indiretamente) pelo NPM no projeto.

### **Exemplo**

```sh
$ npm ls

projects@1.0.0 D:\Projects\curso-de-javascript-e-typescript-do-basico-ao-avancado\javascript-node-npm-express-mongodb-nodejs\npm-node-package-manager\projects
└── express@4.17.2
```

### **Flag `--depth`**

Indicar a profundidade na hierarquia dos pacotes na listagem.

```sh
$ npm ls --depth=0

projects@1.0.0 D:\Projects\curso-de-javascript-e-typescript-do-basico-ao-avancado\javascript-node-npm-express-mongodb-nodejs\npm-node-package-manager\projects
└── express@4.17.2
```

> `--depth=0` serve para listar apenas os pacotes instalados pelo desenvolvedor.

> ## **`npm outdated`**

### **Definição**

Listar todos os pacotes desatualizados

### **Exemplo**

```sh
$ npm outdated
```

> ## **Versão de pacotes no JavaScript**

### **`^` na versão do pacote**

Esse simbolo indica que o pacote é atualizado toda vez que for lançado uma nova versão no **minor** ou no **patch** desse pacote.

```json
{
  "dependencies": {
    "express": "^4.17.2"
  }
}
```

> A versão **minor** e **patch** representa: `4.[minor].[patch]`.

### **`~` na versão do pacote**

Esse simbolo indica que o pacote é atualizado toda vez que for lançado uma nova versão no **patch** desse pacote.

```json
{
  "dependencies": {
    "express": "~4.17.2"
  }
}
```

> A versão **patch** representa: `4.17.[patch]`.

### **Versão `.x` do pacote**

Essa representação significa que será instalado a última versão **major** dese pacote.

```sh
$ npm install express@4.x
```

```json
{
  "dependencies": {
    "express": "~4.17.2"
  }
}
```

> A versão **major** representa: `[major].17.2`.

### **Versão fixa do pacote**

Ao baixar uma versão específica no `$ npm install`, essa versão é considerada fixa, ou seja, esse pacote não é atualizado pelo NPM (exceto se for utilizado `$ npm update`).

> ## **Padrão de versionamento**

### Definição

**Major**: versão que pode comprometer a compatibilidade de outras versões

**Minor**: versão para indicar a adição de uma nova funcionalidade, mas que não compromete a compatibilidade com outras versões

**Patch**: versão focada essencialmente em correção de bugs

### **Sintaxe**

```
[major].[minor].[patch]
```

### **Exemplo**

```
2.1.0
```
