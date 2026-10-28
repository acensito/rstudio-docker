# Script 07_Estructuras_Datos.R

# Array unidimensional de números enteros construido por la 
# concatenación de números, utilizando la función c()
vector1 <- array(c(1, 1, 2, 3, 5, 8, 13))

print(vector1)

# Array de tres dimensiones 2x2x2 que contiene los números
# del 1 al 8. También podemos utilizar la función c() para 
# definir las dimensiones del vector.
vector2 <- array(1:8, dim = c(2, 2, 2))
print(vector2)

# Matriz de dos filas y tres columnas, que contiene los números 
# del 1 al 12 de de dos en dos
matriz <- matrix(seq(1, 12, 2), nrow = 2, ncol = 3)
print(matriz)

# Lista de objetos de distinta naturaleza, este tipo de 
# estructura permite nombrar sus elementos.
lista <- list( array = vector1,
               char = c("a", "b", "c"),
               matrix = matriz )
print(lista)

# Dataframe de nombres y edades, de tres filas y tres columnas, la primera 
# columna será un identificador (id) que irá de 1 a 3, la segunda serán los 
# nombres (name) y la tercera serán las edades
dataframe <- data.frame(id = 1:3,
                        name = c("Tolomeo", "Rufina", "Segismundo"),
                        age = c(45, 60, 52))
print(dataframe)
