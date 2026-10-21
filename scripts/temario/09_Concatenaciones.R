# Script 09_Concatenaciones.R

# Definición vectores
numeros <- c(1, 2, 3, 4, 5)                # numérico
frutas <- c("manzana", "banana", "cereza") # cadena
acierto <- c(TRUE, FALSE, TRUE, TRUE)      # lógico
mixto <- c(5, TRUE, "Aprobado", 6.2)       # mixto, coerción a cadena 
mixto2 <- c(5, 7.9, 0, TRUE)               # mixto, coerción a numero

# Concatenación de secuencias o vectores
impar_par <- c(seq(1,10,2),seq(2,10,2))
cosas <- c(c("tomate","lechuga"),c("mesa","silla"))

# Acceso a elementos
print(frutas[c(1,3)])
comida <- c(frutas,cosas[c(1,2)])
print(comida)
numeros[c(1,3,5)]+1 

# Definición de dimensiones 
array2x4 <- array(c(23,56,45,23,23,53,63,67), dim = c(2, 4))
print(array2x4)

