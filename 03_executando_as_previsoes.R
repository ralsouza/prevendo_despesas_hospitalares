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
