# carga de los datos a procesar
data("airquality")
print("Dimensiones de la tabla de datos")
print(dim(airquality))

# nombres de las variables
print('Variables')
print(names(airquality))

# creacion de una varable cualitativa y la añadimos a la tabla de datos
# el repart es aleatorio
weather<-sample(c("sunny","rainy","cloudy"),size=153,replace = T)

# lo añadimos a la tabla
airquality<-cbind(airquality,weather)

# pasamos la vaiable a factor
airquality$Month<-factor(airquality$Month)

print('Resumen de estadísticos de las primeras cuatro columnas')
print(summary(airquality[,1:4]))

print('Con la funcion fivenum')
print(fivenum(airquality$Ozone))

# medias de las cuatro primeras variables 
print('Medias de las primeras cuatro variables')
print(sapply(airquality[,1:4],FUN=mean,na.rm=T))

# desviaciones típicas  de las cuatro primeras variables 
print('Desviaciones típicas de las primeras cuatro variables')
print(sapply(airquality[,1:4],FUN=sd,na.rm=T))

# generacion de cuantiles de la variables Ozone

print('Mediana')
print(median(airquality$Ozone,na.rm=T))

print('Quantiles')
print(quantile(airquality$Ozone,probs = seq(0.05,0.95,0.10),na.rm = T))

# tablas de frecuencias de algunas variables 

# frecuencias absolutas
weather.frec.abs<-table(airquality$weather)
print('Frecuencias absolutas de la variable weather')
print(weather.frec.abs)

# tabla de frecuencias relativas
weather.frec.rel<-prop.table(weather.frec.abs)
print('Tabla de frecueancias relativas')
print(weather.frec.rel)


# calculo de la moda
moda.weather<-weather.frec.abs[which.max(weather.frec.abs)]
print('calculo de la moda')
print(moda.weather)

print('Valor más repetido')
print(names(moda.weather))


# graficos descriptivos

# representacion de la variable weather con un grafico de barras con las frecuencias 
# absolutas de se han calculado antes

barplot(weather.frec.abs,col = c('grey','blue','yellow'),xlab="weather",ylab="Número de dias",ylim=c(0,60))
title(main="Diagrama de barras de la variable weather")


# temperatura media de cada mes y representacion en un diagrama de barras
Temp.medias.meses<-tapply(X=airquality$Temp , INDEX=airquality$Month, FUN=mean)
Temp.medias.meses<-round(Temp.medias.meses,1)
print(Temp.medias.meses)
barplot(Temp.medias.meses,ylim=c(0,100),col = "orange")
title("Temperaturas medias por meses (ºF)")


# diagramas de sectores

etiquetas<-paste(names(weather.frec.rel),round(weather.frec.rel*100,1),"%")
print(etiquetas)
pie(weather.frec.rel,labels=etiquetas,col=c("grey","blue","yellow"))


# Histogramas

par(mfrow=c(2,2)) # crea una matriz de graficos
hist(airquality$Ozone)
hist(airquality$Solar.R)
hist(airquality$Wind)
hist(airquality$Temp)
par(mfrow=c(1,1)) # a partir de aqui solo un grafico por ventana


# funcion para el calculo del coeficiente de curtosis solo

coeficientes<-sapply(X<-airquality[,1:4], skewness)
print("Coeficientes de asimetría")
print(coeficientes)

# representacion de la variable TEMP
m=mean(airquality$Temp)
s=sd(airquality$Temp)
hist(airquality$Temp,prob=T,main="Temperatura")
curve(dnorm(x,mean=m,sd=s),col="darkblue",lwd=2,add=TRUE)

# representacion de la variable wind
m=mean(airquality$Wind)
s=sd(airquality$Wind)
hist(airquality$Wind,prob=T,main="Viento")
curve(dnorm(x,mean=m,sd=s),col="darkblue",lwd=2,add=TRUE)


# diagramas de cajas y bigotes

boxplot(airquality$Ozone,col = "lightblue")
title("Grafico de bigotes de la variable Ozono")





