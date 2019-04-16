# Machine Learning - Regressão

# Work Directory
setwd('/Users/ls_rafael/Documents/GitHub/prevendo_despesas_hospitalares')

##### Problema de Negócio: Previsão de Despesas Hospitalares ####
# Para esta análise, usaremos um conjunto de dados simulado de despesas médicas hipotéticas 
# de um conjunto de pacientes espalhados por quatro regiões do Brasil.
# Este conjunto de dados tem 1.338 observações e 7 variáveis.


##### PASSO 1 - Coletando os Dados ####
despesas <- read.csv('despesas.csv')
View(despesas)

##### PASSO 2 - Explorando e Preparando os Dados ####
# Pela diferença entre a Mediana e a Média, não temos uma distribuição normal
str(despesas)

### Medidas de Tendência Central da Variável Gastos 
# As variáveis idade, sexo, bmi, filhos, fumante e região são variáveis preditoras, ou seja, variáveis independentes
# A variável gastos é variável alvo, uma variável dependente, ou seja, o valor do gasto médico depende dos valores nas outras variáveis 
summary(despesas$gastos)

### Analisando com o Histograma
# Verificamos que existem frequencias de gastos altos até 10.000, a partir disso há uma redução acentuada até 35.000
# Em torno de 35.000 temos um pequeno aumento nos gastos que reduzem novamente até 60.000 
hist(despesas$gastos, main = 'Histograma', xlab = 'Gastos')

