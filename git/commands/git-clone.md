# git clone

O comando `git clone` é usado para criar uma cópia local de um repositório remoto. Ele é frequentemente usado para obter uma cópia de um projeto hospedado no GitHub, GitLab, Bitbucket ou em outros servidores Git. A cópia resultante é um repositório Git completo com todo o histórico de commits, ramos, tags e arquivos.

Ele é uma maneira conveniente de iniciar o desenvolvimento em um projeto e colaborar com outros membros da equipe.

## **Sintaxe**

O formato básico do comando é:

```
git clone <URL_do_repositório>
```

**Opções:**

- `-b <nome_do_branch>`: Permite clonar um branch específico do repositório remoto.
- `--depth <n>`: Realiza um clone superficial, baixando apenas os últimos `n` commits. Isso é útil para economizar tempo e espaço em disco.
- `--single-branch`: Faz um clone apenas do branch especificado usando a opção `-b`.

## **Exemplo**

Vamos supor que você queira clonar um repositório chamado "my-project" hospedado no GitHub. Você pode usar o seguinte comando:

```bash
git clone https://github.com/seu-usuario/my-project.git
```

Isso criará uma cópia local do repositório "my-project" em um diretório chamado "my-project". Se você desejar clonar apenas um branch específico, como "develop", você pode fazer:

```bash
git clone -b develop https://github.com/seu-usuario/my-project.git
```

Lembre-se de substituir `seu-usuario` pelo seu nome de usuário do GitHub e `my-project` pelo nome do seu repositório.