# git add

O comando `git add` é usado para adicionar alterações feitas nos arquivos do seu diretório de trabalho ao índice, também conhecido como _"staging area"_. Isso prepara as mudanças para serem incluídas no próximo commit. Basicamente, o `git add` informa ao Git quais arquivos e mudanças você deseja incluir no próximo snapshot (commit).

## **Sintaxe**

O formato básico do comando é:

```bash
git add <nome_do_arquivo>
```

Se você quiser adicionar todas as mudanças, você pode usar:

```bash
git add .
```

## **Exemplo**

Suponha que você tenha feito algumas alterações nos arquivos `index.html` e `styles.css` em seu repositório. Para adicionar essas alterações ao índice, você pode executar:

```bash
git add index.html styles.css
```

Isso preparará essas mudanças para serem incluídas no próximo commit. Se você quiser adicionar todas as mudanças no diretório atual, você pode fazer:

```bash
git add .
```

Após usar `git add`, as alterações estarão prontas para serem confirmadas no próximo commit usando o comando `git commit`. O `git add` é uma etapa importante no fluxo de trabalho do Git, permitindo que você selecione quais mudanças deseja incluir em cada commit.
