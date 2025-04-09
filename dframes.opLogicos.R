
# Data-frames - aula anterior

dados_alunos <- data.frame(
  Nome = c("Alexandre", "Allan", "Andre", "Bernardo"),
  P1 = c(3.5, 5, 8 , 9),
  P2 = c(5.5, 6, 7.5, 5.5)
)
print(dados_alunos)
typeof(dados_alunos)


dados_alunos_novos <- data.frame(
  Nome = c("Bruna", "Camila"),
  P1 = c(9, 6.5),
  P2 = c(4.6, 7.3)
)

print(dados_alunos_novos)

dados_alunos <- rbind(dados_alunos, dados_alunos_novos)
print(dados_alunos)

dados_colunaSub <- data.frame(Sub=c(6.5, NA, 5.0, NA, 8.0, NA))
print(dados_colunaSub)
dados_alunos <- cbind(dados_alunos, dados_colunaSub)
print(dados_alunos)


dados_linhaSub = data.frame(Nome="Sub", P1= 10, P2= 10, Sub=5)
dados_alunos = rbind(dados_alunos, dados_linhaSub)
print(dados_alunos)

dados_alunos = dados_alunos[-7, ]
print(dados_alunos)


dados_alunos$Rec <- c(8.5, NA, 8.5, NA, NA, NA)
print(dados_alunos)

alunos_p1 <- subset(dados_alunos, dados_alunos$P1 >= 8)
print(alunos_p1)

alunos_p1<-subset(dados_alunos, !(dados_alunos$P1 >= 8)) #dados da p1 menores que 8, if not
print(alunos_p1)

alunos_p1<- subset(dados_alunos, dados_alunos$P1 >= 3 & 
                     dados_alunos$P1 <= 7)
print(alunos_p1)

alunos_p1<- subset(dados_alunos, dados_alunos$P1 < 5 | 
                     dados_alunos$P1 > 8)
print(alunos_p1)



# Operadores relacionais: exemplos


5 > 4
5 <= NA      # valores indefinidos (NA)?
print(dados_alunos[5,])
dados_alunos[5,"Sub"] <= 6.8


# aplicada sobre vetores - testa cada elemento
# seleciona apenas os elementos com resultado TRUE


v <- c(12, 34, 2, 55, 32)
v > 30
subset(v, v > 30)


print(dados_alunos)

# Operadores relacionais e a função subset() sobre 1 coluna

colunaP1 <- dados_alunos$P1
print(colunaP1)
colunaP1 > 5
subset(colunaP1, colunaP1 > 5)

# sobre os data-frames
subset(dados_alunos, dados_alunos$P1 > 5)

subset(dados_alunos, dados_alunos$Sub > 5)


# Operadores Lógicos

# Exemplos

v <- c(12, 34, 2, 55, 32)
subset(v, !(v > 30))    # valor não superior a 30
subset(v, (v > 30) &    # intervalo entre 30 e (&)
         (v <= 55))    # 55 (inclusive)
subset(v, (v < 30) |    # intervalos menores 30 ou (|)
         (v > 34))     # maiores que 34


# Novas Funções sobre data-frames

# identificar elementos indefinidos (is.na())

print(dados_alunos[3,"Rec"])
is.na(dados_alunos[3,"Rec"])  #é um valor indefinido?
print(dados_alunos[4,"Rec"])
is.na(dados_alunos[4,"Rec"])  #é um valor indefinido?

# Função is.na() aplicada a vetores

colRec <- dados_alunos$Rec
print(colRec)
is.na(colRec)

# quais valores não estão indefinidos (!(is.na()))


print(colRec)
is.na(colRec)     # quais são NA?
!(is.na(colRec))  # quais não são NA?

# função is.na() aplicada a data-frames

subset(dados_alunos, is.na(dados_alunos$Rec))

subset(dados_alunos, !(is.na(dados_alunos$Rec)))

subset(dados_alunos, (is.na(dados_alunos$Rec)) &
         !(is.na(dados_alunos$Sub)))

# Outras operações úteis para data-frames

# encontrar linhas do data-frames com determinados valores
cambru <- subset(dados_alunos, 
                 dados_alunos$Nome %in% c("Camila", "Bruna"))
print(cambru)
cambru1 <- dados_alunos[dados_alunos$Nome %in% 
                          c("Camila", "Bruna"),] 
print(cambru1)

# qual o índice da linha para um determinado valor?

print(dados_alunos)
which(dados_alunos$Nome == "Camila")


print(dados_alunos)
which(dados_alunos$P2 > 7)


print(dados_alunos)
which(dados_alunos$P2 > 7 | dados_alunos$P1 < 5)


# Dados de forma gráfica


plot(dados_alunos$P2)

barplot(dados_alunos$P2)

hist(dados_alunos$P2)



