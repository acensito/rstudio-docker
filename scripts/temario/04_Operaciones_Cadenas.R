# Script 04_Operaciones_Cadenas.r

nombre <- "Miguel"
apellido <- "López"

# Concatenación
nombre_completo1 <- paste(nombre, apellido) 
nombre_completo2 <- paste(nombre, apellido, sep = "$")         
nombre_completo3 <- paste0(nombre, apellido)

# Subcadenas
texto <- "Hola Mundo!"
sub_texto <- substr(texto, 6, 10) 

# Cambio entre mayúsculas y minúsculas
mayusculas <- toupper(texto) 
minusculas <- tolower(texto) 

# Búsqueda y reemplazo
vector <- c("maiz","arena","pez","mono")
posiciones_n <- grep("n", vector)        
aparece_n <- grepl("n", vector) 
reemplaza_primera_o <- sub("o", "A", texto)   
reemplaza_todas_o <- gsub("o", "A", texto) 

# División de cadenas
palabras <- strsplit(texto, " ") 

# Longitud de Cadenas
length <- nchar(texto) 

# Comparación de cadenas
iguales <- identical(texto, "Hola Mundo.") 

