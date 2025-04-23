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
verifica_status <- function(saldo_atual){
  # verifica a situação após o saque 
  if (saldo_atual >= 0.0){
#... completar
  }
  return(status)
}


# 2.2
# Programa: saldo em caixa eletrônico

# lê os dados de 1 cliente - digitado no teclado
conta <- as.integer(readline("Digite o número da conta corrente:"))
nome  <- #... completar
saldo <- #... completar
saque <- #... completar



# efetua transação e verifica status
saldo_atual <- #... completar
status_transacao <- verifica_status(saldo_atual)

# corrige o saldo_atual quando é insuficiente
#... completar

cat(conta, "--", nome, "--", status_transacao,"--", "Saldo: ", saldo_atual, "\n")

