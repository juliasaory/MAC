# script aula Matrizes

# Criar vetores

v1 <- c(1,6,3)  # sequência de valores         
print(v1)
v2 <- 1:5       # valores consecutivos          
print(v2)
vc <- c("azul","vermelho","amarelo")
print(vc)


#  Matrizes - Criar


m1 <- matrix(c(1,30,10,5))  # uma única coluna
print(m1)

m2<- matrix(10:13,nrow = 2) # duas linhas - o número
print(m2)                   # de colunas é calculado


print(v1)
m3 <- matrix(c(v1,4:8),ncol = 4) # quatro colunas - número
print(m3)                        # de linhas calculado



# Criar Matrizes - faltam valores


m4 <- matrix(c(1:4,8:10), nrow = 3)
print(m4)


# Acesso a 1 elemento da matriz 

print(m4)
m4[2,2]    # linha 2, coluna 2

m4[4,1]    # linha 4, coluna 1 (elemento não existe)


# Seleciona alguns elementos da matriz 

print(m4)
m4[c(1,2), c(2,3)]   # linhas 1 e 2, colunas 2 e 3

print(m4)
m4[2:3, 1:3]         # linhas 2 a 3, cols 1 a 3

print(m4)
m4[2,]     # todos os elems da linha 2

print(m4)
m4[,3]     # todos os elems da coluna 3


# Modifica 1 elemento da matriz

print(m4)
m4[2,3] <- 20
print(m4)

# Modifica 1 linha da matriz

print(m4)
m4[2,] <- c(20,6,7)
print(m4)

print(m4)
m4[2,] <- c(30,60)    # falta o 3o elemento - não modifica
print(m4)

# Modifica 1 coluna da matriz

print(m4)
m4[,3] <- c(20,30,40)
print(m4)

# Adiciona 1 linha à matriz

print(m4)
m4 <- rbind(m4,c(20,30,40))  # rbind() row bind
print(m4)

# Adiciona 1 coluna à matriz

print(m4)
m4 <- cbind(m4,c(20,30,40,50)) # cbind() column bind
print(m4)

# Remove 1 linha da matriz

print(m4)
m4 <- m4[-c(2),]  # remove a linha 2
print(m4)

## Remove 1 coluna da matriz

print(m4)
m4 <- m4[,-c(3)]  # remove a coluna 3
print(m4)

# Remove todos os elementos da matriz

print(m4)
m4 <- NULL
print(m4)

