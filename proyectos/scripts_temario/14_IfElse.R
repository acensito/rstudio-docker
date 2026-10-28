# Script 14_IfElse.R

# En función del valor de n se mostrará un mensaje u otro
n=55; 
if (n%%2==0) {
  print(paste("El",n,"es par."))
} else {
  print(paste("El",n,"es impar."))
}

#Aquí podemos ver como se anida la estructura if else
n=55; 
if (is.na(n)) {
  print("La variable tiene un valor nulo.")
} else if (is.numeric(n)) {
  print("La variable tiene un valor numérico.")
} else if (is.character(n)) {
  print("La variable tiene contiene una cadena.")
} else {
  print("No se nada de la variable.")
}

# Ahora veamos un ejemplo con la sentencia if-else
edad <- c(15, 30, 24, 50)
resultado <- ifelse(edad >= 18, "Mayor", "Menor")
print(resultado)
