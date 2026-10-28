# Script 05b_Manipulacion_Fechas_Horas.r

# Instalamos las librerías necesarias
install.packages("tidyverse")
install.packages("lubridate")

# Cargamos la librería
library(lubridate)
fecha_hora <- as.POSIXct("2024-10-1 14:35:00")

# Redondea el mes hacia abajo
redondeo_inicio <- floor_date(fecha_hora, "month")

# Redondea el mes hacia abajo
redondeo_final <- ceiling_date(fecha_hora, "month")

# Redondea el la hora 
redondeo_cercano <- round_date(fecha_hora, "hour")
