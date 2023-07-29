#!/bin/bash

# Diretório contendo os arquivos README.md
diretorio=$(pwd)
readmes=$(find . -type f -name "README.md" | sort -t'/' -k2);

# Array para armazenar o conteúdo extraído de cada arquivo README.md
conteudos=()

# Iterar sobre todos os arquivos README.md no diretório
for arquivo in $readmes; do
    # Verificar se o arquivo é diferente de ./README.md
    if [ "$arquivo" != "./README.md" ]; then
        # Verificar se o arquivo existe e não está vazio
        if [ -s "$arquivo" ]; then
            # Extrair o conteúdo entre as linhas "> ## **Conteúdo**" e "> ## **Referências**"
            conteudo=$(awk '/> ## \*\*Conteúdo\*\*/,/> ## \*\*Referências\*\*/{if(!/^(> ## \*\*Conteúdo\*\*|> ## \*\*Referências\*\*)/){print}}' "$arquivo")

            # Armazenar o caminho do arquivo e o conteúdo extraído no array
            conteudos+=("$arquivo:$conteudo")
        fi
    fi
done

# Nome do arquivo _sidebar.md
sidebar="_sidebar.md"

# Cria um novo _sidebar.md, caso não exista
echo -e "# Notes\n" > "$sidebar"
echo -e '<p align="center">\n    <img src="https://repository-images.githubusercontent.com/416103377/187144b4-4f33-4119-9ec2-ba80651e9fb6" width="80%">' >> "$sidebar"
echo -e '</p>\n' >> "$sidebar"
echo "> ## **Conteúdo**" >> "$sidebar"

# Adicionar os conteúdos extraídos
for conteudo in "${conteudos[@]}"; do
    arquivo="${conteudo%%:*}"
    texto="${conteudo#*:}"

    # Extrair o título do README.md (excluindo o caractere "#")
    titulo=$(grep -m 1 -oP "(?<=^# ).*" "$arquivo")

    # Formatar a linha de título e caminho com / em vez de ./
    caminho=$(sed 's|^\./||' <<< "$arquivo")
    linha="- [$titulo]($caminho)"

    # Adicionar o conteúdo extraído após a linha de título e caminho
    conteudo_formatado=$(awk '{print "    "$0}' <<< "$texto")
    linha="$linha\n\n$conteudo_formatado"

    # Adicionar a linha formatada ao arquivo _sidebar.md
    echo -e "$linha\n" >> "$sidebar"
done
