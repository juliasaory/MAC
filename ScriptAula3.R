# Script Aula 3

x <- 15
y = 22
z <- x + y
print(z)


# Programa 
# Dados 3 números inteiros calcular a média aritmética 

# lê os números 
a <- as.integer(readline("Digite o primeiro número: "))
b <- as.integer(readline("Digite o segundo número: "))
c <- as.integer(readline("Digite o terceiro número: "))


# calcula a media aritmética

media <- (a + b + c) / 3

# imprime o valor da média

cat("Média dos Números:", media)


#- Dadas 3 notas de um aluno (0 a 10) calcular a média aritmética e imprimir se o aluno foi: 
#  aprovado (>= 5), reprovado (< 3) ou recuperação (>=3 e < 5). 

# lê os números 
nota1 <- as.numeric(readline("Digite a primeira nota: "))
nota2 <- as.numeric(readline("Digite a segunda nota: "))
nota3 <- as.numeric(readline("Digite a terceira nota: "))

# calcula a media aritmética
media <- (nota1 + nota2 + nota3) / 3

# imprime
if (media >= 5){
  cat("Aprovado - Média: ", media)
}else{
  if (media < 3){
    cat("Reprovado - Média: ", media)
  }else{
    cat("Recuperação - Média: ", media)
  }
}


# Vetores

v1 <- c(1,8,5)
print(v1)
typeof(v1)
v2 <- c("casa", "das", "rosas")
print(v2)
typeof(v2)

v3 <- 1:15
print(v3)
v4 <- 4.8:12.6
print(v4)

v5 <- seq(1, 5, by= 0.5)        # by - incremento
print(v5)
v6 <- seq(1, 5, length.out = 6) # número de elementos
print(v6)


# Acesso a alguns elementos do vetor

print(v4)
v4[2]
v4[17]

print(v4)
v4[c(3,5,7)]   # Acesso a alguns elementos do vetor
v4[3:7]

print(v4)
temp1 <- subset(v4, v4 <= 3)  #só os valores < ou = a 3
print(temp1)
temp2 <- subset(v4, v4 >  7)  #só os valores > 7
print(temp2)

print(v2)
v2[4] <- "Av Paulista"      
print(v2)

print(v2)
v2[3] <- "Bruxas"     
print(v2)

print(v2)
v2 <- NULL  # remove elementos
print(v2)

# Algumas operações sobre vetores

print(v5)
length(v5)   # num. de elementos do vetor
min(v5)      # menor valor

print(v5)
max(v5)      # maior valor
mean(v5)     # média dos valores

print(v1)
print(v3)
v1+v3
v1-v3

print(v1)
print(v3)
v1*v3
v1/v3

v7 <- c(1, TRUE, "casa")
print(v7)
typeof(v7)

# Listas

l <- list(1,8, 5:7)  # criação de uma lista
print(l)

v1 <- c(1,2,6,7:10)
v2 <- c(4,8,2)
l1 <- list(v1,v2)  # criação de uma lista
print(l1)          # a partir de vetores

l1 <- list("qualquer coisa",c(1:3))           
print(l1)
print(typeof(l1))

# Listas - elementos com nomes

l2 <- list("cel1"= v1, "cel2"= v2)
print(l2)

l1 <- list("qualquer coisa",c(1:3)) 
names(l1) <- c("prim_elem","seg_elem")
print(l1)

# Acesso aos elementos da lista

print(l1[1])        # acesso ao primeiro elemento [1]
print(l1[[1]])      # acesso ao valor do primeiro elemento [[1]]
print(l1$prim_elem) #acesso ao valor pelo nome do elemento

l2 <- list("qualquer coisa",c(1:3), c(20,12,5,39)) 
print(subset(l2, l2 != "qualquer coisa"))
names(l2) <-c("a", "b", "c")
print(subset(l2$c, l2$c > 12))

l1$terc_elem <- list("z","b") #elemento é uma lista
print(l1)

l1$terc_elem <- "ano" # Modificar um elemento da lista
print(l1)

l1$terc_elem <- NULL  # Remover elementos da lista
print(l1)

## Algumas operações sobre listas

l <- list("elem1"=c(1,2), "elem2"="z")
length(l)        # tamanho da lista
v10 <- unlist(l) # converte lista em vetor
print(v10)


ltemp <- unname(l) # remove os nomes dos 
print(ltemp)       # elementos da lista
