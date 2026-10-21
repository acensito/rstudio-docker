# Script 12_Matrices.R

# Creación de una matriz 2x4 con matrix
matriz1 <- matrix(1:8, nrow = 2, byrow = TRUE, 
                  dimnames = list(c("F1", "F2"), c("C1", "C2", "C3", "C4")))
print(matriz1)

# Creación de una matriz 3x4 con rbind
v1 <- c(1,2,3,4)
v2 <- c(seq(10,40,10))
v3 <- c(rep(0))
matriz2 <- rbind(v1,v2,v3)
colnames(matriz2) <- paste0("c",1:4)
print(matriz2)

# Operaciones sobre matrices
print(matriz1)
print(matriz1+1)
print(matriz1*matriz1)

#Multiplicación matricial
matriz3 <- rbind(v1=2:5,v2=rep(1,4))
print(matriz3)
matriz4 <- rbind(a1=c(1,0),a2=c(0,1),a3=c(1,0),a4=c(0,1))
print(matriz4)
matriz_producto <- matriz3%*%matriz4
print(matriz_producto)

# Extraer la diagonal de una matriz
M <- matrix(1:9, nrow = 3, byrow = TRUE)
print(M)
print(diag(M))

# Matriz identidad
diag(5)

# Determinante de una Matriz
M <- rbind(c(3,-1),c(2,-2))
print(M)
det(M)

# Varianza de una Matriz
var(M)

# Inversa de una matriz 
A <- matrix(c(2, 1, 3, 4), nrow = 2, byrow = TRUE)
print(A)
A_inv <- solve(A)
print(A_inv)

#Resolución de ecuaciones lineales
A <- matrix(c(2, 1, 3, -1), nrow = 2, byrow = TRUE) 
b <- c(8, -1) 
x <- solve(A, b)
print(x)

