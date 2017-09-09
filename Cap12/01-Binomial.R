# Distribuição Binomial

# Pasta de trabalho
setwd("~/Dropbox/DSA/PowerBI-DataScience/Cap12")
getwd()

# Funções de Distribuição Binomial no R
# dbinom(x, size, prob)
# pbinom(x, size, prob)
# qbinom(p, size, prob)
# rbinom(n, size, prob)

# x é um vetor de números.
# p é um vetor de probabilidades.
# n é o número de observações.
# size é o número de tentativas.
# prob probabilidade de sucesso em cada tentativa.

# A distribuição binomial é uma distribuição de probabilidade discreta. 
# Ela descreve o resultado de n experimentos independentes em um experimento. 
# Cada ensaio é suposto ter apenas dois resultados, seja sucesso ou fracasso.

# Suponha que haja 12 perguntas de múltipla escolha em um exame. 
# Cada pergunta tem 5 respostas possíveis, e apenas 1 delas está correta. 
# Encontre a probabilidade de ter 3 ou menos respostas corretas se um aluno tentar responder a todas 
# as perguntas aleatoriamente.

# Uma vez que apenas uma entre cinco respostas possíveis está correta, a probabilidade de responder a 
# uma pergunta corretamente por aleatoriedade é 1/5 = 0,2. Podemos encontrar a probabilidade de ter 
# exatamente 3 respostas corretas por tentativas aleatórias como segue.
help(Binomial)
?dbinom
dbinom(3, size = 12, prob = 0.2) 

# Caso você queira visualizar as probabilidades para 0, 1, 2 e 3 questões, podemos fazer assim:

# Definir um vetor com os valores que serão considerados (valores de x)
x = c(0,1,2,3)

# Atribuir o resultado da função dbinom() a um objeto. Perceba que passamos o vetor x como parâmetro
resultado <- dbinom(x = x, size = 12, prob = 0.2) 

# Gravar tudo em um dataframe
df <- data.frame(x, resultado)

# Imprimir em formato de tabela
install.packages("knitr")
library(knitr)
print(kable(df, digits = 3, align = c("r","c"), caption = "Probabilidades Binomiais"))

# Plot
plot(df$x, 
     df$resultado, 
     pch = 16, 
     col = "darkblue", 
     xlab = "Número de Questões", 
     ylab = "Probabilidade P(x)", 
     bty = "n") 




