# Comandos Linux

### which 

* **Função**: exibir o caminho completo de um recurso

* **Sintaxe**

  ```bash
  $ which <nome do recurso>
  ``` 

* **Exemplo**

  ```bash
  $ which echo
  ``` 

### pwd (Print Working Directory)

* **Função**: imprimir o caminho completo do diretório atual

* **Sintaxe**

  ```bash
  $ pwd
  ``` 

* **Exemplo**

  * Entrada
    ```bash
    $ pwd
    ``` 
    
  * Saída
    ```bash
    $ /home/gabriel/Projects
    ``` 
  

### rm (Remove)

* **Função**: remover um diretório ou arquivo

* **Sintaxe**

  * **Remover arquivo**

    ```bash
    $ rm <arquivo>
    ``` 

  * **Remover diretório com conteúdo**
  
    ```bash
    $ rm -rf <diretório>
    ``` 

  * **Remover diretório sem conteúdo**

    ```bash
    $ rmdir <diretório> 
    ``` 
    **OU**
    ```bash
    $ rm -r <diretório> 
    ``` 

* **Exemplo**

  ```bash
  $ rm ./Projects
  ``` 

### mkdir (Make Directory)

* **Função**: criar diretórios

* **Sintaxe**

  ```bash
  $ mkdir <nome do diretório>
  ``` 

* **Exemplo**

  ```bash
  $ mkdir ./Projects
  ``` 

### cd (Change Diretory)

* **Função**: mudar de diretório

* **Sintaxe**

  ```bash
  $ cd <nome do diretório>
  ``` 

* **Exemplo**

  ```bash
  $ cd Projects
  ``` 

  ```bash
  $ cd $HOME
  OU
  $ cd ~
  ``` 
  
  > OBS: `~` (*Tilde Expansion*) faz referência à variável `$HOME`

  ```bash
  $ cd ...
  ```

  > Cada `.` representa **1 diretório anterior**
  
### whoami

* **Função**: Descobrir o usário atual

* **Sintaxe**

  ```bash
  $ whoami
  ``` 

* **Exemplo**

  * Entrada
    ```bash
    $ whoami
    ``` 
    
  * Saída
    ```bash
    $ gabriel
    ```

### ls

* **Função**: listagem de arquivos e diretórios

* **Sintaxe**

  * **Listagem dos nomes dos diretórios/arquivos**
    ```bash
    $ ls
    ``` 

  * **Listagem dos diretórios/arquivos (+ detalhado)**
    ```bash
    $ ls -l
    ``` 

  > "+ detalhado" contém informações como: nome do arquivo/diretório, data de criação, tamanho, usuário criador do arquivo/diretório e permissões
    
  * **Listagem dos diretórios/arquivos ocultos (+ detalhado)**
    ```bash
    $ ls -la
    ``` 

* **OBS**
  * `.` = diretório atual
  * `..` = diretório anterior  
  * diretórios/arquivos que comecem com `.` são ocultados

### man

* **Função**: ajuda sobre um comando (o que ele faz / quais opções são aceitas)

* **Sintaxe**

  ```bash
  $ man <comando>
  ``` 

* **Exemplo**

  ```bash
  $ man ls
  ``` 

### cat

* **Função**: exibir o conteúdo de um arquivo

* **Sintaxe**

  ```bash
  $ cat <nome do arquivo>
  ``` 

* **Exemplo**

  ```bash
  $ cat index.html
  ``` 

### nano

* **Função**: editor simples de arquivo (como um *VIM*)

* **Sintaxe**

  ```bash
  $ nano <nome do arquivo>
  ``` 

* **Exemplo**

  ```bash
  $ nano index.html
  ``` 

### touch

* **Função**: criar um ou mais arquivos

* **Sintaxe**

  * **Criar um arquivo**

    ```bash
    $ touch <nome do arquivo>
    ```

  * **Criar vários arquivos com a mesma extensão**

    ```bash
    $ touch {<nome do(s) arquivo(s)>}.<extensão>
    ```

* **Exemplo**

  ```bash
  $ touch index.html
  ```

  ```bash
  $ touch {index,blog,contact}.html
  ```

### cp

* **Função**: copiar arquivos ou diretórios

* **Sintaxe**

  ```bash
  $ cp <arquivo origem> <arquivo destino>
  ```

  ```bash
  $ cp <diretório origem> <diretório destino>
  ```

* **Exemplo**

  ```bash
  $ cp home.html index.html
  ```

  ```bash
  $ cp -r Projects ProjectsCopia
  ```

### mv

* **Função**: mover/renomear arquivos ou diretórios

* **Sintaxe**

  ```bash
  $ mv <origem> <destino>
  ```

* **Exemplo**

  ```bash
  $ mv contanto.html faleconosco.html
  ```

### file

* **Função**: exibir informações do arquivo

* **Sintaxe**

  ```bash
  $ file <nome do arquivo>
  ```

* **Exemplo**

  ```bash
  $ file index.html
  ```

### stat

* **Função**: exibir tamanho, permissões, último acesso e modificações (data/hora), User ID (UID), Group ID (GIP)

* **Sintaxe**

  ```bash
  $ stat <nome do arquivo>
  ```

* **Exemplo**

  ```bash
  $ stat index.html
  ```

### apt install

* **Função**: instalar programas que existem no repositório oficial do debian/ubuntu

* **Sintaxe**

  ```bash
  $ sudo apt install <nome do pacote>
  ```

  > **IMPORTANTE**: executar esse comando com privilégio *root*

* **Exemplo**

  ```bash
  $ sudo apt install git
  ```

### apt update

* **Função**: baixar as atualizações e informações dos pacotes de todas as fontes (repositórios) configurados

* **Sintaxe**

  ```bash
  $ sudo apt update 
  ``` 

* **Exemplo**

  ```bash
  $ sudo apt update 
  ``` 

### apt upgrade

* **Função**: instalar as atualizações disponíveis dos pacotes de aplicativos utilizados pelo sistema

* **Sintaxe**

  ```bash
  $ sudo apt upgrade
  ```

* **Exemplo**

  ```bash
  $ sudo apt upgrade
  ```