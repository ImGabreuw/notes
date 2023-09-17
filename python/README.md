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

    - [Método `strip`](/python/core/data-types/str-methods/strip.md)

    - [Método `split`](/python/core/data-types/str/split.md)

    - [Método `join`](/python/core/data-types/str-methods/join.md)

  - [`int`](/python/core/data-types/int-type.md)

  - [`float`](/python/core/data-types/float-type.md)

  - [`bool`](/python/core/data-types/bool-type.md)

  - [`None`](/python/core/data-types/none-type.md)

  - [Conversão de tipos](/python/core/data-types/typecasting.md)

- [Estrutura condicional](/python/core/conditional-structure.md)

- Loops

  - [`while`](/python/core/loops/while-structure.md)

  - [Operador `continue`](/python/core/operators/continue.md)

  - [Alinhamento de `while`](/python/core/loops/while-structure-alignment.md)

  - [Declaração `else` no `while`](/python/core/loops/else-statement-while-structure.md)

  - [`for`](/python/core/loops/for-structure.md)

  - [Objetos iteráveis](/python/core/loops/iterable-objects.md)

  - [Declaração `else` no `for`](/python/core/loops/else-statement-for-structure.md)

- [Debugging no VS Code](/python/debugging-vscode.md)

  - [Flags](/python/flags.md)

- Tratamento de exceções

  - [Introdução ao bloco `try-except`](/python/core/exception-handling/try-except-introduction.md)

  - [Operador `as` no bloco `except`](/python/core/exception-handling/as-operator-in-except.md)

- Funções

  - [Introdução](/python/core/functions/introduction.md)

  - [Argumentos nomeados e não nomeados (posicional)](/python/core/functions/named-and-positional-args.md)

  - [Valor padrão para parâmetros](/python/core/functions/param-default-value.md)

  - [Escopo em funções](/python/core/functions/function-scope.md)

  - [`*args` em funções](/python/core/functions/var-args.md)

  - [High order functions](/python/core/functions/high-order-functions.md)

  - [Closure](/python/core/functions/closure.md)

  - Funções Build-in

    - [`print`](/python/core/functions/buildin-functions/print.md)

    - [`input`](/python/core/functions/buildin-functions/input.md)

    - [`id`](/python/core/functions/buildin-functions/id.md)

    - [`range`](/python/core/functions/buildin-functions/range.md)

    - [`enumerate`](/python/core/functions/buildin-functions/enumerate.md)

- Estrutura de dados

  - [`list`](/python/core/data-structure/list.md)

  - [Empacotamento e desempacotamento](/python/core/packing-and-unpacking.md)

  - [`tuple`](/python/core/data-structure/tuple.md)

- [Problema de imprecisão com número de ponto flutuante](/python/imprecision-problem-with-float-number.md)

- Bibliotecas

  - NumPy

    - Funções

      - [`unique`](/python/library/numpy/functions/unique.md)
      
      - [`ravel`](/python/library/numpy/functions/ravel.md)
      
      - [`reshape`](/python/library/numpy/functions/reshape.md)

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
      
      - [`corr`](/python/library/pandas/functions/corr.md)

  - Plotly

    - Funções

      - [`scatter_matrix`](/python/library/plotly/functions/scatter_matrix.md)

      - [`treemap`](/python/library/plotly/functions/treemap.md)

      - [`parallel_categories`](/python/library/plotly/functions/parallel_categories.md)

  - SeaBorn

    - Funções

      - [`histplot`](/python/library/seaborn/functions/histplot.md)

      - [`countplot`](/python/library/seaborn/functions/countplot.md)
      
      - [`heatmap`](/python/library/seaborn/functions/heatmap.md)

  - Sklean

    - [Introdução](/python/library/sklearn/introduction.md)

    - Módulo "model selection"

      - [Grid Search CV](/python/library/sklearn/model-selection/grid-search-cv.md)
      
      - [K-Fold](/python/library/sklearn/model-selection/k-fold.md)

      - Funções

        - [`train_test_split`](/python/library/sklearn/model-selection/functions/train-test-split.md)
        
        - [`cross-val-score`](/python/library/sklearn/model-selection/functions/cross-val-score.md)

    - Módulo "pre-processing"

      - _Standard Scaler_

        - Funções

          - [`fit_transform`](/python/library/sklearn/preprocessing/standard-scaler/functions/fit_transform.md)

      - _Label Encoder_

        - Funções

          - [`fit_transform`](/python/library/sklearn/preprocessing/label-enconder/functions/fit_transform.md)

      - _One-Hot Encoder_

        - Funções

          - [`fit_transform`](/python/library/sklearn/preprocessing/one-hot-encoder/functions/fit_transform.md)
      
      - [`PolynomialFeatures`](/python/library/sklearn/preprocessing/polynomial-features.md)

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
      
      - [Decision Tree Regressor](/python/library/sklearn/tree/decision-tree-regressor.md)

      - Funções

        - [`plot_tree`](/python/library/sklearn/tree/functions/plot_tree.md)

    - Módulo "ensemble"

      - [Random Forest Classifier](/python/library/sklearn/ensemble/random-forest-classifier.md)

    - Módulo "neighbors"

      - [K-Neighbors Classifier](/python/library/sklearn/neighbors/k-neighbors-classifier.md)

    - Módulo "svm"

      - [SVC](/python/library/sklearn/svm/svc.md)

    - Módulo "neural network"
      
      - [MLP Classifier](/python/library/sklearn/neural-network/mlp-classifier.md)
    
    - Módulo "liner model"
      
      - [Linear Regression](/python/library/sklearn/linear_model/linear-regression.md)

  - Pickle
    
    - [Salvar um classificador treinado](/python/library/pickle/save-trained-classifier.md)

    - Funções

      - [`dump`](/python/library/pickle/functions/dump.md)

      - [`load`](/python/library/pickle/functions/load.md)

  - Yellowbrick

    - Módulo "classifier"

      - [Matrix de confusão](/python/library/yellowbrick/classifier/confusion-matrix.md)
    
    - Módulo "regressor"
      
      - [`ResidualsPlot`](/python/library/yellowbrick/regressor/residuals-plot.md)

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

  - PyPortfolioOpt

    - [Introdução](/python/library/py-portifolio-opt/introduction.md)

  - Riskfolio Lib

    - [Introdução](/python/library/riskfolio-lib/introduction.md)
  
  - Scipy

    - Módulo "stats"
      
      - Funções
        
        - [`shapiro`](/python/library/scipy/stats/functions/shapiro.md)
        
        - [`f_oneway`](/python/library/scipy/stats/functions/f-oneway.md)
  
  - Statsmodels
    
    - Módulo "stats"
      
      - Módulo "multicamp"
        
        - [MultiComparison](/python/library/statsmodels/stats/multicamp/multicomparison.md)

> ## **Referências**

- [Python](/python/references.md)
