# ejemplo de distribucion binomial
# una pareja tiene 5 hijos 
# y una probabilidad de que sea varon del 0,40

# calcular la probabilidad de que tengan tres hijos varones 

print('La probabilidad de tener tres hijos varones ')
print(dbinom(3,5,0.4))

# la probabilidad de que tengan como mucho tres hijos varones


print('La probabilidad de tener como muchos tres hijos varones ')
print(pbinom(3,5,0.4))


# probabilidad de que tengas desde 0 hasta 5 hijos valor no acumulativo

print('La probabilidad de tener desde 0 hasta 5 hijos varones ')
print(dbinom(seq(0,5),5,0.4))

# probabilidad de que tengas desde 0 hasta 5 hijos valor acumulativo

print('La probabilidad de tener desde 0 hasta 5 hijos varones ')
print(pbinom(seq(0,5),5,0.4))


# ejemplos de distribucion normal

# el numero de preguntas acertadas en un examen sigue una distribución N(120,20)
# calcular la probabilidad de acertar exactamente 160 preguntas

print('La probabilidad de acertar 160 preguntas es   ')
print(dnorm(160,150,20))

# acertar hasta 160
print('La probabilidad de acertar 160 preguntas o menos es   ')
print(pnorm(160,150,20))

# acertar más de 160 preguntas o mas
print('La probabilidad de acertar más de 160 preguntas es')
print(1-pnorm(160,150,20))

# calcular el numero de preguntas que deja una probabilidad del 40% 

print('Número de preguntas que deja una probabilidad acumulada del 40%   ')
print(qnorm(0.4,150,20))

# generacion de numeros aleatorios

print("Numeros aleatorios ejemplo")
print(rnorm(1,150,20))

print("Diez numeros aleatorios ")
print(rnorm(10,150,20))

# representacion de la funcion de densidad de ka distribucion normal

# representacion del histograma y una aproximacon a la funcion de densidad
x<-rnorm(1000,150,20)
xseq<-seq(90,210,0.5)
y<-dnorm(xseq,150,20)
hist(x,xlim=c((150-20*3),(150+20*3)), ylim=c(0,0.020),freq=F,col="lightblue")
lines(xseq,y,col="red")


# ejemplos de distribución de Poisson

# el número de alumnos extrangeros nuevos en la escuela sigue una distribución 
# de Poisson de parametro 2

# obtener una muestra aleatoria de los alumnos que ha podido llegar en los últimos 10 años

print('Muestra aleatoria de alumnos extrangeros recibidos en los últimos 10 años   ')
print(rpois(10,2))

# probabiliadd de que en un año lleguen 4 alumnos  exactamente

print('La probabilidad de que lleguen exactamente 4 alumnos extrangeros   ')
print(dpois(4,2))

# de que lleguen 3 o mas
print('La probabilidad de que lleguen 3 o más   ')
print(1-ppois(3,2))

# represetacion del histograma
hist(x<-rpois(1000,2), breaks=-0.5:8.5, freq=F)

