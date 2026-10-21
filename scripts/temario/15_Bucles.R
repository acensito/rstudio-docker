# Script 15_Bucles.R

# En este ejercicio ejecutamos el bucle for para cada elemento
# del vector nombres, generando un mensaje por pantalla
nombres <- c("Ana", "Luis", "Marta", "Juan")
for (nombre in nombres) {
  print(paste("Hola", nombre))
}

# En este bucle buscaremos un divisor de un número, el bucle
# termina cuando encuentra un divisor.
divisor <- 2; 
numero <- 221;
while ( numero%%divisor !=0) {
  divisor <- divisor+1
} 
print(paste("El", numero, "es divisible por", divisor))

# Vamos a realizar la misma tarea pero con el bucre repeat
divisor <- 2
numero <- 221;
repeat {
  if (numero%%divisor == 0) {
    break
  }
  divisor <- divisor+1
}
print(paste("El", numero, "es divisible por", divisor))

