# Introdução ao Spring Native

### Características

* Utilização de **imagens nativas**

### Vantagens das imagens nativas

* Menor consumo de memória

* Inicialização mais rápida

* Obtenção de código executável por meio da compilação AOT (*Ahead of Time*)

  > **OBS**: a compilação padrão do Java é a JIT (Just in Time)

* Análise de modo estático todas as dependências, libs e jdk por meio do **Graal VM**

* Geração de um executável, através da compilação antecipada (*AOT*), é realizado o descarte de metadados desnecessários para o funcionamento da aplicação

### **OBS**: outros frameworks como *Helidon*, *Micronaut* e *Quarkus* já ofereciam essa tecnologia