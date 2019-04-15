# Machine Learning - Regressão

# Work Directory
setwd('/Users/ls_rafael/Documents/GitHub/predicting_hospital_expenses')

##### Problema de Negócio: Previsão de Despesas Hospitalares ####
# Para esta análise, usaremos um conjunto de dados simulado de despesas médicas hipotéticas 
# de um conjunto de pacientes espalhados por quatro regiões do Brasil.
# Este conjunto de dados tem 1.338 observações e 7 variáveis.

##### PASSO 1 - Coletando os dados ####
despesas <- read.csv('despesas.csv')
View(despesas)

##### PASSO 2 - Exploring and Preparing Data ####
str(despesas)

##### PASSO 3 - Medidas de Tendência Central da variável gastos ####
summary(despesas$gastos)
