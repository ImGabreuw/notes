# Comando `base64`

### **Função**

Decodificar um segredo (*secret*) em Base64.

### Sintaxe

```bash
$ echo "[secret]" | base64 -d
```

### Exemplo

```bash
$ echo "bXlzcWw=" | base64 -d
```

* **Saída**: `mysql`