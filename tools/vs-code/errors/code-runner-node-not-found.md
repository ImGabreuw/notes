# Code Runner: "/bin/sh: 1: node: not found" (Ubuntu)

### Problema

A extensão *Code Runner*, ao executar um script JavaScript, não estava achando o `node` (mesmo com o executável do `node` definido no `$PATH` do sistema).

### Solução

* Abrir o `settings.json` (arquivo de configuração do VS Code)

* Adicionar no final do arquivo:

  ```json
  "code-runner.executorMap": {
      "javascript": "node",
  }
  ```

* Se o executável `node` não esteja definido no `$PATH`, é possivel especificar o caminho até o `node`:

  ```json
  "code-runner.executorMap": {
      "javascript": "/caminho/ate/o/node",
  }
  ```

  > **OBS**: para saber o caminho do `node` basta executar o seguinte comando no terminal: `$ which node`

### Referências

<!-- markdown-link-check-disable-next-line -->
* https://stackoverflow.com/questions/44983472/how-to-run-javascript-code-in-visual-studio-code-bin-sh-1-node-not-found