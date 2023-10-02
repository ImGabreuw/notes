# git reset

O comando `git reset` é usado para desfazer mudanças em commits anteriores, redefinir o estado do diretório de trabalho e mover branches para commits específicos. 

Ele é útil para reverter e reorganizar mudanças em um projeto. No entanto, use-o com cuidado para evitar a perda permanente de dados.

## **Sintaxe**

```bash
git reset [opções] <commit>
```

**Argumentos:**

- **\<commit\>**: O commit para o qual você deseja redefinir. Pode ser especificado por meio de um hash de commit, uma branch ou uma tag.

**Opções**

- **--soft**: Desfaz o commit, mas mantém as mudanças no diretório de trabalho e no índice. Isso permite que você faça ajustes antes de criar um novo commit.

- **--mixed** (padrão): Desfaz o commit e as mudanças no índice, mas mantém as mudanças no diretório de trabalho. Isso é útil quando você deseja "desfazer" as mudanças e reorganizá-las em novos commits.

- **--hard**: Desfaz o commit e todas as mudanças associadas, tanto no índice quanto no diretório de trabalho. Cuidado, pois isso descartará permanentemente as alterações.

## **Exemplo**

### Desfazer o Último Commit

Para desfazer o último commit e manter as mudanças no diretório de trabalho, use:

```bash
git reset --soft HEAD~1
```

### Desfazer o Último Commit e as Mudanças no Índice

Se você também deseja desfazer as mudanças no índice, use:

```bash
git reset --mixed HEAD~1
```

### Descartar o Último Commit e Alterações Não Commitadas

Para descartar completamente o último commit e também as alterações não commitadas, use:

```bash
git reset --hard HEAD~1
```

### Mover uma Branch para um Commit Específico

Se você deseja mover uma branch para um commit específico, pode usar o seguinte comando:

```bash
git reset --hard commit-hash
```

Isso moverá a branch atual para o commit especificado, descartando qualquer commit entre o commit atual e o commit especificado.
