# Script 10_Vectores.R

# Vector unidimensional de enteros formado por tres secuencias, los enteros
# del uno al cinco, dos dieces y por último los enteros del cinco al uno
v1 <- array(c(1:5, rep(10, 2), 5:1))
print(v1)

# Vector de dos dimensiones construido a partir del vector anterior. 
v2 <- array(v1, dim=c(2, 6))
print(v2)

# Ponemos los elementos 6 y 7 de v1 a 0
v1[c(6,7)] <- 0 
print(v1)

# Damos el valor 100 al elemento de la fila 2, columna 5
v2[2,5] <- 100 
print(v2)

# Ponemos las columnas 3 y 4 de v2 a 0
v2[,3:4] <- 0 
print(v2)

# Multiplicamos cada elemento de v1 por un entero
v3 <- v1 * 2
print(v3)

# Restamos un vector a otro, elemento a elemento
v3 <- v3 - v1
print(v3)

# Concatenación de vectores
v3 <- c(v1,v3)
print(v3)

# Calculamos la longitud del vector v3 y la mostramos con un texto por consola
print(paste("La longitud del vector es: ",length((v3))))

# Funciones de agregación
print(paste("La media de v1 es",mean(v1)))
print(paste("La suma de v1 es",sum(v1)))
print(paste("La desviación estándar de v1 es",sd(v1)))
print(paste("El máximo de v1 es",max(v1)))
print(paste("El mínimo de v1 es",min(v1)))

# Ordenamos un vector con la función sort
v1 <- c(20,30,10,40)
v2 <- sort(v1)
print("vector original:")
print(v1)
print("vector ordenado:")
print(v2)

# Ordenamos un vector con la función order
v3 <- order(v1)
print("índice del orden del vector original")
print(v3)
print("mostrar vector ordenándolo con el índice")
print(v1[v3])

# Invertimos el orden del vector v3
v4 <- rev(v2)

