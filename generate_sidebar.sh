#!/bin/bash

# Diretório contendo os arquivos README.md
diretorio=$(pwd)
readmes=$(find . -type f -name "README.md")

# Arrays para armazenar os títulos e conteúdos dos arquivos README.md
titulos=()
conteudos=()

# Iterar sobre todos os arquivos README.md no diretório
for arquivo in $readmes; do
    # Verificar se o arquivo é diferente de ./README.md
    if [ "$arquivo" != "./README.md" ]; then
        # Verificar se o arquivo existe e não está vazio
        if [ -s "$arquivo" ]; then
            # Extrair o título do README.md (excluindo o caractere "#")
            titulo=$(awk '/^#/ {gsub("# ", ""); print; exit}' "$arquivo")

            # Extrair o conteúdo entre as linhas "> ## **Conteúdo**" e "> ## **Referências**"
            conteudo=$(awk '/> ## \*\*Conteúdo\*\*/,/> ## \*\*Referências\*\*/{if(!/^(> ## \*\*Conteúdo\*\*|> ## \*\*Referências\*\*)/){print}}' "$arquivo")

            # Armazenar o título e o conteúdo no array
            titulos+=("$titulo")
            conteudos+=("$conteudo")
        fi
    fi
done

# Ordenar o array de títulos alfabeticamente
titulos_ordenados=($(printf "%s\n" "${titulos[@]}" | sort))

# Nome do arquivo _sidebar.md
sidebar="_sidebar.md"

# Cria um novo _sidebar.md, caso não exista
echo -e "# Notes\n" > "$sidebar"
echo -e '<p align="center">\n    <img src="https://repository-images.githubusercontent.com/416103377/187144b4-4f33-4119-9ec2-ba80651e9fb6" width="80%">' >> "$sidebar"
echo -e '</p>\n' >> "$sidebar"
echo "> ## **Conteúdo**" >> "$sidebar"

# Adicionar os conteúdos extraídos ordenados ao arquivo _sidebar.md
for titulo_ordenado in "${titulos_ordenados[@]}"; do
    for ((i = 0; i < ${#titulos[@]}; i++)); do
        if [ "${titulos[i]}" = "$titulo_ordenado" ]; then
            conteudo="${conteudos[i]}"
            arquivo="${readmes[i]}"

            # Formatar a linha de título e caminho com / em vez de ./
            caminho=$(sed 's|^\./||' <<< "$arquivo")
            linha="- [$titulo_ordenado]($caminho)"

            # Adicionar o conteúdo extraído após a linha de título e caminho
            conteudo_formatado=$(awk '{print "    "$0}' <<< "$conteudo")
            linha="$linha\n\n$conteudo_formatado"

            # Adicionar a linha formatada ao arquivo _sidebar.md
            echo -e "$linha\n" >> "$sidebar"
        fi
    done
done
