# Script 06_Mensajes_Consola.R

a <- "Hola"
b <- "mundo"
c <- c(1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 
       31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 
       73, 79, 83, 89, 97, 101)

# Muestra el contenido de los objetos
print(a) 
print(c)
cat(a, b, "\n") 

# Mensajes resaltados
message(a,". Este es un mensaje informativo.")
warning("Este es un mensaje de advertencia a todo el ",b,"!")
stop("Este es un mensaje de error crítico.")

