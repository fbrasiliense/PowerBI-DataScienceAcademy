# Distribuição Poisson

# Pasta de trabalho
setwd("~/Dropbox/DSA/PowerBI-DataScience/Cap12")
getwd()

# A distribuição de Poisson é a distribuição de probabilidade de ocorrências de eventos independentes em um 
# intervalo.

# Se há 12 carros cruzando uma ponte por minuto em média, encontre a probabilidade de ter 
# dezessete ou mais carros cruzando a ponte em um minuto específico.

# A probabilidade de ter 17 ou mais carros cruzando a ponte em um minuto está na parte superior da cauda 
# da função de densidade de probabilidade. Se há doze carros cruzando uma ponte por minuto em média, 
# a probabilidade de ter dezessete ou mais carros que cruzam a ponte em um minuto particular é 10.1%.
?ppois
ppois(16, lambda = 12, lower = FALSE)

# A probabilidade de ter dezesseis ou menos carros cruzando a ponte em um minuto específico é dada pela 
# função ppois.
ppois(16, lambda = 12)   
