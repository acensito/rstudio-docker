# Script 13_Dataframes.R

# Definimos los vectores que compondrán el dataframe
nombres <- c("Ana", "Luis", "Marta", "Juan")
edades <- c(23, 34, 28, 45)
ocupaciones <- c("Ingeniera", "Doctor", "Abogada", "Profesor")

# Creamos dataframe, dándole nombre a las columnas
socios <- data.frame(Nombre = nombres, Edad = edades, Ocupación = ocupaciones)
print(socios)

# Acceso a datos del dataframe, en este caso a la fila dos y columna tres.
elemento <- socios[2, 3] 
print(elemento)

# Accedemos a una columna específica, en este caso la columna ‘Nombre’.
nombres <- socios$Nombre
print(nombres)

# Accedemos a una fila específica, indicamos la primera fila y nada en la columna, 
# de esta forma accedemos a todas las columnas.
primera_fila <- socios[1, ] 

# Añadimos columnas al dataframe
socios$Salario <- c(50000, 60000, 70000, 80000) 
socios$SalarioNeto <- socios$Salario-(0.21*socios$Salario)
print(socios)

# Podemos filtrar los registros que cumplen una determinada condición
socios_mayores_30 <- subset(socios, Edad > 30)
print(socios_mayores_30)

# Ordenar los datos del dataframe
socios_ordenado <- socios[order(socios$Edad), ]
print(socios_ordenado)

# Otras funciones de interés
str(socios)     # Ver la estructura del dataframe, columnas, tipos de datos, etc.
dim(socios)     # Ver las dimensiones del dataframe, número de filas y columnas
nrow(socios)    # Número de filas
ncol(socios)    # Número de columnas

summary(socios) # Ver un resumen estadístico del dataframe
head(socios)    # Ver las primeras filas
tail(socios)    # Ver las últimas filas

names(socios)   # Ver los nombres de las columnas

