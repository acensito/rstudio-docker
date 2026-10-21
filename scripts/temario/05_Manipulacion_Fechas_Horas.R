# Script 05_Manipulacion_Fechas_Horas.r

# Definición de fechas y horas
fecha <- as.Date("2024-10-1")
fecha_hora <- as.POSIXct("2024-10-1 14:35:00")

# Formateo de fechas
formato_fecha <- format(fecha, "%d/%m/%Y")
dia_semana <- weekdays(fecha)
mes <- months(fecha)
trimestre <- quarters(fecha)
print(paste("El",formato_fecha,"fué un",dia_semana,"de",
            mes,"en el trimestre",trimestre))

#Suma y resta
nueva_fecha <- fecha + 7 
diferencia <- fecha - Sys.Date()  # Diferencia en días
print(paste("Una semana despues del",fecha,"es",nueva_fecha))
print(paste("Queda", diferencia,"dias para el",fecha))
