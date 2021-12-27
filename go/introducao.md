# Introdução à linguagem Go

> ## **Características da linguagem**

* Linguagem de programação *open source*

* **Expressiva**

* **Concisa**

* **Limpa**

* **Eficientes**

* Máximo aproveitamento de recursos multicore e de rede

* **Linguagem compilada** 

  > A compilação dos arquivos é extremamente rápida comparada com a linguagem C, por exemplo.

* Compilada em um **único binário**

* **Estaticamente tipada**

* Possui ***garbage collection***

> ## **Curiosidades**

* Criada pelo Google

* Projeto inicial em 2007

* A versão 1.0 foi lançada em 2012

* Na versão 1.5, foi feita a reescrita do compilador em Go

* Criadores: Robert Griesemar, Rob Pike, Ken Thompson

* **Empresas que utilizam Go**

  * Google
  * Docker
  * Kubernetes
  * Dropbox
  * Digital Ocean
  * Prometheus
  * Uber
  * SoundCloud
  * Medium
  * Twitch
  * BBC
  * SendGrip

> ## Motivações

#### **Limitações das principais linguagens utilizadas na Google** (Python, Java, C++)

* **Python**: problemas com **lentidão**

* **C/C++**: muita **complexidade** e **lentidão na compilação**

* **Java**: problemas gerados ao longo do tempo, por exemplo na **manutenção**, devido a **verbosidade da linguagem**

### **Necessidades**

* **Multithreading** e **concorrência**: Python, Java e C++ não foram criadas, nativamente, com esse propósito

> ## Vantagens na utilização da linguagem

* Simplicidade

* Framework de testes e profiling nativos
 
* Detecção de *race conditions*(ou *race hazard*)

* Deploy simples (1 único binário)

* Baixa curva de aprendizado