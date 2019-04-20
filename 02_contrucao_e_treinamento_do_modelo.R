# Machine Learning - Regressão

# Diretório de trabalho
setwd('/Users/ls_rafael/Documents/GitHub/prevendo_despesas_hospitalares')

#### PASSO 3 - TREINANDO O MODELO ####
# A regressão fornece uma função que relaciona as variáveis
?lm
#Sintaxe da regressão linear multipla
# lm(var alvo ~ var preditora 1 + var preditora n ..., data = dataset)
modelo <- lm(gastos ~ idade + filhos + bmi + sexo + fumante + regiao, data = despesas)

# Regressão linear simples, com uma variável preditora
# modelo <- lm(gastos ~ idade, data = despesas)

# Formato simplificado
modelo <- lm(gastos ~ ., data = despesas)

# Visalizando os coeficientes
modelo
