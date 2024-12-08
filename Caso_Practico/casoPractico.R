# caso práctico del bloque 1

# importación de datos cambiamos de directorio de trabajo
setwd("/Users/germanlopezpineda/Documents/Python/Estadistica/Caso_Practico")

print(getwd()) # comprobamos el directorio en el que estamos

#Cargamos archivo
Jaen<-read.table("sesion05_jaen.txt",header=T,sep="\t",fileEncoding="latin1",stringsAsFactors=F,na.string="NA",dec=",")

# creación de los encabezados
names(Jaen)<-c("CodigoINE","Municipio","Consumo.de.energia.electrica","Consumo.de.agua.invierno","Consumo.de.agua.verano","Residuos.solidos.urbanos.destino","Residuos.solidos.urbanos.cantidad","Poblacion")

# Convertir datos faltantes a NAN, se eliminan los datos erroneos
Jaen[Jaen[,]==".."]='Na'
Jaen[Jaen[,]=="-"]='Na'
Jaen[Jaen[,]==""]='Na'









