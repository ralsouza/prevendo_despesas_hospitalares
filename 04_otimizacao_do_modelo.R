# Diretório de trabalho
setwd('/Users/ls_rafael/Documents/GitHub/prevendo_despesas_hospitalares')

# Passo 5 - Otimização do Desempenho do Modelo

# Adicionando uma variável com o dobro do valor das idades, pois 
# remover ou adicionar variáveis geram algum impacto no modelo, 
# pois reforça as relacões matemáticas
# Alguns estudos comprovam que dobrar o valor de uma variável, 
# causa um impacto positivo na criação do modelo se a variável 
# possir uma forte significância para o modelo
despesas$idade2 <- despesas$idade^2

# Adição de um indicadore de BMI >= 30 
despesas$bmi30 <- ifelse(despesas$bmi >= 30, 1, 0)

head(despesas)

# Criando o modelo final
modelo_v2 <- lm(gastos ~ idade + idade2 + filhos + bmi + sexo + bmi30 * fumante + regiao, data = despesas)

# A versão 1 do modelo atingiu 75,09% de precisão, com a otimização o nível aumentou para 86,39%
summary(modelo_v2)

# Dados de teste
despesas_teste_v2 <- read.csv('despesas-teste.csv')
head(despesas_teste_v2)
predicao3 <- predict(modelo, despesas_teste_v2)
View(predicao3)

# Após isso é recomendável executar técnicas de Feature Selection (Engenharia de Atributos),
# escolhendo as melhores variáveis para o modelo. A ideia é fazer algumas vezes até atingir um nível 
# satisfatório. A métrica a ser atingida, deve ser definida antes de iniciar o projeto