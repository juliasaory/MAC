# script - aula prática - IfElse-Funções: noções básicas

#---------
# Exerc.2

# cria variáveis para imprimir o status da transação
aceita = "TRANSAÇÃO ACEITA"
especial = "CHEQUE ESPECIAL"
insuficiente = "SALDO INSUFICIENTE"


# 2.1 função de status da transação

# função - verifica o status da transação
# entrada: o saldo atual do cliente
# saída: uma das situações (aceita, especial ou insuficiente)
verifica_status <- function(saldo_atual , saque){
  # verifica a situação após o saque 
  if (saldo_atual >= saque) {
    return("TRANSAÇÃO ACEITA")
  }
  
  # Situação 2: CHEQUE ESPECIAL
  if (saldo_atual + limite_cheque_especial >= saque) {
    return("CHEQUE ESPECIAL")
  }
  
  # Situação 3: SALDO INSUFICIENTE
  return("SALDO INSUFICIENTE")
}
  return(status)




# 2.2
# Programa: saldo em caixa eletrônico

Conta <- as.integer(readline("Digite o número da conta corrente: "))
Nome  <- readline("Digite o nome do cliente: ")
Saldo <- as.double(readline("Digite o saldo do cliente: "))
Saque <- as.double(readline("Digite o valor do saque: "))

# Efetua transação e verifica status 
status_transacao <- verifica_status(Saldo , Saque)

# Corrige o saldo_atual quando a transação é aceita ou usa cheque especial
if (status_transacao == "TRANSAÇÃO ACEITA" || status_transacao == "CHEQUE ESPECIAL") {
  saldo_atual <- saldo - saque
} else {
  saldo_atual <- saldo  # mantém o saldo original
}

# Exibe o resultado
cat(conta, "--", nome, "--", status_transacao, "--", "Saldo:", round(saldo_atual, 2), "\n")
