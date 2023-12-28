---
id: "1703612436078"
related:
  - "[[JavaScript]]"
---
# Editorconfig
---
O EditorConfig é uma ferramenta que visa manter consistência nas configurações de estilo de código entre diferentes IDEs e editores de texto. Ele utiliza um arquivo chamado `.editorconfig` para definir regras específicas para um projeto, tais como estilo de indentação, tipo de quebra de linha, entre outros.

### Configuração Básica do `.editorconfig`
O arquivo `.editorconfig` é colocado na raiz do projeto e pode ter uma aparência semelhante a esta:

```
root = true

[*]
indent_style = space
indent_size = 2
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
end_of_line = lf
```

### Extensão no VS Code
Para que o Visual Studio Code (VS Code) respeite as configurações definidas no `.editorconfig`, é recomendável instalar a extensão "EditorConfig for VS Code". Você pode fazer isso seguindo estes passos:

1. Abra o VS Code.
2. Acesse a barra lateral e clique no ícone de extensões (ou use o atalho `Ctrl+Shift+X`).
3. Pesquise por `EditorConfig for VS Code`.
4. Instale a extensão fornecida por EditorConfig.

Após a instalação, o VS Code automaticamente respeitará as configurações do `.editorconfig` ao abrir projetos que contenham esse arquivo.
### Benefícios do EditorConfig
- **Consistência:** Mantém a consistência nas configurações de estilo de código, mesmo em equipes com diferentes preferências de IDE ou editor.

- **Facilidade de manutenção:** Permite ajustar as configurações de estilo centralizadamente no arquivo `.editorconfig` em vez de depender de configurações específicas de cada IDE.

- **Integração suave:** A extensão para o VS Code facilita a integração do EditorConfig nesse popular ambiente de desenvolvimento.
# Referências
---
- [[Curso de React.Js e Next.Js (nível intermediário e avançado)]]
