# Machine Learning - Regressão
# Usar este script como ponto de partida

#### ANÁLISE EXPLOTARÓRIA DE DADOS ####
# Usada para compreender como os dados estão organizados, distribuidos, as correlações
# entre as variáveis, etc.
# Com este conhecimento, podemos tomar as decisões quais variáveis usaremos, ou se criaremos
# várias versões do modelo para determinadas variáveis


# Diretório de trabalho
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

### Tabela de Contingência de Regiões - A Coluna regiao é do tipo fator
table(despesas$regiao)

### Checar o Relacionamento entre as Variáveis Numéricas: Matriz de Correlação
# Rodar o resumo dos dados para saber quais são numéricas
str(despesas)

# Matriz de Correlação
# O Coeficiente de Correlação é um número que vai de -1 até 1 e o 0 indica que não existe correlação.
# +1 indica uma forte correlação positiva
# -1 indica uma forte correlação negativa
# Nota-se que existe uma diagonal de 1.0, que indica uma forte correlação das variáveis com elas mesmas,
# o que neste momento é uma irrelevante. 
# Exemplificando, a correlação entre bmi x idade está um pouco acima do zero, logo podemos indicar algumas interpretações

cor(despesas[c('idade','bmi','filhos','gastos')])

# Análise sobre a Correlação
# Nenhuma das correlações na matriz é considerada forte, mas existem algumas associações interessantes. 
# Por exemplo, a idade e o bmi (IMC) parecem ter uma correlação positiva fraca, o que significa que 
# com o aumento da idade, a massa corporal tende a aumentar. Há também uma correlação positiva 
# moderada entre a idade e os gastos, além do número de filhos e os gastos. Estas associações implicam 
# que, à media que idade, massa corporal e número de filhos aumenta, o custo esperado do seguro saúde sobe. 

# Visualizar o relacionamento entre as variáveis: Scatterplot
# Nota-se que não existe um relacionamento claro entre as variáveis
pairs(despesas[c('idade','bmi','filhos','gastos')])

pairs(despesas[ ,1:2])

# Scatter plo Matrix
install.packages('psych')
library(psych)

# Este gráfico fornece mais informações sobre o relacionamento entre as variáveis
pairs.panels(despesas[c('idade','bmi','filhos','gastos')])

pairs.panels(despesas[ ,1:2])


















