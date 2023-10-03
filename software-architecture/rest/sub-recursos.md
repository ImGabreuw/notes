# Sub-recursos no REST

> ## **Definição**

É um recurso atrelado a outro recurso.

> ## **Exemplo**

### **Requisição**

```http
GET http://localhost:8080/entregas/1/ocorrencias
```

> **OBS**: não é necessário informar o ID da entrega em `/ocorrencias/{id}`, pois o mesmo já está presente da URI do recurso `/entregas`

### **Resposta**

```json
{
  "descricao": "Tentativa sem sucesso (não estava em casa)"
}
```