# git pull

O comando `git pull` é usado para buscar as alterações de um repositório remoto e mesclá-las com o repositório local. Basicamente, ele combina duas operações: `git fetch` (buscar as alterações) e `git merge` (mesclar as alterações com a branch atual).

Ele é útil para manter seu repositório local atualizado com as alterações feitas por outros colaboradores no projeto. 

Lembre-se de que, em alguns casos, pode ser necessário resolver conflitos de mesclagem após executar o `git pull`, como por exemplo, se houver alterações na mesma linha de um arquivo entre o repositório local e o repositório remoto.

## **Sintaxe**

```bash
git pull [repositório-remoto] [branch-remota]
```

**Argumentos:**

- **repositório-remoto**: Especifica o nome do repositório remoto do qual você deseja buscar as alterações. O nome padrão é geralmente "origin".

- **branch-remota**: É o nome da branch remota da qual você deseja buscar as alterações. Se não for especificada, geralmente é usada a branch atual.

## **Exemplo**

Suponha que você esteja trabalhando em sua branch local `main` e deseja buscar as alterações da branch remota `main` do repositório remoto:

```bash
git pull origin main
```

Isso buscará as alterações da branch remota `main` e as mesclará automaticamente com sua branch local `main`.

