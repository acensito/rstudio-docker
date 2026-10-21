# Recuperemos el ejercicio resuelto del apartado 1.5.1
# Donde queríamos sustituir los valores perdidos por la 
# media de los valores adyacentes, se proponía este algoritmo
numeros <- c(4, 3, NA, 21, NA, 4, 3, 6, NA, 8)
posNA <- which(is.na(numeros))
numeros[posNA] <- (numeros[posNA-1]+numeros[posNA+1])/2
print(numeros)

# Desgraciadamente este algoritmo no funcionará cuando los valores NA
# se encuentren en los extremos del vector ni cuando se encuentren varios NA
# seguidos y mucho menos cuando se combinen ambas situaciones. Aún nos faltan
# herramientas para resolver este problema, lo veremos cuando conozcamos las
# estructuras de control.


# Vamos a proponer otra solución que si tenga en cuenta los casos especiales
# Primero definamos varios vectores de números que cubran los casos especiales
numeros1 <- c(5,6,7,8)
numeros2 <- c(4, 3, NA, 21, NA, 4, 3, 6, NA, 8)
numeros3 <- c(NA,NA,NA,5,6,NA,5,NA,7,8,NA,NA)

# Primero vamos a definir una función que mira si un vector tiene valores NA
tieneNA <- function(...) {
  numeros <- c(...)
  if (length(which(is.na(numeros))) > 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
tieneNA(numeros1)
tieneNA(numeros2)

# Ahora vamos a diseñar una función que calcula la media de dos números, 
# pero contemplará casos especiales, si uno de los números es NA devolverá 
# el otro numero y si los dos números son NA devolverá NA
mediaNA <- function (a,b) {
  if (is.na(a)&&is.na(b)) {
    return(NA)
  } else if (!is.na(a)&&is.na(b)) {
    return(a)
  } else if (is.na(a)&&!is.na(b)) {
    return(b)
  } else {
    return((a+b)/2)
  }
}
mediaNA(NA,5)
mediaNA(3,NA)
mediaNA(NA,NA)
mediaNA(3,5)

# Ya estamos preparados, ahora vamos a diseñar un algoritmo que haciendo
# uso de las funciones anteriores realice la tarea pedida pero teniendo
# en cuenta los casos especiales
calcularNA <- function(...) {
  numeros <- c(...)
  # Repetiremos el proceso hasta que no queden NA, los valores se irán
  # propagando sobre los NA consecutivos hasta que desaparezcan
  while(tieneNA(numeros)) {
    posNA <- which(is.na(numeros))
    for(n in posNA) {
      if (n==1) { #Si no tiene vecino por la izquierda
        numeros[n] <- mediaNA(numeros[n+1],numeros[n+1])
      } else if (n==length(numeros)) { #Si no tiene vecino por la derecha
        numeros[n] <- mediaNA(numeros[n-1],numeros[n-1])
      } else { #Si tiene dos vecinos
        numeros[n] <- mediaNA(numeros[n-1],numeros[n+1])
      }
    }
  }
  return(numeros)
}
calcularNA(numeros1)
calcularNA(numeros2)
calcularNA(numeros3)

