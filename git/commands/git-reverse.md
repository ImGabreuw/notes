# git revert

O comando `git revert` é usado para desfazer commits anteriores de uma forma segura, criando um novo commit que reverte as mudanças introduzidas pelo commit alvo. 

Isso é útil quando você precisa corrigir um erro ou desfazer uma alteração em um commit sem reescrever o histórico de commits do projeto.

Lembre-se de que o `git revert` não exclui ou remove os commits anteriores, ele cria um novo commit que desfaz as mudanças, mantendo a consistência do histórico.

## **Sintaxe**

```bash
git revert <commit>
```

**Argumentos:**

- **\<commit\>**: O commit que você deseja reverter. Pode ser especificado por meio de um hash de commit, uma branch ou uma tag.

## **Exemplo**

Suponha que você queira reverter o efeito de um commit específico:

```bash
git log --oneline
# Visualize o histórico de commits e identifique o hash do commit que deseja reverter

git revert abc123
# Onde "abc123" é o hash do commit que você deseja reverter
```

O `git revert` criará um novo commit que desfaz as mudanças introduzidas pelo commit alvo. Ele manterá a trilha do histórico intacta e não afetará outros commits posteriores. 