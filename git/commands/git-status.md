# git status

O comando `git status` é usado para verificar o status atual do seu repositório. Ele fornece informações sobre quais arquivos foram modificados, adicionados ou excluídos desde o último commit.

Esse comando é uma ferramenta essencial para monitorar o estado do seu repositório e planejar suas próximas ações, garantindo que você tenha controle sobre suas modificações antes de efetuar os commits.

## **Sintaxe**

```bash
git status [opções]
```

**Opções:**

Não há opções principais para o comando `git status`, mas existem outros comandos relacionados que podem ser usados para obter informações mais detalhadas, como:

- `git status -s` ou `git status --short`: Exibe um resumo compacto do status, indicando as mudanças nas staged areas (áreas de preparação) e working directory (diretório de trabalho).

- `git status -b` ou `git status --branch`: Exibe informações sobre o branch atual e seu relacionamento com o branch remoto.

## **Exemplo**

Após fazer algumas modificações em seus arquivos, você pode usar o comando `git status` para verificar quais mudanças foram feitas:

```bash
git status
```

Isso fornecerá informações detalhadas sobre os arquivos que foram modificados, adicionados ou excluídos. Ele também indicará se essas mudanças estão prontas para serem commitadas ou se ainda precisam ser adicionadas à área de preparação (staging area).

