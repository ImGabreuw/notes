#!/bin/bash

# Diretório contendo os arquivos README.md
diretorio=$(pwd)
readmes=$(find . -type f -name "README.md" -printf "%h/%f\n" | sort)

# Nome do arquivo _sidebar.md
sidebar="_sidebar.md"

# Cria um novo _sidebar.md
echo -e "" > "$sidebar"

# Processar cada arquivo README.md listado
for arquivo in $readmes; do
    # Verificar se o arquivo é diferente de ./README.md
    if [ "$arquivo" != "./README.md" ]; then
        # Verificar se o arquivo existe e não está vazio
        if [ -s "$arquivo" ]; then
            # Extrair o título do README.md (excluindo o caractere "#")
            titulo=$(awk '/^#/ {gsub("# ", ""); print; exit}' "$arquivo")

            # Extrair o conteúdo entre as linhas "> ## **Conteúdo**" e "> ## **Referências**"
            conteudo=$(awk '/> ## \*\*Conteúdo\*\*/,/> ## \*\*Referências\*\*/{if(!/^(> ## \*\*Conteúdo\*\*|> ## \*\*Referências\*\*)/){print}}' "$arquivo")

            # Formatar a linha de título e caminho com / em vez de ./
            caminho=$(sed 's|^\./||' <<< "$arquivo")
            linha="- [$titulo]($caminho)"

            # Adicionar o conteúdo extraído após a linha de título e caminho
            conteudo_formatado=$(awk '{print "    "$0}' <<< "$conteudo")
            linha="$linha\n\n$conteudo_formatado"

            # Adicionar a linha formatada ao arquivo _sidebar.md
            echo -e "$linha\n" >> "$sidebar"
        fi
    fi
done
