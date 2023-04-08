# Configuração da chave SSH no Ubuntu

> A utilização do SSH permite a conexão com os repositórios remotos sem a necessidade de fornecer o usuário e senha ou _personal access token_.

1. Gerar uma nova chave SSH

   ```shell
   $ ssh-keygen -t rsa -b 4096 -C "email@gmail.com"
   ```

   Em `email@gmail.com` substituir pelo e-mail vinculado a sua conta do GitHub.

   ![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*B0L-m6FRNOlCsR4o8omdFw.png)

   Pressione `Enter` para salvar a chave no local padrão (`~/.ssh/id_rsa`)

2. Definir o _passphrase_

   Essa etapa serve para adicionar uma camada a mais de segurança para a chave SSH. Entretanto, caso não queira configurá-la, basta pressionar `Enter` 2 vezes para pular essa etapa.

   É possível adicionar uma _passphrase_ e salvá-la no `ssh-agent`.

3. Adicionar a chave no `ssh-agent`

   ```shell
   $ eval "$(ssh-agent -s)"
   ```

   ![](https://miro.medium.com/v2/resize:fit:538/format:webp/1*GUyYH2oKK_MyNevRkYfGBA.jpeg)

   ```shell
   $ ssh-add ~/.ssh/id_rsa
   ```

4. Adicionar a chave pública no GitHub

   Obter a chave pública:

   ```shell
   $ cat ~/.ssh/id_rsa.pub
   ```

   > Copie tudo, desde `ssh-rsa` até o `email@gmail.com`.

   No ícone de perfil, clique em `Settings`:

   ![](https://miro.medium.com/v2/resize:fit:382/format:webp/1*NQ8VG7bsyiqYko7Twdb9Eg.png)

   Vá para `Account Settings` e selecione `SSH and GPG keys`:

   ![](https://miro.medium.com/v2/resize:fit:460/format:webp/1*krRRirJRNKgLDBxUrjrWbw.png)

   Clique em `New SSH key` para adicionar a chave pública SSH:

   ![](https://miro.medium.com/v2/resize:fit:300/format:webp/1*vaklwjV0px15IXEuaTRoRw.png)

   > No título, você pode colocar o nome da chave.

### **Referência**

https://medium.com/featurepreneur/setting-up-ssh-key-with-github-for-ubuntu-cd8f2fabf25b
