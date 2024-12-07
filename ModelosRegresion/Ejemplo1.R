# Cálculos corerspondiente al curos de Matematicas aplicadas y estadistica para el analisis de datos


# valores de kas variables
x<-c(4,6,8,3,7,5,3,3,7,8,5,2,7,8,7,6,9,10,4,5) # notas en matematicas
y<-c(5,4,7,5,9,6,4,3,6,6,4,2,6,10,7,7,9,8,3,6) # notas en física

# definición del modelo 
modelo<-lm(y~x)
print(modelo) # datos del modelo 

# ploteo del modelo
plot(x,y,xlim=c(0,10),ylim=c(0,10),xlab="Matematicas",ylab="Física",main="Matematicas-Física",pch=20)
# ploteo de la recta de regresion
abline(coef=modelo$coefficients,col="darkblue",lty="dashed",lwd=2)


