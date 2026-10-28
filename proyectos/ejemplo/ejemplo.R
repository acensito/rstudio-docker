# ==============================================================================
# nombre_del_script.R
# Descripción breve de lo que hace el script.
# ==============================================================================


# ------------------------------------------------------------------------------
# Configuración: directorio de trabajo
# ------------------------------------------------------------------------------

# rstudioapi permite conocer la ubicación del script abierto en RStudio.
# Se instala únicamente si no está disponible.
if (!requireNamespace("rstudioapi", quietly = TRUE)) install.packages("rstudioapi")

# Establece como directorio de trabajo la carpeta donde está guardado este script,
# de modo que las rutas relativas sean válidas en Windows, Linux y Docker.
# Si el script no está guardado o no se ejecuta desde RStudio, no se modifica.
if (rstudioapi::isAvailable())
  try(setwd(dirname(rstudioapi::getActiveDocumentContext()$path)), silent = TRUE)


# ------------------------------------------------------------------------------
# Desarrollo del script
# ------------------------------------------------------------------------------

# A partir de aquí, las rutas son relativas a la carpeta de este script.
# Ejemplo: datos <- read.csv("datos/mi_fichero.csv")
datos <- read.csv("datos_ejemplo/poblaciones.csv")

# Mostramos los primeros datos del ejemplo
head(datos)
