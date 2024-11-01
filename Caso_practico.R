# caso practico del curso

# descarga de los datos
load('./Caso_Practico/sesion02_clientes.RData')

# dimension de los datos en bruto
print("Dimension en bruto ")
print(dim(clientes))

# dimensión de los datos despues de eliminarles los datos NAN
datos2<-na.omit(clientes)
print('Dimension despues de la eliminación de los datos NAN')
print(dim(datos2))


# estudio de la variabla gasto en la primera visitq a la web

gasto_primera_visita<-datos2$GASTO

print('El gasto medio en la primera visita a la web es ')
print(mean(gasto_primera_visita))

# contraste de hipotesis de considerar la media de gasto en la primera visita 
# es de 10 €

print('Resultados del test considerando la media de gasto como 10 €')
salida<-(t.test(datos2$GASTO,alternative = "two.sided",mu=10,conf.level = 0.95))

# comprobacion del test

print('Valor de p-value')
print(salida$p.value)

print('Valor del nivel de significacion')
print(1-0.95)

print('Intervalo de confianza')
print(salida$conf.int)

if(salida$p.value>(1-0.95))
{
  print('Se satisface la hipótesis Ho')
} else
{
  print('Se satisface la hipótesis H1')
}


# vamos a estudiar el % de clientes que compra en la primera visita 

actitud_primera_visita<-datos2$COMPRA1
print('Tabla de frecuencias ')
tabla<-table(actitud_primera_visita)
print(tabla)

print('Frecuencia de compras ')
print(tabla[2]/(tabla[1]+tabla[2]))

# se plantea si ese % se puede mantener para toda la población no solo para la muestra

print('Resultado del test ')
salida2<-prop.test(11,120,conf.level = 0.95)
print(salida2)

# comprobacion del test

print('Valor de p-value')
print(salida2$p.value)

print('Valor del nivel de significacion')
print(1-0.95)

print('Intervalo de confianza')
print(salida2$conf.int)

if(salida2$p.value>(0.09))
{
  print('Se satisface la hipótesis Ho')
} else
{
  print('Se satisface la hipótesis H1')
}


# para el caso de que consideramos es comprobar si el 15% de los clientes compra 
# en su pfimera visita

print('Resultado del test ')
salida2<-prop.test(11,120,p=0.15,conf.level = 0.95)
print(salida2)

# comprobacion del test

print('Valor de p-value')
print(salida2$p.value)

print('Valor del nivel de significacion')
print(1-0.95)

print('Intervalo de confianza')
print(salida2$conf.int)

if(salida2$p.value>(0.09))
{
  print('Se satisface la hipótesis Ho')
} else
{
  print('Se satisface la hipótesis H1')
}



# Comparacion de dos muestras
# se compaa el gasto de la primera entrada con el gato de la segunda entrada
# con un nivel de confianza del 99%

# se estudia la similitud de las varianzas y de las medias

print("Comparación de las varianzas ")
est_varianza<-var.test(datos2$GASTO,datos2$GASTO2,ratio=1,alternative = "two.sided",conf.level = 0.99)
print(est_varianza)

# comparacion de las medias
print("Comparacion de las medias")
est_media<-t.test(datos2$GASTO,datos2$GASTO2,mu=0,alternative = "two.sided",conf.level = 0.99)
print(est_media)


# comparamos las proprciones de dos poblaciones

print("Reparto de compras en la primera entrada por género")
gastos_genero<-(table(datos2$COMPRA1,datos2$SEXO))
print(gastos_genero)

# se analiza si la proporción de compras en la primara visita es la misma por genero
x<-c(gastos_genero[2,1],gastos_genero[2,2])
n<-c(gastos_genero[1,1]+gastos_genero[2,1],gastos_genero[1,2]+gastos_genero[2,2])

salida_cpm<-prop.test(x,n,alternative = "two.sided",conf.level = 0.95)
print("Salida de resultados de comparación")
print(salida_cpm)

