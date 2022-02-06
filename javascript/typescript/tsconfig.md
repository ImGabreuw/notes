# Arquivo de configuração `ts-config`

> ## **Definição**

É um arquivo de configuração para especificar as opções de compilação e arquivos a serem compilados pelo `tsc`.

Esse arquivo é similar ao `jsconfig.json` (arquivo de configuração para projetos JavaScript), porém o TypeScript possui algumas configurações padrão relacionada ao JavaScript.

> ## **Configuração**

1. Criar o `tsconfig.json` com algumas configurações padrão:

   ```shell
   $ npx tsc --init
   ```

2. Realizar as alterações com base nas suas necessidades. Veja o exemplo abaixo:

   ```json
   {
     "compilerOptions": {
       "target": "es2016",
       "lib": ["ESNext", "DOM"],
       "module": "commonjs",
       "outDir": "./dist",
       "esModuleInterop": true,
       "forceConsistentCasingInFileNames": true,
       "strict": true,
       "skipLibCheck": true
     },
     "include": ["./src"]
   }
   ```

> ## **Opções do compilador**

- `target`: versão do JavaScript, por padrão é utilizado o `ES5` (`es2016`), pois é a versão que possui maior suporte

- `lib`: especificar as bibliotecas utilizadas no projeto

- `module`: definir qual sintaxe de módulo usar quando os arquivos `.ts` são compilados para `.js`

- `allowJs`: utilizar ao migrar uma projeto JavaScript para TypeScript (renomear os aquivos `.js` para `.ts`), pois o compilador/IDE exibe os erros de compatibilidades que devem ser corrigidos

- `outDir`: definir o diretório de saída dos arquivos compilador pelo `tsc`

- `strict`: habilitar as validações do TypeScript

  > **OBS**: `"strict": true` é recomendado para novos projetos. `"strict": false` é recomendado em projetos existentes (migração de um projeto `.js` para `.ts`)

- `esModuleInterop` : habilitar o suporte de `import` e `export` nos módulos

> ## **Outras configurações**

- `include`: especificar os arquivos que devem ser compilados pelo `tsc`

- `exclude`: especificar os arquivos que devem ser id]ignoradas pelo compilador
