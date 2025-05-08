# script - aula prática - IfElse-While-Funções: noções básicas

# cria variáveis para imprimir o status da transação
aceita = "TRANSAÇÃO ACEITA"
especial = "CHEQUE ESPECIAL"
insuficiente = "SALDO INSUFICIENTE"


#### Copiado da lista anterior #####
#### utilizaremos a mesma função que já estava definida - use a que V. fez
#### observe a utilidade de termos funções nos nossos programas - podemos reutilizar

# 2.1 função de status da transação - lista anterior

# função - verifica o status da transação
#          entrada: o saldo atual do cliente
#          saída: uma das situações (aceita, especial ou insuficiente)
verifica_status <- function(saldo_atual){
  # verifica a situação após o saque 
  if (saldo_atual >= 0.0){
    status <- aceita
  } else{
    if (saldo_atual >= -100.0) {
      status <- especial
    }else{
      status <- insuficiente
    }
  }
  return(status)
}
############################################################

# Exercícios desta lista

#-----------
# Exerc 2 - clientes - saques a partir de uma planilha 

# lê dados dos saques dos cliente no arquivo csv
df_clientes_saques <- read.csv(file = "clientes.saques.csv", 
                               header = TRUE, sep = ",",
                               as.is = TRUE)  

# imprime a planilha sendo usada
print(df_clientes_saques)

num_clientes <- nrow(df_clientes_saques)
i <- 0            # i controla os clientes na planilha

# precisamos fazer o mesmo processamento 
# para cada cliente na planilha (cada linha)
while(i < #... completar) {
  i <- i + 1  # o cliente que faremos o processamento
  
  # dados do cliente i na planilha
  conta <- #... completar
  nome  <- #... completar
  saldo <- #... completar
  saque <- #... completar
  
  # efetua transação e verifica status
    #... completar
  
  # corrige o saldo_atual quando é insuficiente
    #... completar
  
  cat(conta, "--", nome, "--", status_transacao,"--", "Saldo: ", saldo_atual, "\n")
}


# -----
# Exerc. 3 - acrescentar uma coluna à planilha com o status

# lê dados dos saques dos cliente no arquivo csv
df_clientes_saques <- read.csv(file = "clientes.saques.csv", 
                               header = TRUE, sep = ",",
                               as.is = TRUE)  

# imprime a planilha sendo usada
print(df_clientes_saques)

num_clientes <- nrow(df_clientes_saques)
i <- 0                 # i controla os clientes na planilha
vetor_status <- NULL   # esse vetor irá guardar o status de cada cliente

# precisamos fazer o mesmo processamento do Exerc 2
# para cada cliente na planilha (cada linha)
while(#... completar) {
  i <- i + 1  # o cliente que faremos o processamento
  
# dados do cliente i na planilha
    conta <- #... completar
    nome  <- #... completar
    saldo <- #... completar
    saque <- #... completar  
      
# efetua transação e verifica status
#... completar
      
# corrige o saldo_atual quando é insuficiente
#... completar
      
  
# acrescenta ao vetor o status desse cliente
  vetor_status <- #... completar 
}

# cria um novo data-frame: dados anteriores + vetor_status
df_clientes_saques_status <- #... completar 
print(df_clientes_saques_status)


# -----
# Exerc. 4
# funções sobre vetores

# a. criar os vetores
v1 <- as.integer(seq(1,15, length.out = 10))
v2 <- c(3:5, 23, NA, 14, NA)
tam_v1 <- length(v1)
tam_v2 <- length(v2)
print(v1)
cat("tamanho do vetor v1:", tam_v1, "\n")
print(v2)
cat("tamanho do vetor v2:", tam_v2, "\n")

# b. soma de todos os elementos dos vetores - eliminar os não definidos
soma_vetores <- function(vet){
  #... completar 

  return(soma)
}

soma_v2 <- soma_vetores(v2)
print(v2)
print(soma_v2)



# c. soma de dois vetores do mesmo tamanho
#                           
soma_2vetores_tam_igual <- function(vet1,vet2){
  
  #... completar 
  
  return(vresult)
}

soma_vets <- soma_2vetores_tam_igual(v1,v1)
print(v1)
print(soma_vets)

