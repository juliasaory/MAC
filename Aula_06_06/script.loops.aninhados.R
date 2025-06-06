
# Script - loops aninhados

# problema: soma dos números ímpares do vetor (while)

v1 <- as.integer(seq(1, 7, by= 0.7))  # by - incremento
print(v1)
soma_impares <- 0 
i <- 1
while (i <= length(v1)) {
  if ((v1[i] %% 2) != 0){  # %%-resto da divisão inteiros
    soma_impares <- soma_impares + v1[i]
  }
  i <- i + 1
}
cat(" Soma dos ímpares:", soma_impares)

# problema: soma dos números ímpares do vetor (for)

v1 <- as.integer(seq(1, 7, by= 0.7))  # by - incremento
print(v1)
soma_impares <- 0 
for (i in 1:length(v1)) {
  if ((v1[i] %% 2) != 0){
    soma_impares <- soma_impares + v1[i]
  }
}
cat(" Soma dos ímpares:", soma_impares)



# Como acessar cada elemento da matriz?

#- suponha a matriz M(m X n)

# problema: somar os números ímpares da 1a. linha da matriz


m1<- matrix(10:15,nrow = 3) # três linhas - o número
print(m1)                   # de colunas é calculado


## problema: somar os números ímpares da 1a. linha da matriz


soma_impares <- 0
i <- 1                  # fixa o índice da linha
for (j in 1:ncol(m1)){  # varia o índice da coluna
  if ((m1[i,j] %% 2) != 0){
    soma_impares <- soma_impares + m1[i,j]
  }
}
cat(" Soma dos ímpares:", soma_impares)


# Problema: somar os números ímpares de toda a matriz
  

soma_impares <- 0  # valor inicial da soma
for (i in 1:nrow(m1)){      #índice da linha
  for (j in 1:ncol((m1))){  #índice da coluna
    if ((m1[i,j] %% 2) != 0){
      soma_impares <- soma_impares + m1[i,j]
    }
  }
}
cat(" Soma dos ímpares:", soma_impares)



# Problema: data-frames - alunos

#- dada uma planilha de alunos com suas respectivas notas de trabalhos (T1 a T10), imprimir apenas os alunos que ficaram com média >= 5.0, mas fizeram menos de 7 trabalhos
#- cálculo da média: aritmética

## Problema: data-frames - alunos


# lê a planilha
dados_alunos <- read.csv(file= "alunos.trabs.csv",
                         header = TRUE, sep = ",", 
                         as.is = TRUE)
print(dados_alunos)

v_alunos <- c(1:nrow(dados_alunos))
for (i in v_alunos){
  aluno <- dados_alunos[i, ]
  notas_aluno <- unlist(aluno[2:ncol(aluno)]) #lista -> vetor
  notas_aluno_validas <-subset(notas_aluno, !is.na(notas_aluno))
  soma_notas <- 0
  for (nota in notas_aluno_validas){
    soma_notas <- soma_notas + nota
  }
  media <- soma_notas/10
  num_notas <- length(notas_aluno_validas)
  if (media >= 5 && num_notas < 7){
    print(aluno)
    cat("\t Média dos trabalhos: ", media,
        "\n \t Trabalhos realizados: ", num_notas)
  }
}




