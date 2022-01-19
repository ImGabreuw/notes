# Criando uma anotação de validação customizada utilizando anotações já existentes no Bean Validation

> ## **Sintaxe**

1. Definir os tipos básico de uma anotação no Java (`Target` / `Retention`):

  ```java
  @Target(ElementType.FIELD)
  @Retention(RetentionPolicy.RUNTIME)
  ```

2. Definir as classes dos validadores da *Constraint* em questão:

    ```java
    @Constraint(validatedBy = {})
    ```

    > **OBS**: como nesse cenário será utilizado anotações já existentes no Bean Validation, não é necessário criar um próprio, pois será usado os *validators* do *Hibernate* (validador padrão do Bean Validation)

3. Definir a relação lógica entre as anotações utilizado nessa *Constraint* (`OR` / `AND`):

    ```java
    @ConstraintComposition
    ```

    > O valor padrão dessa anotação é `CompositionType.AND`, ou seja, o valor presente no campo com essa anotação precisa ser válido em todas as anotações de validação.

    **CompositionType**:

    * `CompositionType.AND`: "e" / "&&"

    * `CompositionType.OR`: "ou" / "||"

    * `CompositionType.ALL_FALSE`: "negação" / "!"

4. Definir as anotações de validação do Bean Validation:

    ```java
    @Digits(integer = 2, fraction = 2)
    @DecimalMin("0.00")
    @DecimalMax("10.00")
    ```

5. Por fim, definir os atributos `message`, `payload` e `groups` para cumprir o contrato e ser aceito pelo Bean Validation como um anotação de validação válida:

    ```java
    String message() default "";

    Class<? extends Payload>[] payload() default {};

    Class<?>[] groups() default {};
    ```

> ## **Exemplo**

```java
@Target(FIELD)
@Retention(RUNTIME)
@Constraint(validatedBy = {})
@ConstraintComposition

@Digits(integer = 2, fraction = 2)
@DecimalMin(value = "0.00", message = MESSAGE)
@DecimalMax(value = "10.00", message = MESSAGE)
public @interface Score {

    String MESSAGE = "O campo 'Score' deve conter um número entre 0.00 e 10.00";

    String message() default MESSAGE;

    Class<? extends Payload>[] payload() default {};

    Class<?>[] groups() default {};

}
```

> ## **Referências**

* https://helpdev.com.br/2020/03/11/java-criando-um-annotation-de-validation-utilizando-validations-ja-existentes-creating-custom-validation-annotation-using-built-in-annotations/