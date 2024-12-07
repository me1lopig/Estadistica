# Cálculos correspondientes relación entre autoestima y depresión


# valores de las variables
x<-c(32,23,45,29,12,19,35,38,25,41) # medida de autoestima
y<-c(19,36,5,19,42,39,19,15,23,16) # parámetro de depresión

# diagramas de bigotes de la variable x
boxplot(x)
title("Medida de la autoestima")
print(boxplot.stats(x)$out) 

# diagrama de bigotes de la variable y
boxplot(y)
title("Parámetro de depresión")
print(boxplot.stats(y)$out)


# definición del modelo 
modelo<-lm(y~x)
print(modelo) # datos del modelo 
summary(modelo)

# ploteo del modelo
plot(x,y,xlim=c(0,50),ylim=c(0,50),xlab="Medida de autoestima",ylab="Parámetro de depresión",main="Medida de autoestima-Parámetro de depresión",pch=20)
# ploteo de la recta de regresion
abline(coef=modelo$coefficients,col="darkblue",lty="dashed",lwd=2)

# modelo ANOVA para comprobar correlación
# el p-valor calculado (el que aparece junto al F value), debe de ser menor que los de referencia para confirmar la relación lineal
print("Test ANOVA")
anova<-aov(modelo)
print(summary(anova))

# cálculo del coeficiente de correlación de Pearson
print("Coeficiente de correlación de Pearson")
print(cor(x,y))

# test de correlación
print("Test de correlación")
print(cor.test(x,y))



