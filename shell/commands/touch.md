# touch

O comando `touch` é usado no sistema Linux para criar arquivos vazios ou atualizar os carimbos de data/hora de acesso e modificação de arquivos existentes.

Além de criar arquivos, o comando `touch` também pode ser usado para atualizar os carimbos de data/hora de acesso e modificação de arquivos existentes. Isso pode ser útil para indicar que um arquivo foi acessado ou modificado em um determinado momento.

## **Sintaxe**

```bash
$ touch <nome_do_arquivo>
```

```bash
$ touch -a <nome_do_arquivo>  # Atualiza o carimbo de data/hora de acesso
$ touch -m <nome_do_arquivo>  # Atualiza o carimbo de data/hora de modificação
```

**Opções:**

- **-c**: Não cria novos arquivos. Apenas atualiza os carimbos de data/hora dos arquivos existentes.

- **-d**: Permite especificar uma data e hora específica para definir como carimbo de data/hora do arquivo.

- **-r <arquivo_referência>**: Atualiza os carimbos de data/hora do arquivo para que eles correspondam aos do arquivo de referência.

## **Exemplo**

### **Criação de um arquivo em branco**

Para criar um novo arquivo vazio chamado "novo_arquivo.txt", você pode usar o seguinte comando:

```bash
$ touch novo_arquivo.txt
```

Isso criará um arquivo vazio chamado "novo_arquivo.txt" no diretório atual.

### **Atualização de carimbos de data/hora**

Para atualizar o carimbo de data/hora de acesso do arquivo "meu_arquivo.txt":

```bash
$ touch -a meu_arquivo.txt
```

Para atualizar o carimbo de data/hora de modificação do arquivo "outro_arquivo.txt":

```bash
$ touch -m outro_arquivo.txt
```
