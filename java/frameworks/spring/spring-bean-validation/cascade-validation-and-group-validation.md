# Validação em cascata e Validação de grupos

> ## **Validation Groups**

### **Definição**

Realizar validação para um grupo de atributos.

### **Sintaxe**

1. Declarar uma interface de marcação (definir um grupo):

    ```java
    interface [nome do groupo] {
    }
    ```

2. Mudar o grupo de validação padrão (`Default.class`) para o criado na etapa anterior com a anotação `@ConvertGroup`:

    ```java
    @ConvertGroup(to = [interface do grupo])
    // atributo
    ```

### **Exemplo**

```java
interface ClienteId {
}
```

```java
@Entity
public class Entrega {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @NotNull
    private BigDecimal taxa;

    private LocalDateTime dataPedido;

    private LocalDateTime dataFinalizacao;

    @Valid
    @ConvertGroup(to = ValidationGroups.ClienteId.class)
    @NotNull
    @ManyToOne
    private Cliente cliente;

    @Embedded
    private Destinatario destinatario;

    @Enumerated(EnumType.STRING)
    private StatusEntrega status;

}
```