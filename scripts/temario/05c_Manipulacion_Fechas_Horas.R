# Script 05c_Manipulacion_Fechas_Horas.R
library(lubridate)

# Mensaje que informa del día y hora actual, redondeando las horas.
ahora <- as.POSIXct(Sys.time())
ahora_r <- round_date(ahora,"hour")
message(format(ahora_r,"%A, %d de %B de %Y a las %H:%M horas"))

# Se puede escribir en una sola línea, de la forma:
message(format(round_date(as.POSIXct(Sys.time()),"hour"),
               "%A, %d de %B de %Y a las %H:%M horas"))
