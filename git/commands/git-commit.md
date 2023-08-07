# git commit

O comando `git commit` é usado para criar um novo commit, que representa uma versão no histórico de um repositório Git. Um commit é uma instantânea de um conjunto de alterações feitas em arquivos do projeto. Cada commit tem uma mensagem que descreve as alterações realizadas, permitindo que outros colaboradores entendam o propósito e o contexto das mudanças.

## **Sintaxe**

```bash
git commit [opções]
```

**Opções:**

- `-m "Mensagem"`: Essa opção permite que você forneça uma mensagem de commit diretamente na linha de comando, entre aspas. A mensagem deve ser uma descrição clara e concisa das alterações feitas no commit.

- `-a`: Essa opção combina as etapas de adicionar e fazer commit das alterações em um único comando. Ela adiciona automaticamente todas as alterações nos arquivos que já estão sendo rastreados pelo Git e cria um commit com a mensagem especificada usando a opção `-m`.

- `--amend`: Essa opção é usada para fazer alterações adicionais em um commit já existente. Ela permite que você inclua alterações que foram esquecidas ou que precisam ser ajustadas antes de fazer um novo commit. Além disso, você pode usar `--amend` para corrigir a mensagem de commit do último commit feito.

## **Exemplo**

1. Criar um novo commit com uma mensagem:

   ```bash
   git commit -m "Adicionando funcionalidade de autenticação"
   ```

2. Fazer commit automaticamente de todas as alterações e adicionar uma mensagem:

   ```bash
   git commit -a -m "Corrigindo bug de formatação"
   ```

3. Fazer alterações adicionais no último commit e corrigir sua mensagem:

   ```bash
   # Fazer as alterações necessárias nos arquivos
   git add .
   git commit --amend -m "Correção de erro de digitação"
   ```
