# ejemplos de contraste de hipótesis

# intervalo de confianza para la media de una población con la distribucion  t de Student
# en este caso no se entra en detalles de analisis de resultados

x<-c(174,182,182,165,169,171,160,178,179,158,159,163,167,173,175,165)
print("Los valores de la serie son:")
print(x)

print("La media de los datos es ")
print (mean(x))
print("El numero de datos es ")
print(length(x))
print("Cuasi desviación típica")
print(sqrt(var(x)))
print("Valor crítico de la distribución t-student, para un valor de significacion de 0.05")
print (qt(0.05/2,df=length(x)-1))

# t-test para los datos
print("t-test para los valores de la serie")
print(t.test(x,conf.level = 0.95))

