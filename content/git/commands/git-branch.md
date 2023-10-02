# git branch

O comando `git branch` é usado para gerenciar e visualizar branches no repositório Git. Um branch é uma linha de desenvolvimento separada que permite que você trabalhe em recursos, correções ou experimentos sem afetar o código principal. O branch principal é geralmente chamado de "master" ou "main".

Esse comando é fundamental para o gerenciamento de fluxos de trabalho no Git, pois permite que você crie, visualize, exclua e renomeie branches, o que é essencial para organizar o desenvolvimento de novos recursos, correções de bugs e outras atividades no projeto.

## **Sintaxe**

```bash
git branch [opções]
```

**Opções:**

- **-a** ou **--all**: Mostra todas as branches locais e remotas.

- **-d** ou **--delete**: Deleta um branch local. Use com cuidado, pois isso removerá permanentemente o branch e suas alterações.

- **-m** ou **--move**: Renomeia um branch local.

## **Exemplo**

1. Listar todas as branches locais:

   ```bash
   git branch
   ```

2. Criar um novo branch:

   ```bash
   git branch novo-branch
   ```

3. Listar todas as branches locais e remotas:

   ```bash
   git branch -a
   ```

4. Deletar um branch local:

   ```bash
   git branch -d nome-do-branch
   ```

5. Renomear um branch local:

   ```bash
   git branch -m nome-atual novo-nome
   ```
