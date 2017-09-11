# Distribuição Normal

# Pasta de trabalho
setwd("~/Dropbox/DSA/PowerBI-DataScience/Cap12")
getwd()

# A distribuição normal é uma das mais importantes distribuições da estatística, conhecida também 
# como Distribuição de Gauss ou Gaussiana.

# Além de descrever uma série de fenômenos físicos e financeiros, possui grande uso na estatística inferencial. 
# É inteiramente descrita por seus parâmetros de média e desvio padrão, ou seja, conhecendo-se estes valores 
# consegue-se determinar qualquer probabilidade em uma distribuição Normal.

# Um interessante uso da Distribuição Normal é que ela serve de aproximação para o cálculo de outras 
# distribuições quando o número de observações for muito grande. 
# Essa importante propriedade provém do Teorema do Limite Central que diz que 
# "toda soma de variáveis aleatórias independentes de média finita e variância limitada é aproximadamente Normal, 
# desde que o número de termos da soma seja suficientemente grande"

# Suponha que as pontuações dos exames de vestibular se enquadrem numa distribuição normal. 
# Além disso, a nota média do teste é 72 e o desvio padrão é 15,2. Qual é a porcentagem de alunos com 
# mais de 84 pontos no exame?

# Aplicamos a função pnorm da distribuição normal com média 72 e desvio padrão 15,2. Uma vez que 
# estamos procurando o percentual de alunos com pontuação superior a 84, estamos interessados na cauda 
# superior da distribuição normal.
?pnorm

# A função tem este formato: pnorm(q, mean=0, sd=1) # Distribuição de Probabilidade Cumulativa 
# Retorna P (X <= q), onde X é uma variável aleatória da distribuição normal especificada.
# A porcentagem de alunos com pontuação de 84 ou mais no vestibular é de 21,5%.
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE) 

# A função rnorm é usada para gerar números aleatórios cuja distribuição é normal. 
# Recebe o tamanho da amostra como entrada e gera muitos números aleatórios. 
# Criamos um histograma para mostrar a distribuição dos números gerados.
hist(rnorm(1000, mean = 3, sd = 0.25))








