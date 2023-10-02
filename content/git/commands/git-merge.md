# git merge

O comando `git merge` é usado para combinar as alterações de um branch em outro. Ele é fundamental para a integração de código entre diferentes branches, permitindo que você una o trabalho feito em um branch ao branch principal (geralmente chamado de "master" ou "main").

Isso é especialmente útil para incorporar o trabalho feito em branches de desenvolvimento de volta ao branch principal do projeto.

## **Sintaxe**

```bash
git merge [opções] <branch>
```

**Opções:**

- **--no-ff**: Realiza um merge sem criar um commit de merge rápido, mesmo quando possível.

## **Exemplo**

Suponha que você tenha um branch chamado `feature-nova` onde desenvolveu uma nova funcionalidade e agora deseja integrar essas alterações ao branch principal. Você pode fazer isso da seguinte forma:

```bash
git checkout main  # Troque para o branch principal
git merge feature-nova  # Faça o merge das alterações da feature-nova na main
```

O comando `git merge` combina as alterações da branch especificada (no exemplo acima, `feature-nova`) com a branch atual (no exemplo acima, `main`). Ele pode criar um novo commit de merge para registrar as alterações combinadas.