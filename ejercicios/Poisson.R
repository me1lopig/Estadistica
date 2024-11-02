
print(" Si un banco recibe en promedio 6 cheques sin fondo por día, ¿cuáles son las probabilidades de que
 reciba: ")

# a)
print("a) que reciba en un dia 6 cheques")
print(dpois(4,6))

# b)
print("b) que reciba en un dia 6 cheques")
print(dpois(10,12))


print("En la inspección de hojalata producida por un proceso electrolítico continuo, se identifican 0.2
imperfecciones en promedio por minuto. Determine las probabilidades de identificar")

# a)
print("a) una imperfección en 3 minutos")
print(dpois(1,3*0.2))

# b)
print("b) al menos dos imperfecciones en 5 minutos")
print(1-ppois(1,5*0.2))

# c)
print("c) cuando más una imperfección en 15 minutos")
print(ppois(1,15*0.2))

