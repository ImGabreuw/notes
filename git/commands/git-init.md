# Comando `git init`

> ## **Diferença entre `git init` e `git init --bare`**

O comando `git init --bare` cria um repositório _pushable_, ou seja, geralmente os **repositórios bare** são criados no servidor e são considerados repositórios para armazenamento.

Por outro lado, os repositórios que vão nas máquinas dos desenvolvedores (**repositórios non-bare**) que seriam os de desenvolvimento, criados com o comando `git init`.

Apesar do Git ser um sistema de controle de versionamento distribuído, é muito comum que exista um repositório central que facilite a troca de informações entre os desenvolvedores, evitando a necessidade que os computadores dos desenvolvedores se comuniquem diretamente entre si, conforme a imagem a seguir:

![](../assets/representation-bare-and-nonbare.png)

> Onde `bare` pode ser representado como um repositório no GitHub, já os `non-bare` são os desenvolvedores que clonam esse repositório para a máquina local com `git clone`.

Além disso, os repositórios `bare` não possuem _working directory_, uma vez que são responsável apenas em armazenar dados. Com isso, não é possível editar e fazer commits de arquivos por meio desse repositório.

Já os repositórios `non-bare` seguem o seguinte fluxo:

![](../assets/representation-nonbare-repository-workflow.png)
