# Cálculos correspondientes al la relación entre contenido de cal hidráulica y días en las que empieza una fuga


# valores de las variables
x<-c(4,10,80,45,25,60,90) # % de cal hidráulica
y<-c(12,26,180,132,100,200,230) # dias en aparecer filfraciones

# diagramas de bigotes de la variable x
boxplot(x)
title("% de cal hidraulica")
print(boxplot.stats(x)$out) 

# diagrama de bigotes de la variable y
boxplot(y)
title("Días en aparecer fugas")
print(boxplot.stats(y)$out)


# definición del modelo 
modelo<-lm(y~x)
print(modelo) # datos del modelo 
summary(modelo)

# ploteo del modelo
plot(x,y,xlim=c(0,100),ylim=c(0,250),xlab="% cal hidraulica",ylab="Días en aparecer filraciones",main="% cal hidraaulica-Días en aparecer filtracions",pch=20)
# ploteo de la recta de regresion
abline(coef=modelo$coefficients,col="darkblue",lty="dashed",lwd=2)

# modelo ANOVA para comprobar correlación
# el p-valor calculado (el que aparece junto al F value), debe de ser menor que los de referencia para confirmar la relación lineal
anova<-aov(modelo)
print(summary(anova))

