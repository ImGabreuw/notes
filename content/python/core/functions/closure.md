## Closure e funções que retornam outras funções

Uma _closure_ em Python é uma função que mantém a referência a uma ou mais variáveis definidas em um escopo externo, mesmo após a conclusão desse escopo. Basicamente, ela "captura" o ambiente de uma função externa e retém o acesso a essas variáveis, permitindo que a função interna seja executada com base nos valores dessas variáveis, mesmo quando a função externa já terminou sua execução.

Aqui estão os principais pontos para entender _closures_:

- **Criação de _Closure_**: Uma _closure_ é criada quando uma função interna faz referência a variáveis de uma função externa e essa função interna é retornada como resultado da função externa.

- **Ligação de Variáveis**: As variáveis que a função interna referencia são chamadas de "variáveis capturadas". A função interna retém a ligação (referência) a essas variáveis, mesmo que a função externa já tenha terminado de ser executada.

- **Uso Flexível**: _Closures_ permitem criar funções especializadas ou personalizadas que podem ser reutilizadas com diferentes contextos, graças à "lembrança" das variáveis do ambiente em que foram criadas.

- **Exemplo**:

  ```python
  def criar_saudacao(saudacao):
      def saudar(nome):
          return f"{saudacao}, {nome}!"
      return saudar

  falar_bom_dia = criar_saudacao("Bom dia")
  falar_boa_noite = criar_saudacao("Boa noite")

  print(falar_bom_dia("Luiz"))  # Bom dia, Luiz!
  print(falar_boa_noite("Luiz"))  # Boa noite, Luiz!
  ```

No exemplo acima, a função `criar_saudacao` retorna a função interna `saudar`, que captura a variável `saudacao` definida no escopo da função externa. Quando as funções `falar_bom_dia` e `falar_boa_noite` são chamadas, elas mantêm a referência à variável `saudacao` por meio da _closure_, permitindo que elas construam as saudações corretas. Isso ilustra como _closures_ podem ser usadas para criar funções personalizadas e reutilizáveis com base em diferentes contextos.