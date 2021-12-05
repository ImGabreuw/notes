# Componente Controller do Master Node

## Definição

Implementam o "**como**"

## Função

* Acompanham o estado atual do que está em execução no momento

* Caso tenha divergência entre o estado atual e o ideal/desejado, é executado operações que aproximam o estado atual do desejado (processo chamado de **reconciliação**)

## Características

* **Modelo descentralizado**

  * Não é uma entidade única, podem existir *controllers* externos (no Kubernetes 1.21: 38 controllers nativos -> cada um exercendo uma função afim de garantir o estado deseja)

  * Não é a ação de um *controller* que resolve um problema, cada um tenta aproximar o estado atual do desejado "fazendo a sua parte"