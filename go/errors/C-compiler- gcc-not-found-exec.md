# Erro: "cgo: C compiler "gcc" not found: exec: "gcc": executable file not found in $PATH"

### Contexto

* **Comando**

  `$ go test ./...`

* **Saída**

  ```bash
  # runtime/cgo
  cgo: C compiler "gcc" not found: exec: "gcc": executable file not found in $PATH
  FAIL    aluno/entity [build failed]
  FAIL
  ```

### Solução (no Ubuntu)

> Referência: [stackoverflow](https://stackoverflow.com/questions/43580131/exec-gcc-executable-file-not-found-in-path-when-trying-go-build)

* **Comando**

  `$ sudo apt-get install build-essential -y`