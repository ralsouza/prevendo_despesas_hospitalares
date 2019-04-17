# Machine Learning - Regressão
# Usar este script como ponto de partida

# Diretório de trabalho
setwd('/Users/ls_rafael/Documents/GitHub/prevendo_despesas_hospitalares')

#### PASSO 3 - TREINANDO O MODELO ####
?lm
modelo <- lm(gastos ~ idade + filhos + bmi + sexo + fumante + regiao, data = despesas)
