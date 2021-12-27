# Imports no Go

> **IMPORTANTE**: *imports* desnecessários são considerados erro

> ## **Import único**

### **Sintaxe**

```go
import [nome do pacote]
```

### **Exemplo**

```go
import "fmt"
```

> ## **Imports múltiplos**

### **Sintaxe**

```js
import (
	[nome do pacote],
	// ...
)
```

### **Exemplo**

```go
import (
	"encoding/json"
	"fmt"
	"log"
)
```