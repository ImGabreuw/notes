# Componente Controller do Master Node

> ## Definição

Implementam o "**como**"

---

> ## Função

* Acompanham o estado atual do que está em execução no momento

* Caso tenha divergência entre o estado atual e o ideal/desejado, é executado operações que aproximam o estado atual do desejado (processo chamado de **reconciliação**)

---

> ## Características

* **Modelo descentralizado**

  * Não é uma entidade única, podem existir *controllers* externos (no Kubernetes 1.21: 38 *controllers* nativos, e cada um exercendo uma função para garantir o estado desejo)

  * Não é a ação de um *controller* que resolve um problema, cada um tenta aproximar o estado atual do desejado "fazendo a sua parte"

* **Alta disponibilidade**

  * Falhas afastam o cluster do estado desejado (Exemplos: falha na aplicação, travamento no host)

  * **Reiniciam aplicações falhas** e **reinstanciam cargas em outros hosts** afim garantir o estado desejado no cluster

* **Escalabilidade**

  * Basta declarar novamente no objeto declarativo, o número de instâncias, e então os *controllers* atuarão até chegar nesse novo estado desejado

  * O Kubernetes também tem a função de controlar a quantidade de instâncias de acordo com a demanda, basta declarar isso no manifesto