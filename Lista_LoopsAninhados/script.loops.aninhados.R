
## Script - aula prática - loops aninhados

# Programa - Lista11: Relatório de transações sucessivas em caixa

# cria variáveis para imprimir o status da transação
aceita <- "TRANSAÇÃO ACEITA"
especial <- "CHEQUE ESPECIAL"
insuficiente <- "SALDO INSUFICIENTE"

# cria variáveis para imprimir status do cliente
positivo <- "Cliente Positivo"
negativo <- "Cliente Negativado"


## FUNÇÕES  ##

# função - verifica o status da transação
#          entrada: o saldo atual do cliente
#          saída: uma das situações (aceita, especial ou insuficiente)
verifica_status <- function(saldo_atual){
  # verifica a situação após o saque 
  if (saldo_atual >= 0.0){
    return(aceita)
  } else{
    if (saldo_atual >= -100.0) {
      return(especial)
    }else{
      return(insuficiente)
    }
  }
}


# função - calcula o status de 1 cliente mediante suas transações
#          entrada: toda a informação do cliente (1 linha da planilha)
#          saída: situação final do cliente (positivo ou negativo)
status_final_cliente <- function(cliente){
  # dados das transações do cliente
  conta <- as.integer(cliente$Conta)
  nome  <- as.character(cliente$Nome)
  saldo_atual <- as.double(cliente$Saldo)
  transacoes <- unlist(cliente[4:10])
  transacoes_validas <- subset(transacoes, !is.na(transacoes))
  
  # imprime nome-Saldo:xxx e pula linha (\n)
  cat("\n Nome: ", nome, "-- Saldo:", saldo_atual, "\n")
  
  cont_insuf = 0   # variável que conta qts vezes teve saldo insuficiente
  
  # faz cada uma das transações do cliente e verifica se é aceita, especial ou insuficiente
  
  for (saqueOudeposito in transacoes_validas) {
    saldo_atual = saldo_atual + saqueOudeposito
    if(saqueOudeposito > 0 ){
      status = aceita
    } else{
      status = verifica_status(saldo_atual)
    }
    
    
 
  
    
    # precisa calcular status da transação usando a função 
    # verifica_status(saldo_atual) - pense no caso de depósito
    
    #... COMPLETAR ....
    
    
      #corrige saldo para saque não efetuado e conta +1 no cont_insuf
      
     # ... COMPLETAR ....      
  if(status == insuficiente){
    saldo_atual = saldo_atual - saqueOudeposito
    cont_insuf = cont_insuf + 1
  }
    
    
    # imprime cada transação como solicitado
    cat("\n Transação: ", saqueOudeposito, "-- ", status, "-- Saldo: ", saldo_atual)
  
  
  # decide status_final do cliente (positivo ou negativo)
  
  if(cont_insuf >= 3 && saldo_atual < 0){
    status_final = negativo
  } else {
    status_final = positivo
  }
  
  return(status_final)
}




## Programa

# lê dados do arquivo csv
dados <- read.csv(file= "dadosClientes.csv",
                  header = TRUE, sep = ",",
                  as.is = TRUE) # leitura de dados

# imprime a planilha que está sendo usada
cat("\n \n Dados de todos os Clientes \n \n")
print(dados)

# cada linha da planilha corresponde às transações de 1 cliente
# a funcao status_cliente será executada para cada cliente

v_clientes <- c(1:nrow(dados))

for (i in v_clientes){
  cliente <- dados[i, ]
  cat("\n \n Dados de um cliente \n")
  print(cliente)
  status <- status_final_cliente(cliente)
  cat("\n Situação: ", status)

}

}


