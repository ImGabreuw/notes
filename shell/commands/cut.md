# cut

O comando `cut` é uma ferramenta no sistema Linux que é usada para cortar (extrair) seções específicas de linhas de texto de arquivos ou saídas de comandos.

Ele é uma ferramenta útil para manipular e extrair partes específicas de texto em colunas de arquivos ou saídas de comandos no sistema Linux.


## **Sintaxe**

```bash
$ cut [opções] <arquivo>
```

**Opções:**

- **-c \<lista_de_colunas\>**: Extrai caracteres de colunas específicas. A lista de colunas é especificada como um intervalo de números separados por vírgulas.

- **-d \<delimitador\>**: Define o caractere delimitador que separa as colunas no arquivo.

- **-f \<números_de_campos\>**: Extrai campos específicos baseados em números de campo. O campo é uma seção do texto delimitado por um caractere delimitador.

## **Exemplo**

Suponha que temos um arquivo chamado "dados.txt" com o seguinte conteúdo:

```
João:30:Engenheiro
Maria:28:Designer
Carlos:35:Programador
```

### **Opção -c**

Para extrair os primeiros 10 caracteres do arquivo:

```bash
$ cut -c 1-10 dados.txt
```

Isso resultaria em:

```
João:30:E
Maria:28:D
Carlos:35:P
```

### **Opção -d**

Para extrair o primeiro campo (nome) do arquivo, considerando ":" como delimitador:

```bash
$ cut -d ':' -f 1 dados.txt
```

Isso resultaria em:

```
João
Maria
Carlos
```

### **Opção -f**

Para extrair o segundo campo (idade) do arquivo:

```bash
$ cut -d ':' -f 2 dados.txt
```

Isso resultaria em:

```
30
28
35
```
