# caso de correlación con varias variables 

# importación de datos cambiamos de directorio de trabajo

setwd("/Users/germanlopezpineda/Documents/Python/Estadistica/ModelosRegresion")

print(getwd()) # comprobamos el directorio en el que estamos

#Cargamos archivo

load("sesion07_publicidad.RData")
valores<-load("sesion07_publicidad.RData")
print("Variables")
print(valores)


# diagramas de bigotes de la variable ventas
boxplot(ventas)
title("Gasto en ventas")
print(boxplot.stats(ventas)$out) 

# diagrama de bigotes de la variable tv
boxplot(tv)
title("Gasto en tv")
print(boxplot.stats(tv)$out)

# diagrama de bigotes de la variable tv
boxplot(radio)
title("GAsto en radio")
print(boxplot.stats(radio)$out)



# generamos el modelo

modelo<-lm(ventas~tv+radio)

print(modelo)

print(summary(modelo))
anova<-aov(modelo)
print("Contraste ANOVA")
print(anova)


x<-seq(range(tv)[1],range(tv)[2],length.out=10)
y<-seq(range(radio)[1],range(radio)[2],length.out=10)
z<-function(x,y) 2.71+0.05*x+0.16*y

plano<-function(x,y) 2.71+0.05*x+0.16*y
z<-outer(x,y,FUN=plano)

superficie<-persp(x,y,z,phi=20,theta=20,ticktype="detailed",xlab="tv",ylab="radio",zlab="ventas",col="lightgreen")

observaciones<-trans3d(tv,radio,ventas,superficie)
points(observaciones,col="red",pch=16)

