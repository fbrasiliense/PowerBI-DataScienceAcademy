# Plots
# Graficos no R - BarPlot, Pie Chart, Line Chart, Scatter Plot, Histograma e Treemap
# http://www.r-graph-gallery.com/

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("D:/Dropbox/DSA/PowerBI-DataScience/Cap11/06-Plots")
getwd()

# Dados
my_vector = c(3,12,5,18,45)
names(my_vector) = c("A","B","C","D","E")
my_vector

# Barplot
barplot(my_vector)
barplot(my_vector, col = c(1,2,3,4,5) )
png("barplot.png" , width = 480, height = 480 )
barplot(my_vector, col = rgb(0.5,0.1,0.6,0.6), xlab = "Categorias", ylab = "Valores", main = "Barplot em R" , ylim = c(0,60) )
dev.off()

# Ggplot2 
library(ggplot2)
head(mtcars)

# Barplot
ggplot(mtcars, aes(x=as.factor(cyl) )) + 
  geom_bar()

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +  
  geom_bar( ) +
  scale_fill_manual(values = c("red", "green", "blue") )

# Criando dados fake
data = data.frame(group = c("A ","B ","C ","D ") , value=c(33,62,56,67) )

# Barplot
ggplot(data, aes(x = group, y = value ,fill = group )) + 
  geom_bar(width = 0.85, stat="identity")

# Pie Chart
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main = "Beer per Country")


# Pie Chart com percentuais
slices <- c(10, 12, 4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) 
lbls <- paste(lbls,"%",sep="") 
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Beer per Country")


# Pie Chart 3D
install.packages("plotrix")
library(plotrix)

slices <- c(10, 12, 4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie3D(slices,labels=lbls,explode=0.1,
      main="Beer per Country")


# Line

# Dados
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

# Plot
plot(cars, type="o", col="blue", ylim=c(0,12))

lines(trucks, type="o", pch=22, lty=2, col="red")

title(main="Autos", col.main="red", font.main=4)


# Boxplot 
library(ggplot2)
head(mpg)

# Plot
ggplot(mpg, aes(x=reorder(class, hwy), y=hwy, fill=class)) + 
  geom_boxplot() +
  xlab("class") +
  theme(legend.position="none")


# Scatter Plot
library(ggplot2)
data = data.frame(cond = rep(c("condition_1", "condition_2"), each=10), 
                  my_x = 1:100 + rnorm(100,sd=9), my_y = 1:100 + rnorm(100,sd=16) )

ggplot(data, aes(x=my_x, y=my_y)) + 
  geom_point(shape=1)

# Adiciona linha de regressao
ggplot(data, aes(x=my_x, y=my_y)) +    
  geom_point(shape=1) +  
  geom_smooth(method = lm , color="red", se=FALSE) 

# Adiciona smooth
ggplot(data, aes(x=my_x, y=my_y)) +    
  geom_point(shape=1) +  
  geom_smooth(method=lm , color="red", se=TRUE)  


# Treemap
install.packages("treemap")
library(treemap)

# Dados
group=c(rep("group-1",4),rep("group-2",2),rep("group-3",3))
subgroup=paste("subgroup" , c(1,2,3,4,1,2,1,2,3), sep="-")
value=c(13,5,22,12,11,7,3,1,23)
data=data.frame(group,subgroup,value)

# Labels
treemap(data, index=c("group","subgroup"),     
        vSize="value", type="index",
        fontsize.labels=c(15,12),               
        fontcolor.labels=c("white","orange"),    
        fontface.labels=c(2,1),                 
        bg.labels=c("transparent"),             
        align.labels=list(
          c("center", "center"), 
          c("right", "bottom")),                                  
        overlap.labels=0.5,           
        inflate.labels=F,                     
)


# Customizando
treemap(data, index=c("group","subgroup"), vSize="value", type="index",
        border.col=c("black","white"),          
        border.lwds=c(7,2)                       
)


# Histograma
x <- mtcars$mpg 

h <- hist(x, breaks = 10, col="red", xlab = "Miles Per Gallon", 
          main = "Histograma com Curva de Distribuicao") 

xfit <- seq(min(x),max(x),length=40) 
yfit <- dnorm(xfit,mean=mean(x),sd=sd(x)) 
yfit <- yfit*diff(h$mids[1:2])*length(x) 
lines(xfit, yfit, col="blue", lwd=2)

# Usando o ggplot2
library(ggplot2)

# dataset
data = data.frame(value = rnorm(10000))

# Custom Binning. I can just give the size of the bin
ggplot(data, aes(x=value)) + 
  geom_histogram(binwidth = 0.05)

# Uniform color
ggplot(data, aes(x=value)) + 
  geom_histogram(binwidth = 0.2, color="white", fill=rgb(0.2,0.7,0.1,0.4) ) 

# Proportional color
ggplot(data, aes(x=value)) + 
  geom_histogram(binwidth = 0.2, aes(fill = ..count..) )

