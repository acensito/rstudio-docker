# Script 11_Funcion_Which.R

numeros <- c(4, 3, NA, 21, NA, 4, 3, 6, NA, 8)

# Ejercicio 1: Sustituir los valores perdidos por ceros
# Usamos which() para encontrar las posiciones de los valores perdidos
posNA <- which(is.na(numeros))
print(posNA)
# Reemplazamos los valores perdidos por cero
numeros[posNA] <- 0
print(numeros)

# Ejercicio 2: Sustituir los valores perdidos por la media del resto
# de valores del vector.
numeros <- c(4, 3, NA, 21, NA, 4, 3, 6, NA, 8)
posNA <- which(is.na(numeros))
numeros[posNA] <- mean(numeros, na.rm = TRUE)
print(numeros)

# Ejercicio Resuelto 1: Queremos sustituir los valores perdidos por la 
# media de los valores adyacentes 
numeros <- c(4, 3, NA, 21, NA, 4, 3, 6, NA, 8)
posNA <- which(is.na(numeros))
numeros[posNA] <- (numeros[posNA-1]+numeros[posNA+1])/2
print(numeros)
# Desgraciadamente este algoritmo no funcionará cuando los valores NA
# se encuentren en los extremos del vector ni cuando se encuentren varios NA
# seguidos y mucho menos cuando se combinen ambas situaciones. Aún nos faltan
# herramientas para resolver este problema, lo veremos cuando conozcamos las
# estructuras de control.

#Ejercicio Resuelto 2: sea un vector con el alfabeto, añadir la letra ñ a 
#continuación de la letra n
alfabeto <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", 
              "j", "k", "l", "m", "n", "o", "p", "q", "r", 
              "s", "t", "u", "v", "w", "x", "y", "z")
print(alfabeto)
posN <- which(alfabeto == "n")
alfabeto <- c(alfabeto[1:posN],"ñ",alfabeto[(posN+1):length(alfabeto)])
print (alfabeto)

