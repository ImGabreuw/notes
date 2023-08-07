# mv

O comando `mv` (abreviação de "move") é utilizado no sistema Linux para mover arquivos e diretórios de um local para outro. 

Além disso, ele também pode ser usado para renomear arquivos e diretórios, já que a operação de renomeação envolve basicamente mover o arquivo com um novo nome.

Resumidamente, ele é uma ferramenta versátil que permite mover e renomear arquivos e diretórios de maneira eficiente no sistema Linux.

## **Sintaxe básica**

```bash
$ mv [opções] <origem> <destino>
```

## **Opções**

- **-i**: Pergunta antes de sobrescrever um arquivo de destino, caso ele já exista.

- **-u**: Move apenas quando o arquivo de origem é mais recente ou quando o arquivo de destino não existe.

- **-v**: Exibe uma mensagem para cada arquivo movido, mostrando detalhes da operação.

## **Exemplo**

Para mover um arquivo chamado "documento.txt" do diretório atual para um diretório chamado "backup":

```bash
$ mv documento.txt backup/
```

Isso move o arquivo "documento.txt" para o diretório "backup".

Para renomear um arquivo, você também pode usar o `mv`. Por exemplo, para renomear "documento.txt" para "novo_documento.txt":

```bash
$ mv documento.txt novo_documento.txt
```
