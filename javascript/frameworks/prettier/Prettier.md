---
id: "1703616764859"
related:
  - "[[JavaScript]]"
---
# Prettier
---
O Prettier é uma ferramenta de formatação de código que se destaca por sua abordagem simplificada e configuração zero. Ele é projetado para lidar com a formatação de código automaticamente, aliviando os desenvolvedores da preocupação com estilos e convenções.
### Instalação e Configuração
```bash
$ npm i -D prettier
```

Após a instalação, é comum criar um arquivo de configuração chamado `.prettierrc.js` para personalizar as opções conforme necessário. 

```js
module.exports = {
  arrowParens: 'always',
  bracketSpacing: true,
  endOfLine: 'lf',
  htmlWhitespaceSensitivity: 'ignore',
  insertPragma: false,
  jsxSingleQuote: false,
  printWidth: 80,
  proseWrap: 'always',
  quoteProps: 'as-needed',
  requirePragma: false,
  semi: true,
  singleQuote: true,
  tabWidth: 2,
  trailingComma: 'all',
  useTabs: false,
  vueIndentScriptAndStyle: false,
  embeddedLanguageFormatting: 'off',
};
```

No entanto, uma das principais vantagens do Prettier é a capacidade de funcionar bem com configurações mínimas ou mesmo sem nenhuma configuração, garantindo uma experiência de uso descomplicada.
### Benefícios do Prettier
1. **Consistência automática:** O Prettier garante que o código esteja formatado de maneira consistente, eliminando debates sobre estilos e preferências.

2. **Configuração mínima:** Pode ser utilizado sem a necessidade de configurações extensas, o que é especialmente útil para projetos que desejam uma abordagem de "opinião zero".

3. **Suporte abrangente:** Além de JavaScript, o Prettier suporta diversas outras linguagens incluindo HTML, CSS, Markdown, YAML, entre outros.

4. **Integração com editores:** O Prettier pode ser facilmente integrado em fluxos de trabalho de desenvolvimento com suporte para diversos editores, proporcionando formatação automática durante o desenvolvimento.

5. **Prevenção de erros de estilo:** Ao lidar com a formatação automaticamente, o Prettier ajuda a prevenir erros relacionados a problemas de formatação, o que é especialmente útil em ambientes colaborativos.
# Referências
---
- [[Curso de React.Js e Next.Js (nível intermediário e avançado)]]