# Anotações do Jackson

> ## **`@JsonProperty`**

Especificar um nome customizado de uma propriedade que será mapeada.

```java
public class DTO {

  @JsonProperty("custom_id")
  private Long id;

}
```

```json
{
  "id": 1
}
```

## **`@JsonFormat`**

Especificar um formato de data.

Por padrão, o Jackson utiliza o format _ISO 8608_.

```java
public class DTO {

  @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
  private LocalDate date;

}
```

## **`@JsonIgnore`**

Indicar que uma propriedade será ignorada no momento do mapeamento.

```java
public class DTO {

  private Long id;

  @JsonIgnore
  private String name;

}
```

```json
{
  "id": 1
}
```

## **`@JsonGetter`**

Especificar um nome customizado ao método _getter_ de uma propriedade.

Tem função análogo ao [`@JsonProperty`](#jsonproperty).

> **OBS**: o argumento dessa anotação deve ser o nome do atributo correspondente ao método _getter_.

```java
public class DTO {

 private Long id;

 @JsonGetter("id")
 public Long getCustomId() {
   return id;
 }

}
```

## **`@JsonSetter`**

Especificar um nome customizado ao método _setter_ de uma propriedade.

Tem função análogo ao [`@JsonProperty`](#jsonproperty).

> **OBS**: o argumento dessa anotação deve ser o nome do atributo correspondente ao método _setter_.

```java
public class DTO {

 private Long id;

 @JsonSetter("id")
 public void setCustomId(Long id) {
   this.id = id;
 }
}
```
