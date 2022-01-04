# Multithreading no Go

> ## **Definição**

### ***Green thread***

É a ***thread* gerenciada pelo Go** (*go routines*).

A declaração dessa *thread* (paralela a thread principal) é feita a partir da palavra reservada `go`.

### **Channel**

É o termo dado para a **conexão entre threads**.

> ## **Exemplo**

```go
package main

import (
    "fmt"
    "io/ioutil"
    "log"
    "net/http"
    "time"
)

func main() {
    requestId := make(chan int)
    concurrency := 2 // 2 workers

    for i := 0; i <= concurrency; i++ {
        go worker(requestId, 1) // go => geração de um nova thread (paralelo a thread principal)
    }

    for i := 0; i < 10; i++ {
        requestId <- i // atribuindo um valor a um channel
    }
}

func worker(requestId chan int, worker int) {
    for r := range requestId {
        res, err := http.Get("http://localhost:8585/product")

        if err != nil {
            log.Fatal("Erro")
        }

        defer res.Body.Close()

        content, _ := ioutil.ReadAll(res.Body)
        fmt.Printf("Worker %d. RequestId: %d Content: %s", worker, r, string(content))
        time.Sleep(time.Second * 2)
    }
}
```