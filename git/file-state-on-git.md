# Estados de Arquivos no Git

No Git, os arquivos no seu repositório podem estar em diferentes estados, dependendo de como foram modificados e como você os interage. Existem quatro estados principais em que um arquivo pode estar: untracked, unmodified, modified e staged.

![](./assets/file-state.png)

## Untracked

Um arquivo está no estado "untracked" quando é novo no repositório e o Git não está rastreando suas mudanças. Isso significa que o Git não tem conhecimento desse arquivo e não o incluirá em futuros commits, a menos que você o adicione explicitamente.

## Unmodified

Quando um arquivo está no estado "unmodified", significa que o Git está ciente do arquivo e ele existe no último commit, mas não sofreu alterações desde então. Ou seja, o conteúdo do arquivo no seu diretório de trabalho é idêntico à versão no último commit.

## Modified

O estado "modified" ocorre quando você faz alterações em um arquivo que já estava no repositório. Isso significa que você editou o arquivo, mas essas alterações ainda não foram confirmadas em um commit. O Git reconhece que o arquivo foi modificado, mas essas mudanças ainda não foram salvas no histórico do Git.

## Staged

O estado "staged" ocorre quando você marca um arquivo modificado para ser incluído no próximo commit. Isso significa que você selecionou as mudanças que deseja incluir no próximo snapshot do repositório. Os arquivos no estado "staged" estão prontos para serem confirmados (commited) em um commit.

## Fluxo de Trabalho Básico

O fluxo de trabalho básico no Git envolve mover arquivos pelos diferentes estados para realizar alterações e confirmá-las no histórico do repositório:

1. Edite ou crie um arquivo no estado "untracked" ou "modified".

2. Use o comando `git add` para mover o arquivo do estado "modified" para o estado "staged".

3. Faça um commit usando o comando `git commit` para mover o arquivo do estado "staged" para o estado "unmodified" (ou seja, confirmando as alterações no histórico do Git).

É importante entender esses estados para gerenciar efetivamente suas mudanças e commits no Git. O controle preciso sobre esses estados permite que você desenvolva, teste e organize suas alterações de maneira estruturada.