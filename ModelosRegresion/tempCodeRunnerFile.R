# caso de correlación con varias variables 

# importación de datos cambiamos de directorio

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