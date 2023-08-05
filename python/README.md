# Python

> ## **Conteúdo**

- [Introdução ao Python](/python/introduction.md)

- [Instalação no Ubuntu 22.04](/python/instalation-ubuntu.md)

- [Comandos no terminal](/python/commands.md)

- [Módulo](/python/core/module.md)

- [Comentários e DocStrings](/python/core/comments-and-docstrings.md)

- [Sintaxe básico](/python/sintaxe-basica.md)

- [Variáveis](/python/core/variables.md)

- [Constantes](/python/core/constants.md)

- [Formatação de strings](/python/core/strings-formatting.md)

- [Fatiamento de strings](/python/core/string-slicing.md)

- Operadores

  - [Operadores aritméticos](/python/core/operators/arithmetics-operators.md)

  - [Operadores relacionais](/python/core/operators/relational-operators.md)

  - [Operador lógico "and"](/python/core/operators/and-operator.md)

  - [Operador lógico "or"](/python/core/operators/or-operator.md)

  - [Operador lógico "not"](/python/core/operators/not-operator.md)

  - [Pass](/python/core/operators/pass-operator.md)

  - [Ellipsis](/python/core/operators/ellipsis-operator.md)

  - [Operador "in"](/python/core/operators/in-operator.md)

  - [Operador "is"](/python/core/operators/is-operador.md)

- Tipo de dados

  - [Classe `type`](/python/core/data-types/class-type.md)

  - [Literais](/python/core/data-types/literals.md)

  - [`str`](/python/core/data-types/str-type.md)

  - [`int`](/python/core/data-types/int-type.md)

  - [`float`](/python/core/data-types/float-type.md)

  - [`bool`](/python/core/data-types/bool-type.md)

  - [`None`](/python/core/data-types/none-type.md)

  - [Conversão de tipos](/python/core/data-types/typecasting.md)

- [Estrutura condicional](/python/core/conditional-structure.md)

- Estrutura de repetição

  - [`while`](/python/core/loop-structure/while-structure.md)

  - [Operador `continue`](/python/core/operators/continue.md)

  - [Alinhamento de `while`](/python/core/loop-structure/while-structure-alignment.md)

  - [Declaração `else` no `while`](/python/core/loop-structure/else-statement-while-structure.md)

  - [`for`](/python/core/loop-structure/for-structure.md)

  - [Função `range`](/python/core/functions/range.md)

- [Debugging no VS Code](/python/debugging-vscode.md)

  - [Flags](/python/flags.md)

- Tratamento de exceções

  - [Introdução ao bloco `try-except`](/python/core/exception-handling/try-except-introduction.md)

  - [Operador `as` no bloco `except`](/python/core/exception-handling/as-operator-in-except.md)

- Funções

  - [`print()`](/python/core/functions/print-function.md)

  - [`input()`](/python/core/functions/input-function.md)

  - [`id()`](/python/core/functions/id-function.md)

- Bibliotecas

  - NumPy

    - Funções

      - [`unique`](/python/library/numpy/functions/unique.md)

  - Pandas

    - [Filtro de registros](/python/library/pandas/registry_filter.md)

    - Funções

      - [`head`](/python/library/pandas/functions/head.md)

      - [`tail`](/python/library/pandas/functions/tail.md)

      - [`describe`](/python/library/pandas/functions/describe.md)

      - [`loc`](/python/library/pandas/functions/loc.md)

      - [`drop`](/python/library/pandas/functions/drop.md)

      - [`isnull`](/python/library/pandas/functions/isnull.md)

      - [`fillna`](/python/library/pandas/functions/fillna.md)

      - [`iloc`](/python/library/pandas/functions/iloc.md)

  - Plotly

    - Funções

      - [`scatter_matrix`](/python/library/plotly/functions/scatter_matrix.md)

      - [`treemap`](/python/library/plotly/functions/treemap.md)

      - [`parallel_categories`](/python/library/plotly/functions/parallel_categories.md)

  - SeaBorn

    - Funções

      - [`histplot`](/python/library/seaborn/functions/histplot.md)

      - [`countplot`](/python/library/seaborn/functions/countplot.md)

  - Sklean

    - [Introdução](/python/library/sklearn/introduction.md)

    - Módulo "model selection

      - Funções

        - [`train_test_split`](/python/library/sklearn/model-selection/functions/train-test-split.md)

    - Módulo "pre-processing"

      - _Standard Scaler_

        - Funções

          - [`fit_transform`](/python/library/sklearn/standard-scaler/functions/fit_transform.md)

      - _Label Encoder_

        - Funções

          - [`fit_transform`](/python/library/sklearn/label-enconder/functions/fit_transform.md)

      - _One-Hot Encoder_

        - Funções

          - [`fit_transform`](/python/library/sklearn/one-hot-encoder/functions/fit_transform.md)

    - Módulo "naive bayes"

      - _GaussianNB_

        - [Principais atributos](/python/library/sklearn/gaussian-nb/main-attributes.md)

        - Funções

          - [`fit`](/python/library/sklearn/gaussian-nb/functions/fit.md)

          - [`predict`](/python/library/sklearn/gaussian-nb/functions/predict.md)

    - Módulo "metrics"

      - Funções

        - [`accurancy_score`](/python/library/sklearn/metrics/functions/accurancy-score.md)

        - [`confusion_matrix`](/python/library/sklearn/metrics/functions/confusion_matrix.md)

        - [`classification_report`](/python/library/sklearn/metrics/functions/classification_report.md)

    - Módulo "tree"

      - [Decision Tree Classifier](/python/library/sklearn/tree/decision-tree-classifier.md)

      - Funções

        - [`plot_tree`](/python/library/sklearn/tree/functions/plot_tree.md)

    - Módulo "ensemble"

      - [Random Forest Classifier](/python/library/sklearn/ensemble/random-forest-classifier.md)

    - Módulo "neighbors"

      - [K-Neighbors Classifier](/python/library/sklearn/neighbors/k-neighbors-classifier.md)

  - Pickle

    - Funções

      - [`dump`](/python/library/pickle/functions/dump.md)

      - [`load`](/python/library/pickle/functions/load.md)

  - Yellowbrick

    - Módulo "classifier"

      - [Matrix de confusão](/python/library/yellowbrick/classifier/confusion-matrix.md)

  - Matplotlib

    - Módulo "pyplot"

      - Funções

        - [`subplots`](/python/library/matplotlib/pyplot/functions/subplots.md)

        - [`tight_layout`](/python/library/matplotlib/pyplot/functions/tight_layout.md)

  - yFinance

    - [Introdução](/python/library/yfinance/introduction.md)

    - Classe `Ticker`

      - Atributos

        - [`history_metadata`](/python/library/yfinance/ticker/attributes/history-metadata.md)

        - [`actions`](/python/library/yfinance/ticker/attributes/actions.md)

      - Funções

        - [`history`](/python/library/yfinance/ticker/functions/history.md)

        - [`get_shares_full`](/python/library/yfinance/ticker/functions/get-shares-full.md)

> ## **Referências**

- [Python](/python/references.md)
