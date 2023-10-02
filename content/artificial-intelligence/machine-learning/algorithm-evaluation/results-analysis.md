# Análise dos resultados

Na análise dos resultados de modelos de aprendizado de máquina, várias métricas são utilizadas para avaliar o desempenho do modelo e calcular a distribuição dos resultados, a fim de compreender a consistência do algoritmo. As principais métricas consideradas são: **média**, **desvio padrão**, **mínima**, **máxima** e **coeficiente de variação**.

Seguindo as etapas de avaliação vistas anteriormente temos:

## Pré-processamento

Para o presente estudo, considerou-se um conjunto de dados normalizado, proporcionando uma base padronizada para a avaliação dos algoritmos.

## Modelagem e Inferência

Resultados após o treinamento de diversos algoritmos de aprendizagem de máquina:

|     | Arvore | Random forest | KNN    | Logistica | SVM    | Rede neural |
| --- | ------ | ------------- | ------ | --------- | ------ | ----------- |
| 0   | 0.9870 | 0.9850        | 0.9815 | 0.9475    | 0.9845 | 0.9975      |
| 1   | 0.9840 | 0.9830        | 0.9800 | 0.9465    | 0.9840 | 0.9985      |
| 2   | 0.9905 | 0.9845        | 0.9795 | 0.9470    | 0.9865 | 0.9970      |
| 3   | 0.9875 | 0.9800        | 0.9780 | 0.9460    | 0.9850 | 0.9965      |
| 4   | 0.9885 | 0.9830        | 0.9820 | 0.9465    | 0.9850 | 0.9975      |
| 5   | 0.9890 | 0.9870        | 0.9780 | 0.9465    | 0.9845 | 0.9975      |
| 6   | 0.9880 | 0.9850        | 0.9805 | 0.9470    | 0.9860 | 0.9970      |
| 7   | 0.9875 | 0.9860        | 0.9800 | 0.9480    | 0.9850 | 0.9970      |
| 8   | 0.9870 | 0.9825        | 0.9795 | 0.9465    | 0.9840 | 0.9955      |
| 9   | 0.9875 | 0.9845        | 0.9820 | 0.9465    | 0.9845 | 0.9970      |
| 10  | 0.9865 | 0.9850        | 0.9795 | 0.9475    | 0.9840 | 0.9975      |
| 11  | 0.9900 | 0.9815        | 0.9825 | 0.9480    | 0.9845 | 0.9970      |
| 12  | 0.9885 | 0.9835        | 0.9825 | 0.9475    | 0.9855 | 0.9980      |
| 13  | 0.9870 | 0.9860        | 0.9780 | 0.9475    | 0.9855 | 0.9975      |
| 14  | 0.9840 | 0.9845        | 0.9810 | 0.9485    | 0.9830 | 0.9960      |
| 15  | 0.9860 | 0.9800        | 0.9790 | 0.9475    | 0.9865 | 0.9980      |
| 16  | 0.9855 | 0.9840        | 0.9810 | 0.9460    | 0.9860 | 0.9965      |
| 17  | 0.9905 | 0.9845        | 0.9800 | 0.9470    | 0.9865 | 0.9970      |
| 18  | 0.9875 | 0.9855        | 0.9805 | 0.9465    | 0.9850 | 0.9970      |
| 19  | 0.9870 | 0.9840        | 0.9795 | 0.9465    | 0.9845 | 0.9975      |
| 20  | 0.9850 | 0.9835        | 0.9820 | 0.9465    | 0.9840 | 0.9975      |
| 21  | 0.9865 | 0.9805        | 0.9825 | 0.9470    | 0.9850 | 0.9975      |
| 22  | 0.9890 | 0.9820        | 0.9780 | 0.9455    | 0.9865 | 0.9965      |
| 23  | 0.9870 | 0.9900        | 0.9810 | 0.9465    | 0.9875 | 0.9965      |
| 24  | 0.9865 | 0.9805        | 0.9795 | 0.9470    | 0.9870 | 0.9975      |
| 25  | 0.9880 | 0.9845        | 0.9790 | 0.9470    | 0.9820 | 0.9975      |
| 26  | 0.9880 | 0.9835        | 0.9770 | 0.9475    | 0.9840 | 0.9970      |
| 27  | 0.9860 | 0.9815        | 0.9785 | 0.9465    | 0.9865 | 0.9970      |
| 28  | 0.9860 | 0.9850        | 0.9790 | 0.9480    | 0.9835 | 0.9970      |
| 29  | 0.9880 | 0.9840        | 0.9805 | 0.9465    | 0.9865 | 0.9965      |

## Pós-processamento

Ao aplicar a função `describe` ao DataFrame com os resultados, é possível analisar as métricas calculadas:

|       | Arvore    | Random forest | KNN       | Logistica | SVM       | Rede neural |
| ----- | --------- | ------------- | --------- | --------- | --------- | ----------- |
| count | 30.000000 | 30.000000     | 30.000000 | 30.000000 | 30.000000 | 30.000000   |
| mean  | 0.987300  | 0.983800      | 0.980050  | 0.946950  | 0.985083  | 0.997117    |
| std   | 0.001622  | 0.002176      | 0.001533  | 0.000687  | 0.001280  | 0.000611    |
| min   | 0.984000  | 0.980000      | 0.977000  | 0.945500  | 0.982000  | 0.995500    |
| 25%   | 0.986500  | 0.982625      | 0.979000  | 0.946500  | 0.984125  | 0.997000    |
| 50%   | 0.987250  | 0.984000      | 0.980000  | 0.947000  | 0.985000  | 0.997000    |
| 75%   | 0.988000  | 0.985000      | 0.981000  | 0.947500  | 0.986375  | 0.997500    |
| max   | 0.990500  | 0.990000      | 0.982500  | 0.948500  | 0.987500  | 0.998500    |

## Apresentação de Resultados

Com base nas métricas calculadas, pode-se concluir que o modelo de rede neural apresentou o melhor desempenho. Isso é evidenciado pelo menor desvio padrão, indicando menor margem de erro nas classificações. Além disso, a média das classificações da rede neural é a mais alta, indicando maior precisão em relação aos outros modelos.

## Implantação do Modelo e Geração de Valor

Esses resultados podem ser usados para selecionar o modelo mais apropriado para a aplicação em questão e para direcionar a otimização futura do modelo visando a obtenção de um desempenho ainda melhor.
