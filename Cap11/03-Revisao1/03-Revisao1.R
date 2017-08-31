# Revisão 1

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("D:/Dropbox/DSA/PowerBI-DataScience/Cap11/03-Revisao1")
getwd()

# Carregando o dataset
amostras <- read.csv("amostras.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(amostras)
str(amostras)
summary(amostras$AmostraA)
summary(amostras$AmostraB)

# Média
# A média de uma variável de observação é uma medida numérica da localização central dos valores dos dados. 
# É a soma de seus valores de dados divididos pela contagem de dados.

# Mediana
# A mediana de uma variável é o valor no meio quando os dados são classificados em ordem crescente. 
# É uma medida ordinal da localização central dos valores de dados.

# Variância
# A variância é uma medida numérica de como os valores dos dados estão dispersos em torno da média.

# Desvio Padrão
# O desvio padrão de uma variável é a raiz quadrada de sua variância.


# Exemplo 1 - Comparar as amostras dos preços de ações
# Que medidas usar?
# Média, Desvio Padrão e CV
mean(amostras$AmostraA)
mean(amostras$AmostraB)
sd(amostras$AmostraA)
sd(amostras$AmostraB)
cvA <- sd(amostras$AmostraA) / mean(amostras$AmostraA) * 100
cvB <- sd(amostras$AmostraB) / mean(amostras$AmostraA) * 100
cvA
cvB


# Exemplo 2 - Comparar as amostras de produtos fabricados
# Que medidas usar?
# Variância
var(amostras$AmostraA)
var(amostras$AmostraB)


# Exemplo 3 - Comparar as amostras na produção de camisas
# Que medidas usar?
# Moda
calculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(amostras$AmostraA)
calculaModa(amostras$AmostraB)


# Exemplo 4 - Comparar as amostras das notas de alunos
# Que medidas usar?
# Mediana
median(amostras$AmostraA)
median(amostras$AmostraB)








