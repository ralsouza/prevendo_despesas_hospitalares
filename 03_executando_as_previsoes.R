# Diretório de trabalho
setwd('/Users/ls_rafael/Documents/GitHub/prevendo_despesas_hospitalares')

# Função usada para a predição
?predict

# Verificar os gastos preditos pelo modelo conforme os dados de treino
# A diferenção entre os valores preditos e os valores reais, são os Erros do Modelo. E precisamos reduzir isso tanto quanto possível
predicao1 <- predict(modelo)
View(predicao1)

# Executando a predição com os dados de teste
# Este conjunto de dados não possui a coluna de gastos, a variável alvo,
# então são aprensetadas apenas as variáveis preditoras, pois o modelo deverá entregar os dados de saída
# conforme aprendeu nos dados de treino calculando as novas variáveis preditodas
despesas_teste <- read.csv('despesas-teste.csv')
View(despesas_teste)

predicao2 <- predict(modelo, despesas_teste)
View(predicao2)

#### PASSO 4 - AVALIANDO A PERFORMANCE DO MODELO ####
# Mais detalhes sobre o modelo
summary(modelo)

# ****************************************************
# *** Estas informações abaixo é que farão de você ***
# *** um verdadeiro conhecedor de Machine Learning ***
# ****************************************************

# Equação de Regressão
# A regressão fornece uma função que relaciona as variáveis
# y = a + bx (simples)
# y = a + b0x0 + b1x1 (múltipla)

# Resíduos
# Diferença entre os valores observados de uma variável e seus valores previstos
# Seus resíduos devem se parecer com uma distribuição normal, o que indica
# que a média entre os valores previstos e os valores observados é próximo de 0 (o que é bom)

# Coeficiente - Intercept - a (alfa)
# Valor de a na equação de regressão
# É o ponto na reta de regressão corta o eixo y

# Coeficientes - Nomes das variáveis - b (beta)
# Valor de b na equação de regressão

# Obs: A questão é que lm() ou summary() têm diferentes convenções de 
# rotulagem para cada variável explicativa/preditora. 
# Em vez de escrever slope_1, slope_2, .... 
# Eles simplesmente usam o nome da variável em qualquer saída para 
# indicar quais coeficientes pertencem a qual variável.

# Erro Padrão
# Medida de variabilidade na estimativa do coeficiente a (alfa). O ideal é que este valor 
# seja menor que o valor do coeficiente (Estimate), mas nem sempre isso irá ocorrer.

# Asteriscos 
# Os asteriscos representam os níveis de significância de acordo com o p-value.
# Quanto mais estrelas, maior a significância.
# Atenção --> Muitos astericos indicam que é improvável que não exista 
# relacionamento entre as variáveis.

# Valor t
# Define se coeficiente da variável é significativo ou não para o modelo. 
# Ele é usado para calcular o p-value e os níveis de significância.

# p-value
# O p-value representa a probabilidade que a variável não seja relevante. 
# Deve ser o menor valor possível. 
# Se este valor for realmente pequeno, o R irá mostrar o valor 
# como notação científica

# Significância
# São aquelas legendas (asteriscos, pontos ou espaços em branco) próximas as suas variáveis
# Espaço em branco - ruim, pois não aprensenta representatividade para o modelo, isso é ruim 
#                    pois o modelo perde a generalidade, o que pode reduzir a precisão do modelo.
#                    Descobrimos quais são as variáveis relevantes na análise exploratória,
#                    buscando o coeficiente de correlação e entender o papel de cada variável
# Pontos - razoável
# Asteriscos - bom
# Muitos asteriscos - muito bom
# No resumo gerado, as variáveis que não aprensentam relevância poderiam ser removidas em uma segunda versão
# do modelo, aumentando sua precisão

# Residual Standar Error
# Este valor representa o desvio padrão dos resíduos

# Degrees of Freedom
# É a diferença entre o número de observações na amostra de treinamento 
# e o número de variáveis no seu modelo

# R-squared (coeficiente de determinação - R^2)
# Ajuda a avaliar o nível de precisão do nosso modelo. 
# Quanto maior, melhor, sendo 1 o valor ideal.

# F-statistics
# É o teste F do modelo. Esse teste obtém os parâmetros do nosso modelo 
# e compara com um modelo que tenha menos parâmetros.
# Em teoria, um modelo com mais parâmetros tem um desempenho melhor. 

# Se o seu modelo com mais parâmetros NÃO tiver perfomance
# melhor que um modelo com menos parâmetros, o valor do p-value será bem alto. 

# Se o modelo com mais parâmetros tiver performance
# melhor que um modelo com menos parâmetros, o valor do p-value será mais baixo.

# Lembre-se que correlação não implica causalidade, ou seja, o modelo não está dizendo que as variáveis
# que possuem correlação maior implicam necessariamente na causa de um gasto maior ou menor de despesas hospitalares








