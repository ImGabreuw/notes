# implantar uma aplicação no Heroku com GitHub Actions

### arquivo Workflow

```yaml
name: sample deploy in heroku

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:

    # Etapa de teste/construção da aplicação ...

  deploy: # Etapa de implantação no Heroku
      needs: build
      runs-on: ubuntu-latest
      steps:
          - uses: actions/checkout@v2
          - uses: akhileshns/heroku-deploy@v3.12.12
              with:
                  heroku_api_key: ${{ secrets.HEROKU_API_KEY }} # API Key armazenada na aba "Secrets" do repositório do projeto
                  heroku_app_name: "sample-deploy-in-heroku" # Nome da aplicação
                  heroku_email: "otaviolemos@gmail.com" # Email utilizado na conta do Heroku
```

### Exemplo: [simple-node-api](https://github.com/otaviolemos/simple-node-api)

```yaml
name: Node.js CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:

    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [14.x]
        # See supported Node.js release schedule at https://nodejs.org/en/about/releases/

    steps:
    - uses: actions/checkout@v2
    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v2
      with:
        node-version: ${{ matrix.node-version }}
        cache: 'npm'
    - run: npm ci
    - run: npm run build --if-present
    - run: npm test

  deploy: 
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Login to Heroku Container registry
        env: 
          HEROKU_API_KEY: ${{ secrets.HEROKU_API_KEY }}
        run: heroku container:login 
      - name: Build and push
        env:
          HEROKU_API_KEY: ${{ secrets.HEROKU_API_KEY }}
        run: heroku container:push -a ${{ secrets.HEROKU_APP_NAME }} web 
      - name: Release
        env:
          HEROKU_API_KEY: ${{ secrets.HEROKU_API_KEY }}
        run: heroku container:release -a ${{ secrets.HEROKU_APP_NAME }} web
```