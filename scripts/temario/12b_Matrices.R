# Script 12b_Matrices.R

#Definimos la matriz de coeficientes
m <- matrix(c(2,3,3,4),ncol=2,nrow=2)
#Definimos el vector de terminos independientes
v <- c(-1,0)
#Resolvemos el sistema
solve(m,v)


#Representación gráfica del sistema
#Primero necesitamos instalar una librería
install.packages("matlib") 
library(matlib)

plotEqn(m,v)
