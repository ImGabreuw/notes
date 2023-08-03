# Guia de pós instalação do Ubuntu 22.04

## **Firewall**

```console
$ sudo apt install -f ufw
$ sudo ufw enable
```

## **Preload**

O Preload é uma ferramenta para Linux que funciona em segundo plano. Ele monitora os programas mais usados pelo usuário, pré-carregando suas dependências em um cache na memória RAM. Isso acelera o carregamento desses programas quando são executados novamente. É uma forma de melhorar a velocidade de inicialização e tornar a experiência do usuário mais rápida e eficiente.

A seguir o passo a passo de instalação do "preload":

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: Digite o seguinte comando para instalar o Preload:

```console
sudo apt install preload
```

**Passo 3**: Após a instalação, o serviço é iniciado automaticamente, mas é recomendado reiniciá-lo manualmente para garantir que tudo esteja funcionando corretamente. Para isso, execute o seguinte comando:

```console
sudo service preload restart
```

**Passo 4**: Verifique se o serviço Preload está em execução usando o comando:

```console
ps ax | grep preload
```

Se tudo estiver configurado corretamente, você deverá ver uma saída que inclui `/usr/sbin/preload -s /var/lib/preload/preload.state`.

A partir desse ponto, o Preload estará em execução, monitorando e pré-carregando os programas mais utilizados, o que deve melhorar a velocidade de carregamento desses aplicativos quando forem executados novamente.

> Lembre-se de que o Preload aprende com o tempo, tornando-se mais eficiente à medida que você usa mais aplicativos com frequência. Assim, a experiência geral do usuário deve melhorar com o passar do tempo.

## **Time Shift**

O "TimeShift" é uma ferramenta de backup e restauração para sistemas Linux que permite criar e gerenciar instantâneos (snapshots) do sistema de arquivos em momentos específicos. Esses instantâneos capturam o estado do sistema, incluindo arquivos de sistema, configurações e aplicativos instalados, permitindo que você restaure o sistema para um estado anterior em caso de problemas ou erros.

A seguir o passo a passo de instalação do TimeShift:

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: Agora, instale o TimeShift com o seguinte comando:

```console
$ sudo apt install timeshift -y
```

**Passo 3**: Após a instalação, você pode abrir o TimeShift a partir do menu de aplicativos ou executando o comando abaixo no terminal:

```console
$ timeshift-launcher
```

**Passo 4**: Na primeira execução, o TimeShift irá solicitar que você selecione uma unidade de destino para salvar os instantâneos. Geralmente, é recomendado escolher uma unidade diferente da que contém o sistema operacional para garantir que os backups não ocupem espaço no mesmo disco do sistema.

**Passo 5**: Configure as opções de agendamento e configurações do TimeShift de acordo com suas preferências. Você pode definir quantos instantâneos deseja manter, a frequência de criação de novos instantâneos, entre outras configurações.

Com o TimeShift instalado e configurado, ele criará automaticamente instantâneos do sistema de arquivos nos intervalos definidos. Esses instantâneos podem ser usados posteriormente para restaurar o sistema em caso de problemas, como atualizações quebradas ou erros de configuração.

> Lembre-se de que o TimeShift é uma ferramenta útil para criar backups do sistema, mas não substitui a necessidade de realizar backups de dados importantes em um local externo, como um dispositivo de armazenamento externo ou na nuvem.

## **Flatpak**

O Flatpak é uma ferramenta de empacotamento e distribuição de aplicativos para sistemas Linux. Ele é projetado para fornecer uma forma segura e independente de distribuir software, permitindo que os desenvolvedores criem aplicativos que funcionem em diferentes distribuições Linux sem depender das bibliotecas e configurações específicas de cada uma delas.

Diferentemente do sistema tradicional de pacotes no Linux, o Flatpak encapsula o aplicativo e todas as suas dependências em um ambiente isolado, chamado "sandbox". Isso significa que as bibliotecas e recursos necessários para a execução do aplicativo são fornecidos dentro do pacote, evitando possíveis conflitos ou dependências quebradas.

Os aplicativos Flatpak são empacotados em formato universal e podem ser instalados em várias distribuições Linux que suportem a ferramenta Flatpak, tornando a distribuição e instalação de software mais fácil e consistente.

Passo a passo de instalação do Flatpak no Ubuntu:

**Passo 1**: Abra um terminal. Você pode fazer isso pressionando "Ctrl + Alt + T" no teclado ou procurando "Terminal" no menu de aplicativos.

**Passo 2**: No terminal, instale o suporte ao Flatpak com o seguinte comando:

```console
$ sudo apt install flatpak
```

**Passo 3**: Após a instalação, é recomendado instalar o plug-in responsável pela integração com o Ubuntu Software:

```
$ sudo apt install gnome-software-plugin-flatpak
```

**Passo 4**: Para ter acesso a aplicativos do Flathub, é necessário reiniciar o sistema. Use o comando:

```
reboot
```

O Flatpak oferece uma abordagem moderna e segura para a distribuição de aplicativos Linux, e é uma opção interessante para quem deseja acesso a uma grande variedade de aplicativos de forma fácil e padronizada em diferentes distribuições.
