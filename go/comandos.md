# Comandos

Comando | Função | Exemplo
:-----: | :----: | :-----:
`$ go env` | Visualizar as variáveis de ambiente do Go | `$ go env`
`$ go run <arquivo>` | Executar um arquivo `.go` | `$ go run main.go`
`$ go build <arquivo>` | Compilar um arquivo `.go` | `$ go build main.go`
`$ GOOS=<OS> go build <arquivo>` | Compilar um arquivo `.go` para um OS específico (**usuários Linux**) | `$ GOOS=windows go build main.go`
`$env:GOOS="<OS>"; go build <arquivo>` | Compilar um arquivo `.go` para um OS específico (**usuários Windows**) | `$env:GOOS="linux"; go build hello.go`
`$ go install` | Gerar o binário | `$ go install`
`$ go get <repositório>` | Instalar um dependência externa | `$ go get github.com/google/uuid`
`$ go test ./...` | Executar todos os teste do projeto | `$ go test ./...`
`$ golint ./...` | Biblioteca ([lint](https://pkg.go.dev/golang.org/x/lint/golint) para executar todos os teste do projeto, porém ele mostra muito mais detalhes e indica boas práticas | `$ golint ./...`
`$ go fmt ./...` | Verificar os arquivos com falta de indentação | `$ go fmt ./...` / `$ go fmt -n ./...`
