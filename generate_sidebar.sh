#!/bin/bash

# Diretório contendo os arquivos README.md
diretorio=$(pwd)
readmes=$(find . -type f -name "README.md")

# Iterar sobre todos os arquivos README.md no diretório
for arquivo in $readmes; do
    # Verificar se o arquivo existe e não está vazio
    if [ -s "$arquivo" ]; then
        # Extrair o conteúdo entre as linhas "> ## **Conteúdo**" e "> ## **Referências**"
        conteudo=$(awk '/> ## \*\*Conteúdo\*\*/,/> ## \*\*Referências\*\*/{if(!/^(> ## \*\*Conteúdo\*\*|> ## \*\*Referências\*\*)/){print}}' "$arquivo")
        
        # Nome do arquivo _sidebar.md
        sidebar="_sidebar.md"
        
        # Criar ou sobrescrever o arquivo _sidebar.md com o conteúdo extraído
        echo "$conteudo" > "${arquivo%README.md}$sidebar"
    fi
done

echo "Concluído"
