# Introdução ao Spring Actuator

> **Documentação**: [clique aqui](https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html)

### Definição

* É uma ferramenta para gerenciar e monitor aplicações Spring Boot

* Cada endpoint pode ser exposta via **HTTP** e **JMX** (Java Management Extensions)

### Dependência

* **Maven**

  ```xml
  <dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-actuator</artifactId>
    </dependency>
  </dependencies>
  ```

* **Gradle**

  ```gradle
  dependencies {
      implementation 'org.springframework.boot:spring-boot-starter-actuator'
  }
  ```
