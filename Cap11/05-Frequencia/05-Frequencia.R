# Tabela de Frequência

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("D:/Dropbox/DSA/PowerBI-DataScience/Cap11/05-Frequencia")
getwd()

# Carregando e sumarizando os dados
dados <- read.table("usuarios.csv", dec = ".", sep = ",", h = T, fileEncoding = "windows-1252")
names(dados)
str(dados)
summary(dados$salario)

# Tabela de Frequências Absolutas
freq <- table(dados$grau_instrucao) 
freq

# Tabela de Frequências Relativas
freq_rel <- prop.table(freq) 
freq_rel

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel) 
p_freq_rel

# Adiciona linhas de total
freq <- c(freq, sum(freq)) 
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[4] <- "Total"

# Tabela final
tabela_final <- cbind(freq, 
                      freq_rel = round(freq_rel, digits = 2), 
                      p_freq_rel = round(p_freq_rel, digits = 2))
tabela_final



