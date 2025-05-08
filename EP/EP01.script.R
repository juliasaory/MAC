## Script EP1
## não mude o nome do script
## complete cada uma das funções pedidas 
## não mude o nome das funções e nem dos data frames
## não mude o nome da planilha gravada, se houver 

library(readr)

# predefinição de dados a serem utilizados - com a grafia que aparece nas planilhas

# vetor com os setores da economia - Atividade
setores <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","U")

# vetor com as regiões do Brasil 
regioes <- c("Norte", "Nordeste", "CentroOeste", "Sudeste", "Sul")


#Exercício 1.##############################################################
# leitura das planilhas e criação dos data frames

df_empresasNac <- read.table(
                      file = "NumeroEntradaSaidaEmpresasNacionalSetor.csv",
                      header = TRUE, sep = ";", dec = ",",
                      fill = TRUE
) # lê a planilha


df_empresasReg <- read.table(
                      file = "NumeroEntradaSaidaEmpresasRegionalSetor.csv",
                      header = TRUE, sep = ";", dec = ",",
                      fill = TRUE
) # lê a planilha

df_ocupadosReg <- read.table(
                      file = "PessoalOcupadoRegional.csv",
                      header = TRUE, sep = ";", dec = ",",
                      fill = TRUE
) # lê a planilha


#---------------------------------------------------------------------------------------
#Exercício 2##############################################################
# função: substitui os NAs de uma coluna numérica por zero
# entrada: vetor de valores numéricos (valores de uma coluna de um data-frame)
# saída: mesmo vetor de entrada com os NAs substituídos por zero

subs_NA_por_zero <- function(df_coluna) {
  numRow <- length(df_coluna)

  # ... complete
  
  return(df_coluna)
}

# aplicação da função para a coluna Absoluto_Entrada - como no enunciado
tail(df_empresasNac)
df_empresasNac$Absoluto_Entrada <- subs_NA_por_zero(df_empresasNac$Absoluto_Entrada)
tail(df_empresasNac)

# aplicação da função para as outras colunas numéricas do data frame df_empresasNac

df_empresasNac$Absoluto_Saida <- subs_NA_por_zero(df_empresasNac$Absoluto_Saida)
df_empresasNac$Taxas_IN <- subs_NA_por_zero(df_empresasNac$Taxas_IN)
df_empresasNac$Taxas_OUT <- subs_NA_por_zero(df_empresasNac$Taxas_OUT)

# aplicação da função para as colunas numéricas do data frame df_empresasReg

df_empresasReg$Absoluto_Entrada <- subs_NA_por_zero(df_empresasReg$Absoluto_Entrada)
df_empresasReg$Absoluto_Saida <- subs_NA_por_zero(df_empresasReg$Absoluto_Saida)
df_empresasReg$Taxas_IN <- subs_NA_por_zero(df_empresasReg$Taxas_IN)
df_empresasReg$Taxas_OUT <- subs_NA_por_zero(df_empresasReg$Taxas_OUT)

# aplicação da função para as colunas numéricas do data frame df_ocupadosReg

df_ocupadosReg$Absoluto_Entrada <- subs_NA_por_zero(df_ocupadosReg$Absoluto_Entrada)
df_ocupadosReg$Absoluto_Saida <- subs_NA_por_zero(df_ocupadosReg$Absoluto_Saida)
df_ocupadosReg$Taxas_IN <- subs_NA_por_zero(df_ocupadosReg$Taxas_IN)
df_ocupadosReg$Taxas_OUT <- subs_NA_por_zero(df_ocupadosReg$Taxas_OUT)


#---------------------------------------------------------------------------------------
#Exercício 3############################################################################
# função:  gera data frame que é o _subset_ contendo os setores cujo número de demitidos 
#         está entre os valores _min_ e _max_
# entrada: df dos ocupados, uma região, dois valores reais _min_ e _max_
# saída: df dos ocupados da região contendo apenas os setores cujo número de demitidos 
#         está entre os valores _min_ e _max_ 


demitidos_regiao_faixa <- function(df, regiao, min, max) {
  df_demitidos <- #... complete


  return(df_demitidos)
}

soma_demitidos_faixa <- function(df_faixa) {
  soma <- # ... complete
    
  return(soma )   
}

# exemplo de uso das funções 

demitidos_Norte_100a200 <- demitidos_regiao_faixa (df_ocupadosReg, "Norte", 100, 200)
print(demitidos_Norte_100a200)

soma_demitidos_Norte_100a200 <- soma_demitidos_faixa(demitidos_Norte_100a200)
cat("Soma dos demitidos na região Norte (100 a 200):  ", soma_demitidos_Norte_100a200)

#---------------------------------------------------------------------------------------
#Exercício 4 #################################################################
# função: extrato de planilha - setores com deficit de empregos
# entrada: df dos ocupados, nome da região (ex: "Norte", "Sul" ...)
# saída: df dos ocupados da região contendo apenas os setores com deficit de empregos

deficit_empregos_regiao <- function(df, regiao) {
  df_deficit <- #... complete

    
  
  return(df_deficit)
}


# exemplo de uso

deficit_Sul <- deficit_empregos_regiao(df_ocupadosReg, "Sul")
print(deficit_Sul)

setores_deficit_Sul <- deficit_Sul$Atividade
cat("Setores com déficit de empregos na região Sul: ", setores_deficit_Sul)


#---------------------------------------------------------------------------------------
#Exercício 5 ############################################################
# função: extrato de planilha - setores com superavit de empregos
# entrada: df dos ocupados, nome da região (ex: "Norte", "Sul" ...)
# saída: df dos ocupados da região contendo apenas os setores com superavit de empregos

superavit_empregos_regiao <- function(df, regiao) {
  df_superavit <- #... complete
    
    
  
  return(df_superavit)
}

# exemplo de uso
superavit_Sul <- superavit_empregos_regiao(df_ocupadosReg, "Sul")
print(superavit_Sul)

setores_superavit_Sul <- superavit_Sul$Atividade
cat("Setores com superavit de empregos na região Sul: ", setores_superavit_Sul)


#---------------------------------------------------------------------------------------
#Exercício 6 ############################################################
# função: extrato de planilha - setores com superavit de empregos em todas as regiões
# entrada: df dos ocupados
# saída: df dos ocupados contendo apenas os setores com superavit de empregos em todas as regiões

setores_superavit <- function(df) {
  regioes <- c("Norte", "Nordeste", "CentroOeste", "Sudeste", "Sul")
  setores_br <- # ... complete  
  for (reg in regioes){
    
    # ... complete   
    
  }

  return(setores_br)
}

# exemplo de uso

setores_superavit_brasil <- setores_superavit(df_ocupadosReg)
cat("Setores com superavit de empregos no Brasil: ", setores_superavit_brasil)
