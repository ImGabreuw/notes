# base64

O comando `base64` no Linux é usado para codificar e decodificar dados em formato base64.

O formato base64 é uma representação textual de dados binários, frequentemente usado para transmitir ou armazenar dados binários em um formato seguro para diferentes sistemas que podem não ser capazes de manipular diretamente dados binários.

Esse comando é útil para converter dados binários em um formato que possa ser transmitido ou lido de forma confiável em sistemas que suportam apenas dados textuais.


## **Sintaxe**

```bash
base64 [opções] [arquivo]
```

**Opções:**

- **-i \<arquivo\>** ou **--input=<arquivo>**: Especifica o arquivo de entrada para codificar ou decodificar. Se não for fornecido, o comando lê os dados da entrada padrão.

- **-d** ou **--decode**: Decodifica os dados em formato base64 em vez de codificar.

## **Exemplo**

1. Codificar um arquivo em formato base64:

   ```bash
   base64 arquivo.txt > arquivo_base64.txt
   ```

Isso lê o conteúdo do arquivo "arquivo.txt", codifica em base64 e redireciona a saída para o arquivo "arquivo_base64.txt".

2. Decodificar um arquivo em formato base64:

   ```bash
   base64 -d arquivo_base64.txt > arquivo_decodificado.txt
   ```

Isso lê o conteúdo do arquivo "arquivo_base64.txt", decodifica-o e redireciona a saída para o arquivo "arquivo_decodificado.txt".