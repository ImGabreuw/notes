# git checkout

O comando `git checkout` é usado para alternar entre diferentes branches (ramificações) em seu repositório. Ele permite que você mude o contexto de trabalho para uma ramificação específica, permitindo que você trabalhe em diferentes versões do código.

Esse comando é essencial para navegar entre diferentes versões do código em diferentes branches, permitindo que você trabalhe em paralelo em diferentes recursos ou correções sem interferir no código principal do projeto.

## **Sintaxe**

```bash
git checkout <nome-da-branch>
```

**Opções:**

- `git checkout -b <nome-da-nova-branch>`: Cria uma nova branch com o nome especificado e altera o contexto de trabalho para a nova branch.

- `git checkout -- <nome-do-arquivo>`: Desfaz as modificações não stageadas em um arquivo, restaurando o conteúdo do último commit.

## **Exemplo**

Suponha que você esteja trabalhando em um projeto com duas branches: `master` e `feature`. Para alternar para a branch `feature` e começar a trabalhar nela, você usaria o seguinte comando:

```bash
git checkout feature
```

Isso fará com que seu diretório de trabalho reflita o estado da branch `feature`. Agora, qualquer alteração que você fizer será registrada nessa branch.
