
# funções: blocos de programas com parâmetros
imprime_valor <- function(x) {
  print(x)
}

# dados, por exemplo:
a <- 33     # variárel a guarda o valor
b <- a + 22 # variável b usa valor de a
tabela <- read.csv("dados_exemplo.csv") # dados lidos

# sequência de comandos: transforma dados
if (a > 5) {
  imprime_valor("a é maior que 5")
}
imprime_valor(tabela)



# dados, por exemplo:
a <- 33     # variárel a guarda o valor
b <- a + 22 # variável b usa valor de a
tabela <- read.csv("dados_exemplo.csv") # dados lidos

# sequência de comandos: transforma dados
if (a > 5) {
  imprime_valor("a é maior que 5")
}
imprime_valor(tabela)

# Entrada e Saída: teclado/tela

n <- readline(prompt = " Digite um número inteiro (e tecle enter): ")
n <- as.integer(n)
print(n)
print(typeof(n))

m <- as.character(readline("Digite um número inteiro (e tecle enter): "))
print(m)
print(typeof(m))

cat("Imprimindo valor de m:", m,"e seu tipo:", typeof(m), "\n")

tabela <- read.csv(file= "dados_exemplo.csv",
                   header = TRUE, sep = ",") # leitura de dados
print(tabela)

# Atribuição
x <- 15
y = 22
z = x + y
print(z)


# Problema: calcular média aritmética

# Programa 
# Dados 3 números inteiros calcular a média aritmética entre eles

# lê os números 
a <- as.integer(readline("Digite o primeiro número: "))
b <- as.integer(readline("Digite o segundo número: "))
c <- as.integer(readline("Digite o terceiro número: "))

# calcula a media aritmética

# imprime o valor da média


# Programa inteiro

# Programa 
# Dados 3 números inteiros calcular a média aritmética entre eles

# lê os números 
a <- as.integer(readline("Digite o primeiro número: "))
b <- as.integer(readline("Digite o segundo número: "))
c <- as.integer(readline("Digite o terceiro número: "))

# calcula a media aritmética

media <- (a + b + c) / 3

# imprime o valor da média

cat("Média dos Números:", media)



  x <- 5
if(x > 0){
  print("número positivo")
}
 
  x <- -5
if(x >= 0){
  print("Número não negativo")
} else {
  print("Número negativo")
}



# Problema: média e status do aluno

# Dadas 3 notas de um aluno (0 a 10) calcular a média aritmética e imprimir se o aluno foi: aprovado (>= 5), reprovado (< 3) ou recuperação (>=3 e < 5). 


## Programa


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


# Funções

# Funções em R: definidas pelo usuário



#  O que acontece se executarmos esse código?

#definição da função
CalculaMedia <- function(nota1,nota2,nota3){
  # calcula a media aritmética
  med <- (nota1 + nota2 + nota3) / 3
  # retorna o valor da média
  return(med)
}
# Programa
# lê os números 
nota1 <- as.numeric(readline("Digite a primeira nota: "))
nota2 <- as.numeric(readline("Digite a segunda nota: "))
nota3 <- as.numeric(readline("Digite a terceira nota: "))
# calcula a media aritmética
media <- CalculaMedia(nota1, nota2, nota3)
cat("Média: ", media)

  
# Define uma função (_CalculaMediaStatus_) para que dadas 3 notas de um aluno, calcula a média aritmética e retorna o status se o aluno foi: "aprovado"" (>= 5), "reprovado"" (< 3) ou "recuperação"" (>=3 e < 5).
# Lê uma planilha ("alunos.sub.csv") com dados dos alunos e suas provas: P1, P2 e Sub
# Usando a função definida, calcular o status dos 2 primeiros alunos da planilha

## função

#definição da função
CalculaMediaStatus <- function(nota1,nota2,nota3){
# calcula a media aritmética
media <- (nota1 + nota2 + nota3) / 3
# retorna o valor do status
if (media >= 5){
  status <- "aprovado"
}else{
  if (media < 3){
    status <- "reprovado"
  }else{
    status <- "recuperação"
  }
return(status)
}
}


## programa

alunos <- read.csv(file= "alunos.sub.csv",
                   header = TRUE, sep = ",") # leitura de dados
print(alunos)
# calcula a media aritmética
status1 <- CalculaMediaStatus(alunos[1,"P1"],
                              alunos[1,"P2"],
                              alunos[1,"Sub"])
status2 <- CalculaMediaStatus(alunos[2,"P1"],
                              alunos[2,"P2"],
                              alunos[2,"Sub"])
cat("\n Status dos Alunos \n", status1 ,"\n",
                               status2)
