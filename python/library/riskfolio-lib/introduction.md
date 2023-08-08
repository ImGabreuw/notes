# Introdução à biblioteca Riskfolio-Lib

A Riskfolio-Lib é uma biblioteca Python desenvolvida para tornar a otimização quantitativa de alocação de ativos ou carteiras acessível a todos. 

Seu objetivo é auxiliar estudantes, acadêmicos e profissionais a construir carteiras de investimento baseadas em modelos matematicamente complexos com baixo esforço. 

A biblioteca é construída em cima da biblioteca [cvxpy](https://www.cvxpy.org/) e integrada de maneira próxima com as estruturas de dados do [pandas](https://pandas.pydata.org/).

## **Objetivo**

A Riskfolio-Lib oferece uma ampla gama de funcionalidades para otimização de carteiras de investimento, abrangendo desde otimização média-variância até abordagens mais avançadas, como otimização de risco e alocação de ativos baseada em risco.

## **Principais recursos**

A Riskfolio-Lib oferece diversas funcionalidades, incluindo:

- Otimização de carteiras média-variância e média-variância logarítmica (Critério de Kelly) com 4 funções objetivas, incluindo:

  - Risco Mínimo.

  - Retorno Máximo.

  - Função de Utilidade Máxima.

  - Razão Retorno-Risco Máxima.

- Otimização de carteiras média-variância e média-variância logarítmica (Critério de Kelly) com 22 medidas de risco convexas.

- Otimização de carteiras com paridade de risco com 18 medidas de risco convexas.

- Otimização de carteiras com técnicas de agrupamento hierárquico, incluindo Hierarchical Risk Parity (HRP) e Hierarchical Equal Risk Contribution (HERC), com 24 medidas de risco usando paridade de risco ingênua.

- Otimização de carteiras com objetivos diferentes, como Minimum Risk, Maximum Return, Maximum Utility Function e Equal Risk Contribution.

- Otimização de carteiras usando modelos como Black Litterman, Risk Factors e mais.

- Ferramentas para calcular medidas de risco e contribuição de risco por ativo.

- Visualização de propriedades de carteiras e medidas de risco.

- Geração de relatórios no Jupyter Notebook e Excel.

## **Documentação**

A documentação online está disponível em [Documentação](https://riskfolio-lib.readthedocs.io/en/latest/). A documentação inclui um [tutorial](https://riskfolio-lib.readthedocs.io/en/latest/examples.html) com exemplos que demonstram as capacidades da Riskfolio-Lib.

## **Instalação**

A versão mais recente (e versões anteriores) pode ser instalada a partir do PyPI:

```bash
pip install riskfolio-lib
```

## **Conclusão**

A Riskfolio-Lib é uma ferramenta poderosa para a otimização de carteiras de investimento, permitindo aos usuários construir estratégias sofisticadas de alocação de ativos. 

Ela simplifica o processo de otimização e oferece uma variedade de opções e funcionalidades para auxiliar no processo de tomada de decisão na gestão de carteiras. Com sua documentação abrangente e recursos avançados, a Riskfolio-Lib é uma adição valiosa ao conjunto de ferramentas disponíveis para a análise e otimização de carteiras de investimento.