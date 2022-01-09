# Configuração do ModelMapper

> ## **Configuração no Spring**

```java
@Configuration
public class ModelMapperConfig {

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }

}
```